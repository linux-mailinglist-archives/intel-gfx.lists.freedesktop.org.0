Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57A1920BF1F
	for <lists+intel-gfx@lfdr.de>; Sat, 27 Jun 2020 09:03:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA6776E08C;
	Sat, 27 Jun 2020 07:03:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com
 [IPv6:2607:f8b0:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AEE56E13F
 for <intel-gfx@lists.freedesktop.org>; Sat, 27 Jun 2020 07:03:27 +0000 (UTC)
Received: by mail-pf1-x441.google.com with SMTP id d66so5632723pfd.6
 for <intel-gfx@lists.freedesktop.org>; Sat, 27 Jun 2020 00:03:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FsrSKJ+gJUACgrGolhsPdd0vgGMvepJqfy8379JcKu4=;
 b=EvUBhtFbdA5q/Ln7/JmYkJ4WCSQYr0FDka6B0ToibqDo+KoRIWa5csnmBSRVgeVZpD
 3SycW07fCAwTdh+u5tC0gQuOD9UiiaFw8Pzh8+WwWoF+ppc6VrAXas0XCfYV9gXA5Cah
 O5dfGYTYYOddR91unI7zbYt5VMmXuBus/0h6Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FsrSKJ+gJUACgrGolhsPdd0vgGMvepJqfy8379JcKu4=;
 b=jlg2AEMOAFQLZf9m57w3a/dgZSeU7N8nWm1xih14km+vM/M7ntSJUt7/NT+iG64IhF
 SpP4qdLRyFiLdDvz+nFG38pJsGqTOL+sR9NAkw7K6bbL3yH+iYuzTRuMzRlH2xzwTGXX
 qiVksR2yVMzT2L5jbBd2PAeIfyf5Ict/k9W+I19MMqbkAFWSlGj+o9d1v1MxCryUy9U+
 3t6WyEOfADtTKY6l95nXuRHCKRwjnf+4g0PwPwunv2Ep5Q081PVdcsaNaaH+tcqPG22y
 t99qtcMqA17CyOYcUJu+tZNRRwQ9C8gQy2U69cRuhfC45e/UjnwUGIK8bCmszKZrr5aE
 Pvpw==
X-Gm-Message-State: AOAM532i5VgAnnvftf85Tx7qH8HHh2FGraMC6dKzI4VLObtdUHRf+wtN
 MzskzNWKrJjWHo9Zene3Eafc7A==
X-Google-Smtp-Source: ABdhPJyZFG/mi1UZ8xodyex8KRwcp8OsluVaczS/+idWJyqCQQeS3g8ufLKi4ZbrLW2qKEXgiYfBLw==
X-Received: by 2002:a62:5c85:: with SMTP id q127mr5814143pfb.311.1593241406667; 
 Sat, 27 Jun 2020 00:03:26 -0700 (PDT)
Received: from drinkcat2.tpe.corp.google.com
 ([2401:fa00:1:b:d8b7:33af:adcb:b648])
 by smtp.gmail.com with ESMTPSA id u4sm28133269pfl.102.2020.06.27.00.03.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 27 Jun 2020 00:03:25 -0700 (PDT)
From: Nicolas Boichat <drinkcat@chromium.org>
To: linux-kernel@vger.kernel.org
Date: Sat, 27 Jun 2020 15:03:03 +0800
Message-Id: <20200627070307.516803-1-drinkcat@chromium.org>
X-Mailer: git-send-email 2.27.0.212.ge8ba1cc988-goog
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/4] Detect and remove trace_printk
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

trace_printk is meant as a debugging tool, and should not be
compiled into production code without specific debug Kconfig
options enabled or source code changes.

Patches 1 to 3 remove/disable trace_printk that should not
be enabled by default.

Patch 4 adds a config option that can be used to detect such
trace_printk at compile time (instead of printing a nasty
warning at runtime).

Nicolas Boichat (4):
  usb: cdns3: gadget: Replace trace_printk by dev_dbg
  media: atomisp: Replace trace_printk by pr_info
  media: camss: vfe: Use trace_printk for debugging only
  kernel/trace: Add TRACING_ALLOW_PRINTK config option

 drivers/gpu/drm/i915/Kconfig.debug              |  4 ++--
 .../media/platform/qcom/camss/camss-vfe-4-1.c   |  2 ++
 .../media/platform/qcom/camss/camss-vfe-4-7.c   |  2 ++
 drivers/staging/media/atomisp/pci/hmm/hmm.c     | 10 +++++-----
 drivers/usb/cdns3/gadget.c                      |  2 +-
 fs/f2fs/Kconfig                                 |  1 +
 include/linux/kernel.h                          | 17 ++++++++++++++++-
 kernel/trace/Kconfig                            | 10 ++++++++++
 samples/Kconfig                                 |  2 ++
 9 files changed, 41 insertions(+), 9 deletions(-)

-- 
2.27.0.212.ge8ba1cc988-goog

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
