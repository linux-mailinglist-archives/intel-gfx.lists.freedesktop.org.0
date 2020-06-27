Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0CCE20BF29
	for <lists+intel-gfx@lfdr.de>; Sat, 27 Jun 2020 09:03:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0714C6E536;
	Sat, 27 Jun 2020 07:03:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com
 [IPv6:2607:f8b0:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E3806E536
 for <intel-gfx@lists.freedesktop.org>; Sat, 27 Jun 2020 07:03:49 +0000 (UTC)
Received: by mail-pf1-x442.google.com with SMTP id t11so774822pfq.11
 for <intel-gfx@lists.freedesktop.org>; Sat, 27 Jun 2020 00:03:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JIosRsYUTOshrLf9E2nl2GJ34SluYbFrDfjI2qfYIOA=;
 b=htgSWoZYFY6WcBXOQK9T5GXxNKi9tWAhW/nWYQX+1VSb2mWxW60jVVTDudnPYYxYg9
 Db6tG7Ov5zFbEDNBHh0QL03Icg3P8mr9lEp3yBXgjy9GRdC0fzW55NbLo/Orks5+Th4M
 IwjLLTam86gpjv8tJjNMO8NPqPOfgkTp1JTSc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JIosRsYUTOshrLf9E2nl2GJ34SluYbFrDfjI2qfYIOA=;
 b=U+j/4I9QHzRH448Lf/nxEzwe7DwLt8+QkycOHFiw5aw0FFg0agM1gXUkQjXV6+n7CT
 2wDnH7AzB6CBN6VWYLGJUbfLdlHHkdXpeet1AUvqLaWBGmvQdedY69p+Z/FigozA/Sti
 RfvCjcq+NcVqgagCO1Srl9OUXBQoVnYBa+hGaRUYekpdVYjWQN9F/7Zl+pck20+XDCyU
 GnLYGfgxph2zfpU2v3aFAsLOTjnuplmLMXelbU/aHg+pAZsH1llPaZETeGFDffWzVb7A
 nTnSYkHGTV8IhylD+JIvWWLmE/rh6g5d/BequlC8zUQpX58+ncc+IMyMHoAqdRPLEfSQ
 a0/g==
X-Gm-Message-State: AOAM531gHgQ04fer5Mxu6icUtj+/4P15R9Btl05oz6J7HKnTqDNugj1I
 fHGYNsrA19k5V9hBjMI/2wiCrg==
X-Google-Smtp-Source: ABdhPJxZ3PtR4eUISGAgJy894bXe43kXGpa3zCIO5LeduT92f8pdNbMpmZcrSYZMCYcAKlBhZ72tJg==
X-Received: by 2002:a63:6442:: with SMTP id y63mr2132897pgb.18.1593241428951; 
 Sat, 27 Jun 2020 00:03:48 -0700 (PDT)
Received: from drinkcat2.tpe.corp.google.com
 ([2401:fa00:1:b:d8b7:33af:adcb:b648])
 by smtp.gmail.com with ESMTPSA id u4sm28133269pfl.102.2020.06.27.00.03.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 27 Jun 2020 00:03:48 -0700 (PDT)
From: Nicolas Boichat <drinkcat@chromium.org>
To: linux-kernel@vger.kernel.org
Date: Sat, 27 Jun 2020 15:03:06 +0800
Message-Id: <20200627070307.516803-4-drinkcat@chromium.org>
X-Mailer: git-send-email 2.27.0.212.ge8ba1cc988-goog
In-Reply-To: <20200627070307.516803-1-drinkcat@chromium.org>
References: <20200627070307.516803-1-drinkcat@chromium.org>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/4] media: camss: vfe: Use trace_printk for
 debugging only
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: Peter Chen <peter.chen@nxp.com>,
 "Guilherme G . Piccoli" <gpiccoli@canonical.com>,
 Rafael Aquini <aquini@redhat.com>, Sam Ravnborg <sam@ravnborg.org>,
 David Airlie <airlied@linux.ie>, Todor Tomov <todor.too@gmail.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 David Howells <dhowells@redhat.com>, Tiezhu Yang <yangtiezhu@loongson.cn>,
 Will Deacon <will@kernel.org>,
 Christian Brauner <christian.brauner@ubuntu.com>,
 Kees Cook <keescook@chromium.org>, devel@driverdev.osuosl.org,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 Nicolas Boichat <drinkcat@chromium.org>, Jayshri Pawar <jpawar@cadence.com>,
 Masahiro Yamada <masahiroy@kernel.org>,
 Alexei Starovoitov <alexei.starovoitov@gmail.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, Andy Gross <agross@kernel.org>,
 Tomas Winkler <tomas.winkler@intel.com>, Alexey Dobriyan <adobriyan@gmail.com>,
 linux-media@vger.kernel.org, Pawel Laszczak <pawell@cadence.com>,
 Arnd Bergmann <arnd@arndb.de>, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, Chao Yu <chao@kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>, Jaegeuk Kim <jaegeuk@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Ingo Molnar <mingo@redhat.com>,
 Roger Quadros <rogerq@ti.com>, Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 dri-devel@lists.freedesktop.org, linux-usb@vger.kernel.org,
 linux-f2fs-devel@lists.sourceforge.net,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Colin Ian King <colin.king@canonical.com>,
 Andrew Morton <akpm@linux-foundation.org>, Divya Indi <divya.indi@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

trace_printk should not be used in production code. Since
tracing interrupts is presumably latency sensitive, pr_dbg is
not appropriate, so guard the call with a preprocessor symbol
that can be defined for debugging purpose.

Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>

---
 drivers/media/platform/qcom/camss/camss-vfe-4-1.c | 2 ++
 drivers/media/platform/qcom/camss/camss-vfe-4-7.c | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/drivers/media/platform/qcom/camss/camss-vfe-4-1.c b/drivers/media/platform/qcom/camss/camss-vfe-4-1.c
index 174a36be6f5d866..0c57171fae4f9e9 100644
--- a/drivers/media/platform/qcom/camss/camss-vfe-4-1.c
+++ b/drivers/media/platform/qcom/camss/camss-vfe-4-1.c
@@ -936,8 +936,10 @@ static irqreturn_t vfe_isr(int irq, void *dev)
 
 	vfe->ops->isr_read(vfe, &value0, &value1);
 
+#ifdef CAMSS_VFE_TRACE_IRQ
 	trace_printk("VFE: status0 = 0x%08x, status1 = 0x%08x\n",
 		     value0, value1);
+#endif
 
 	if (value0 & VFE_0_IRQ_STATUS_0_RESET_ACK)
 		vfe->isr_ops.reset_ack(vfe);
diff --git a/drivers/media/platform/qcom/camss/camss-vfe-4-7.c b/drivers/media/platform/qcom/camss/camss-vfe-4-7.c
index 0dca8bf9281e774..307675925e5c779 100644
--- a/drivers/media/platform/qcom/camss/camss-vfe-4-7.c
+++ b/drivers/media/platform/qcom/camss/camss-vfe-4-7.c
@@ -1058,8 +1058,10 @@ static irqreturn_t vfe_isr(int irq, void *dev)
 
 	vfe->ops->isr_read(vfe, &value0, &value1);
 
+#ifdef CAMSS_VFE_TRACE_IRQ
 	trace_printk("VFE: status0 = 0x%08x, status1 = 0x%08x\n",
 		     value0, value1);
+#endif
 
 	if (value0 & VFE_0_IRQ_STATUS_0_RESET_ACK)
 		vfe->isr_ops.reset_ack(vfe);
-- 
2.27.0.212.ge8ba1cc988-goog

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
