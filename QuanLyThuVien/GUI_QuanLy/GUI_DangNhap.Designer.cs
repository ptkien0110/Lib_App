﻿namespace GUI_QuanLy
{
    partial class GUI_DangNhap
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(GUI_DangNhap));
            this.lbTittle = new System.Windows.Forms.Label();
            this.lbUserName = new System.Windows.Forms.Label();
            this.btnDangKy = new System.Windows.Forms.Button();
            this.btnDangNhap = new System.Windows.Forms.Button();
            this.label5 = new System.Windows.Forms.Label();
            this.lbPassword = new System.Windows.Forms.Label();
            this.btnClosed = new System.Windows.Forms.Button();
            this.txtUSER = new System.Windows.Forms.TextBox();
            this.txtPASS = new System.Windows.Forms.TextBox();
            this.SuspendLayout();
            // 
            // lbTittle
            // 
            this.lbTittle.AutoSize = true;
            this.lbTittle.Cursor = System.Windows.Forms.Cursors.Arrow;
            this.lbTittle.Font = new System.Drawing.Font("Times New Roman", 22.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbTittle.ForeColor = System.Drawing.Color.Lime;
            this.lbTittle.Location = new System.Drawing.Point(238, 25);
            this.lbTittle.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lbTittle.Name = "lbTittle";
            this.lbTittle.Size = new System.Drawing.Size(589, 43);
            this.lbTittle.TabIndex = 0;
            this.lbTittle.Text = "PHẦM MỀM QUẢN LÝ THƯ VIỆN";
            this.lbTittle.Click += new System.EventHandler(this.label1_Click);
            this.lbTittle.MouseDown += new System.Windows.Forms.MouseEventHandler(this.Form1_MouseDown);
            this.lbTittle.MouseMove += new System.Windows.Forms.MouseEventHandler(this.Form1_MouseMove);
            this.lbTittle.MouseUp += new System.Windows.Forms.MouseEventHandler(this.Form1_MouseUp);
            // 
            // lbUserName
            // 
            this.lbUserName.Cursor = System.Windows.Forms.Cursors.Arrow;
            this.lbUserName.Font = new System.Drawing.Font("Times New Roman", 13.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbUserName.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.lbUserName.Image = ((System.Drawing.Image)(resources.GetObject("lbUserName.Image")));
            this.lbUserName.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.lbUserName.Location = new System.Drawing.Point(123, 180);
            this.lbUserName.Margin = new System.Windows.Forms.Padding(0);
            this.lbUserName.Name = "lbUserName";
            this.lbUserName.Padding = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.lbUserName.Size = new System.Drawing.Size(266, 66);
            this.lbUserName.TabIndex = 1;
            this.lbUserName.Text = "Tên Đăng Nhập :";
            this.lbUserName.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.lbUserName.UseCompatibleTextRendering = true;
            this.lbUserName.Click += new System.EventHandler(this.label2_Click);
            // 
            // btnDangKy
            // 
            this.btnDangKy.BackColor = System.Drawing.Color.Turquoise;
            this.btnDangKy.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btnDangKy.FlatAppearance.BorderColor = System.Drawing.Color.Blue;
            this.btnDangKy.FlatAppearance.BorderSize = 0;
            this.btnDangKy.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnDangKy.Font = new System.Drawing.Font("Times New Roman", 13.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnDangKy.ForeColor = System.Drawing.Color.White;
            this.btnDangKy.Location = new System.Drawing.Point(560, 385);
            this.btnDangKy.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.btnDangKy.Name = "btnDangKy";
            this.btnDangKy.Size = new System.Drawing.Size(188, 43);
            this.btnDangKy.TabIndex = 5;
            this.btnDangKy.Text = "Đăng ký";
            this.btnDangKy.UseVisualStyleBackColor = false;
            this.btnDangKy.Click += new System.EventHandler(this.btnDangKy_Click);
            // 
            // btnDangNhap
            // 
            this.btnDangNhap.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(232)))), ((int)(((byte)(86)))), ((int)(((byte)(94)))));
            this.btnDangNhap.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btnDangNhap.FlatAppearance.BorderColor = System.Drawing.Color.Blue;
            this.btnDangNhap.FlatAppearance.BorderSize = 0;
            this.btnDangNhap.FlatAppearance.MouseDownBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(192)))), ((int)(((byte)(255)))));
            this.btnDangNhap.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnDangNhap.Font = new System.Drawing.Font("Times New Roman", 13.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnDangNhap.ForeColor = System.Drawing.Color.White;
            this.btnDangNhap.Location = new System.Drawing.Point(778, 220);
            this.btnDangNhap.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.btnDangNhap.Name = "btnDangNhap";
            this.btnDangNhap.Size = new System.Drawing.Size(177, 47);
            this.btnDangNhap.TabIndex = 7;
            this.btnDangNhap.Text = "Đăng Nhập";
            this.btnDangNhap.UseVisualStyleBackColor = false;
            this.btnDangNhap.Click += new System.EventHandler(this.btnDangNhap_Click);
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Times New Roman", 13.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.label5.Location = new System.Drawing.Point(252, 395);
            this.label5.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(248, 26);
            this.label5.TabIndex = 9;
            this.label5.Text = "Hoặc Tạo Mới Tài Khoản";
            // 
            // lbPassword
            // 
            this.lbPassword.Cursor = System.Windows.Forms.Cursors.Arrow;
            this.lbPassword.Font = new System.Drawing.Font("Times New Roman", 13.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbPassword.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.lbPassword.Image = ((System.Drawing.Image)(resources.GetObject("lbPassword.Image")));
            this.lbPassword.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.lbPassword.Location = new System.Drawing.Point(123, 247);
            this.lbPassword.Margin = new System.Windows.Forms.Padding(0);
            this.lbPassword.Name = "lbPassword";
            this.lbPassword.Padding = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.lbPassword.Size = new System.Drawing.Size(266, 65);
            this.lbPassword.TabIndex = 11;
            this.lbPassword.Text = "Mật Khẩu :";
            this.lbPassword.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.lbPassword.UseCompatibleTextRendering = true;
            // 
            // btnClosed
            // 
            this.btnClosed.BackColor = System.Drawing.SystemColors.Control;
            this.btnClosed.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
            this.btnClosed.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btnClosed.FlatAppearance.BorderColor = System.Drawing.Color.White;
            this.btnClosed.FlatAppearance.BorderSize = 0;
            this.btnClosed.FlatAppearance.MouseDownBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(240)))), ((int)(((byte)(240)))), ((int)(((byte)(240)))));
            this.btnClosed.FlatAppearance.MouseOverBackColor = System.Drawing.Color.White;
            this.btnClosed.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnClosed.Image = ((System.Drawing.Image)(resources.GetObject("btnClosed.Image")));
            this.btnClosed.Location = new System.Drawing.Point(989, -1);
            this.btnClosed.Margin = new System.Windows.Forms.Padding(4, 4, 13, 4);
            this.btnClosed.Name = "btnClosed";
            this.btnClosed.Size = new System.Drawing.Size(49, 43);
            this.btnClosed.TabIndex = 12;
            this.btnClosed.UseVisualStyleBackColor = false;
            this.btnClosed.Click += new System.EventHandler(this.button3_Click);
            // 
            // txtUSER
            // 
            this.txtUSER.Font = new System.Drawing.Font("Times New Roman", 13.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtUSER.Location = new System.Drawing.Point(442, 197);
            this.txtUSER.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.txtUSER.Name = "txtUSER";
            this.txtUSER.Size = new System.Drawing.Size(241, 33);
            this.txtUSER.TabIndex = 21;
            // 
            // txtPASS
            // 
            this.txtPASS.Font = new System.Drawing.Font("Times New Roman", 13.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtPASS.Location = new System.Drawing.Point(443, 261);
            this.txtPASS.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.txtPASS.Name = "txtPASS";
            this.txtPASS.Size = new System.Drawing.Size(241, 33);
            this.txtPASS.TabIndex = 22;
            this.txtPASS.TextChanged += new System.EventHandler(this.txtPASS_TextChanged);
            // 
            // GUI_DangNhap
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.AutoValidate = System.Windows.Forms.AutoValidate.EnablePreventFocusChange;
            this.ClientSize = new System.Drawing.Size(1039, 529);
            this.ControlBox = false;
            this.Controls.Add(this.txtPASS);
            this.Controls.Add(this.txtUSER);
            this.Controls.Add(this.btnClosed);
            this.Controls.Add(this.lbPassword);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.btnDangNhap);
            this.Controls.Add(this.btnDangKy);
            this.Controls.Add(this.lbUserName);
            this.Controls.Add(this.lbTittle);
            this.Cursor = System.Windows.Forms.Cursors.Default;
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.Name = "GUI_DangNhap";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.MouseDown += new System.Windows.Forms.MouseEventHandler(this.Form1_MouseDown);
            this.MouseMove += new System.Windows.Forms.MouseEventHandler(this.Form1_MouseMove);
            this.MouseUp += new System.Windows.Forms.MouseEventHandler(this.Form1_MouseUp);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lbTittle;
        private System.Windows.Forms.Label lbUserName;
        private System.Windows.Forms.Button btnDangKy;
        private System.Windows.Forms.Button btnDangNhap;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label lbPassword;
        private System.Windows.Forms.Button btnClosed;
        private System.Windows.Forms.TextBox txtUSER;
        private System.Windows.Forms.TextBox txtPASS;
    }
}
