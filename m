Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4514A6D6DE3
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Apr 2023 22:19:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C90F910E7B7;
	Tue,  4 Apr 2023 20:18:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com
 [IPv6:2a00:1450:4864:20::635])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39DDE10E7B0
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Apr 2023 20:18:52 +0000 (UTC)
Received: by mail-ej1-x635.google.com with SMTP id
 a640c23a62f3a-947a47eb908so44362566b.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 04 Apr 2023 13:18:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1680639532;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=QlY94eJGzERU4oUesbYD/lkDdpKfub3Yg7YVPlvvBP0=;
 b=AZI2xSb2K8MrZbOGF4h/d8m9DbQRt1EgcA9EkvMp85yMrcT7Pdt8rAGXD71j0Gi5u8
 g2RFidTCOJ8c/3O4bUSnNKYFdY88s5ZkdeNo5pKd7VvERW3Ao7VrwluvV+8nkl8bgnlh
 oeLL7rgG+6iQhqREsKQJgDMROHMIcMPlDVhoE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680639532;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=QlY94eJGzERU4oUesbYD/lkDdpKfub3Yg7YVPlvvBP0=;
 b=sBm5yraSQPQqsuJvzXKT9Yol40NyFnn0XzylBIwVMgsk5YF3AXJwQfJigk8n30IBwM
 qppwn14GA2ew8HOcA1zbUgKKde+MC3cqA2EFr0p6sqfuvM1VprpDemkmSdZye+4VmTlG
 5VEDNwP24u90vAa3cPRQTCzTUUFiw8RKstZYv2KszzQV0DLAYuI1pGs0V3rvtcGdiO2W
 kHwDogZr02p42fOb7EljCcae6l7LADcap1a6t2QI0A2PuRk9REeM9nSOZd71bbFSRmym
 Aqt9yqWobLj29HZNCHxuij5N8PpEzVS4hB+JVL+/xqSRNF9iPwNk44ekYfg9+HYocsPb
 uA/Q==
X-Gm-Message-State: AAQBX9fkHIfleZdmes4LXV48O1PTTwognPINO7I5qpNVf1EazPnaggDl
 Dyuvk2NZZKxfuHPVU3ar2yW4Xw==
X-Google-Smtp-Source: AKy350YanfUhiHjwTsc1xtvi9ots5upvcGMA134pnXkh15kLAx/purO9zv6dn1R8K6Vg9tmhARyCmA==
X-Received: by 2002:a05:6402:524e:b0:500:3fd0:25a8 with SMTP id
 t14-20020a056402524e00b005003fd025a8mr660799edd.0.1680639531676; 
 Tue, 04 Apr 2023 13:18:51 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-33.fiber7.init7.net.
 [212.51.149.33]) by smtp.gmail.com with ESMTPSA id
 u12-20020a50c04c000000b004d8d2735251sm6367986edd.43.2023.04.04.13.18.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Apr 2023 13:18:51 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue,  4 Apr 2023 22:18:42 +0200
Message-Id: <20230404201842.567344-8-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230404201842.567344-1-daniel.vetter@ffwll.ch>
References: <20230404201842.567344-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 8/8] fbdev: Simplify fb_is_primary_device for x86
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
Cc: x86@kernel.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Javier Martinez Canillas <javierm@redhat.com>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Daniel Vetter <daniel@ffwll.ch>,
 "H. Peter Anvin" <hpa@zytor.com>, Daniel Vetter <daniel.vetter@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>, Helge Deller <deller@gmx.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

vga_default_device really is supposed to cover all corners, at least
for x86. Additionally checking for rom shadowing should be redundant,
because the bios/fw only does that for the boot vga device.

If this turns out to be wrong, then most likely that's a special case
which should be added to the vgaarb code, not replicated all over.

Patch motived by changes to the aperture helpers, which also have this
open code in a bunch of places, and which are all removed in a
clean-up series. This function here is just for selecting the default
fbdev device for fbcon, but I figured for consistency it might be good
to throw this patch in on top.

Note that the shadow rom check predates vgaarb, which was only wired
up in 88674088d10c ("x86: Use vga_default_device() when determining
whether an fb is primary"). That patch doesn't explain why we still
fall back to the shadow rom check.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: Helge Deller <deller@gmx.de>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: Javier Martinez Canillas <javierm@redhat.com>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Borislav Petkov <bp@alien8.de>
Cc: Dave Hansen <dave.hansen@linux.intel.com>
Cc: x86@kernel.org
Cc: "H. Peter Anvin" <hpa@zytor.com>
---
 arch/x86/video/fbdev.c | 13 +------------
 1 file changed, 1 insertion(+), 12 deletions(-)

diff --git a/arch/x86/video/fbdev.c b/arch/x86/video/fbdev.c
index 9fd24846d094..5ec4eafbb981 100644
--- a/arch/x86/video/fbdev.c
+++ b/arch/x86/video/fbdev.c
@@ -14,26 +14,15 @@
 int fb_is_primary_device(struct fb_info *info)
 {
 	struct device *device = info->device;
-	struct pci_dev *default_device = vga_default_device();
 	struct pci_dev *pci_dev;
-	struct resource *res;
 
 	if (!device || !dev_is_pci(device))
 		return 0;
 
 	pci_dev = to_pci_dev(device);
 
-	if (default_device) {
-		if (pci_dev == default_device)
-			return 1;
-		return 0;
-	}
-
-	res = pci_dev->resource + PCI_ROM_RESOURCE;
-
-	if (res->flags & IORESOURCE_ROM_SHADOW)
+	if (pci_dev == vga_default_device())
 		return 1;
-
 	return 0;
 }
 EXPORT_SYMBOL(fb_is_primary_device);
-- 
2.40.0

