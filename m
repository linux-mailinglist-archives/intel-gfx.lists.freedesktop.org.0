Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 92CCE20BF22
	for <lists+intel-gfx@lfdr.de>; Sat, 27 Jun 2020 09:03:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C51416E520;
	Sat, 27 Jun 2020 07:03:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com
 [IPv6:2607:f8b0:4864:20::1041])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACEC66E520
 for <intel-gfx@lists.freedesktop.org>; Sat, 27 Jun 2020 07:03:34 +0000 (UTC)
Received: by mail-pj1-x1041.google.com with SMTP id b92so5865748pjc.4
 for <intel-gfx@lists.freedesktop.org>; Sat, 27 Jun 2020 00:03:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IRWxMxlqWvctwl99wxccnqWWb3ENVUA6Lf341j4JzdE=;
 b=i0jiET3+vZO/UFJlzvko7rrTS7QmWEyKiVb3ggUYOS/7e0IjEJzlzOnOZQNyLuowqO
 /b2qX+vjeZeDwvEH5keqR8JJJRVjME6vd0LHDtfSmDsVeomQpuZAiYT4EfCNRTa2SQHb
 3MdeP0EJZ5FWGwkT0YcN8ucODDkKTYtFt0oZI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IRWxMxlqWvctwl99wxccnqWWb3ENVUA6Lf341j4JzdE=;
 b=oi0wB6HCxIjAUcAyRkjebH3AgeMQpRqt4U3mpT5BZilJv9AJ1NHpta5IJDcVR0pFk9
 sPh6uX3NNhaICQEEHZtZFGIb1e758ZfwAYOOUe8nikHRYsFtt3Afc5bHxulBZ/04ERsx
 5oaOavN0SJpmGgPMcuZX10vh4bF+/m3IqTDGP3zxdxfPqU3PnrChaA/PJxzNHBQ5U3AJ
 D/lU8ORhdVNXV0opNKRParLRBFpkPdrQDC1ZmsNx7CPc88VDPY4jLmRYYfrYW0/EntDZ
 6tNzXZQdn+dKvi1z3IKeOXxgfByjUi4pnun4V1O5Eggn6G2I5sL+NYWNqFKVpi5Dlqyt
 M95g==
X-Gm-Message-State: AOAM532Zg9R4Tbeywzu9OoWjPSazHU6LJCkbl6uU01CR9cff61dxjwMi
 VA8YNUp24a3wKtNsqeGV3Z/0Vw==
X-Google-Smtp-Source: ABdhPJxpdGUdXoc2rz4cG0DRuW8Y+uArwwEZjCgqEOXBTcgjaJufBTwP5w8TUOFoJoJC34+HTXYVOg==
X-Received: by 2002:a17:90a:bf14:: with SMTP id
 c20mr7337079pjs.228.1593241414364; 
 Sat, 27 Jun 2020 00:03:34 -0700 (PDT)
Received: from drinkcat2.tpe.corp.google.com
 ([2401:fa00:1:b:d8b7:33af:adcb:b648])
 by smtp.gmail.com with ESMTPSA id u4sm28133269pfl.102.2020.06.27.00.03.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 27 Jun 2020 00:03:33 -0700 (PDT)
From: Nicolas Boichat <drinkcat@chromium.org>
To: linux-kernel@vger.kernel.org
Date: Sat, 27 Jun 2020 15:03:04 +0800
Message-Id: <20200627070307.516803-2-drinkcat@chromium.org>
X-Mailer: git-send-email 2.27.0.212.ge8ba1cc988-goog
In-Reply-To: <20200627070307.516803-1-drinkcat@chromium.org>
References: <20200627070307.516803-1-drinkcat@chromium.org>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/4] usb: cdns3: gadget: Replace trace_printk by
 dev_dbg
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

trace_printk should not be used in production code, replace it
call with dev_dbg.

Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>

---

Unclear why a trace_printk was used in the first place, it's
possible that some rate-limiting is necessary here.

 drivers/usb/cdns3/gadget.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/cdns3/gadget.c b/drivers/usb/cdns3/gadget.c
index 5e24c2e57c0d8c8..c303ab7c62d1651 100644
--- a/drivers/usb/cdns3/gadget.c
+++ b/drivers/usb/cdns3/gadget.c
@@ -421,7 +421,7 @@ static int cdns3_start_all_request(struct cdns3_device *priv_dev,
 		if ((priv_req->flags & REQUEST_INTERNAL) ||
 		    (priv_ep->flags & EP_TDLCHK_EN) ||
 			priv_ep->use_streams) {
-			trace_printk("Blocking external request\n");
+			dev_dbg(priv_dev->dev, "Blocking external request\n");
 			return ret;
 		}
 	}
-- 
2.27.0.212.ge8ba1cc988-goog

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
