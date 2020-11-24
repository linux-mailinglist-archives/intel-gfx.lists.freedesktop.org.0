Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C5D62C256F
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Nov 2020 13:13:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E767C6E2E3;
	Tue, 24 Nov 2020 12:13:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 915256E2C7;
 Tue, 24 Nov 2020 12:13:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 87020A8832;
 Tue, 24 Nov 2020 12:13:40 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Thomas Zimmermann" <tzimmermann@suse.de>
Date: Tue, 24 Nov 2020 12:13:40 -0000
Message-ID: <160622002052.10862.3532789669504382198@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201124113824.19994-1-tzimmermann@suse.de>
In-Reply-To: <20201124113824.19994-1-tzimmermann@suse.de>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm=3A_Move_struct_drm=5Fdevice=2Epdev_to_legacy?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm: Move struct drm_device.pdev to legacy
URL   : https://patchwork.freedesktop.org/series/84205/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
a05395880eb4 drm/amdgpu: Remove references to struct drm_device.pdev
a19d9609caa5 drm/ast: Remove references to struct drm_device.pdev
69271c471b3c drm/bochs: Remove references to struct drm_device.pdev
5b6a109e50c6 drm/cirrus: Remove references to struct drm_device.pdev
-:12: WARNING:OBSOLETE: drivers/gpu/drm/tiny/cirrus.c is marked as 'obsolete' in the MAINTAINERS hierarchy.  No unnecessary modifications please.

-:15: WARNING:OBSOLETE: drivers/gpu/drm/tiny/cirrus.c is marked as 'obsolete' in the MAINTAINERS hierarchy.  No unnecessary modifications please.

total: 0 errors, 2 warnings, 0 checks, 7 lines checked
f61db0e140d6 drm/gma500: Remove references to struct drm_device.pdev
-:89: CHECK:CAMELCASE: Avoid CamelCase: <saveLBB>
#89: FILE: drivers/gpu/drm/gma500/cdv_device.c:269:
+	pci_read_config_byte(pdev, 0xF4, &regs->cdv.saveLBB);

-:158: WARNING:PREFER_DEV_LEVEL: Prefer dev_err(... to dev_printk(KERN_ERR, ...
#158: FILE: drivers/gpu/drm/gma500/cdv_intel_crt.c:281:
+		dev_printk(KERN_ERR, dev->dev, "DDC bus registration failed.\n");

-:180: WARNING:PREFER_DEV_LEVEL: Prefer dev_err(... to dev_printk(KERN_ERR, ...
#180: FILE: drivers/gpu/drm/gma500/cdv_intel_lvds.c:578:
+		dev_printk(KERN_ERR, dev->dev,

-:221: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around dev->mode_config.fb_base
#221: FILE: drivers/gpu/drm/gma500/framebuffer.c:545:
+	pci_read_config_dword(pdev, PSB_BSM, (u32 *)&(dev->mode_config.fb_base));

-:720: WARNING:PREFER_DEV_LEVEL: Prefer dev_err(... to dev_printk(KERN_ERR, ...
#720: FILE: drivers/gpu/drm/gma500/psb_intel_lvds.c:722:
+		dev_printk(KERN_ERR, dev->dev,

-:749: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#749: FILE: drivers/gpu/drm/gma500/tc35876x-dsi-lvds.c:459:
+			dev_warn(dev->dev, "GPIOPWMCTRL was not set to system clock (pwmctrl = 0x%02x)\n", pwmctrl);

total: 0 errors, 4 warnings, 2 checks, 658 lines checked
43de488f0ae9 drm/hibmc: Remove references to struct drm_device.pdev
01a8ea96ca1c drm/i915: Remove references to struct drm_device.pdev
f83b2e33ec46 drm/mgag200: Remove references to struct drm_device.pdev
23269c980b19 drm/nouveau: Remove references to struct drm_device.pdev
f3f907d41b1b drm/qxl: Remove references to struct drm_device.pdev
997d0814d5cf drm/radeon: Remove references to struct drm_device.pdev
-:27: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'rdev->pdev->device == 0x71C5'
#27: FILE: drivers/gpu/drm/radeon/atombios_encoders.c:2068:
+	if ((rdev->pdev->device == 0x71C5) &&
+	    (rdev->pdev->subsystem_vendor == 0x106b) &&
+	    (rdev->pdev->subsystem_device == 0x0080)) {

-:27: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'rdev->pdev->subsystem_vendor == 0x106b'
#27: FILE: drivers/gpu/drm/radeon/atombios_encoders.c:2068:
+	if ((rdev->pdev->device == 0x71C5) &&
+	    (rdev->pdev->subsystem_vendor == 0x106b) &&
+	    (rdev->pdev->subsystem_device == 0x0080)) {

-:27: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'rdev->pdev->subsystem_device == 0x0080'
#27: FILE: drivers/gpu/drm/radeon/atombios_encoders.c:2068:
+	if ((rdev->pdev->device == 0x71C5) &&
+	    (rdev->pdev->subsystem_vendor == 0x106b) &&
+	    (rdev->pdev->subsystem_device == 0x0080)) {

-:69: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'rdev->pdev->subsystem_device == 0x016c'
#69: FILE: drivers/gpu/drm/radeon/r100.c:2641:
+		if ((rdev->pdev->subsystem_vendor == 0x1028 /* DELL */) &&
+		    ((rdev->pdev->subsystem_device == 0x016c) ||
+		     (rdev->pdev->subsystem_device == 0x016d) ||
+		     (rdev->pdev->subsystem_device == 0x016e) ||
+		     (rdev->pdev->subsystem_device == 0x016f) ||
+		     (rdev->pdev->subsystem_device == 0x0170) ||
+		     (rdev->pdev->subsystem_device == 0x017d) ||
+		     (rdev->pdev->subsystem_device == 0x017e) ||
+		     (rdev->pdev->subsystem_device == 0x0183) ||
+		     (rdev->pdev->subsystem_device == 0x018a) ||
+		     (rdev->pdev->subsystem_device == 0x019a)))

-:69: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'rdev->pdev->subsystem_device == 0x016d'
#69: FILE: drivers/gpu/drm/radeon/r100.c:2641:
+		if ((rdev->pdev->subsystem_vendor == 0x1028 /* DELL */) &&
+		    ((rdev->pdev->subsystem_device == 0x016c) ||
+		     (rdev->pdev->subsystem_device == 0x016d) ||
+		     (rdev->pdev->subsystem_device == 0x016e) ||
+		     (rdev->pdev->subsystem_device == 0x016f) ||
+		     (rdev->pdev->subsystem_device == 0x0170) ||
+		     (rdev->pdev->subsystem_device == 0x017d) ||
+		     (rdev->pdev->subsystem_device == 0x017e) ||
+		     (rdev->pdev->subsystem_device == 0x0183) ||
+		     (rdev->pdev->subsystem_device == 0x018a) ||
+		     (rdev->pdev->subsystem_device == 0x019a)))

-:69: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'rdev->pdev->subsystem_device == 0x016e'
#69: FILE: drivers/gpu/drm/radeon/r100.c:2641:
+		if ((rdev->pdev->subsystem_vendor == 0x1028 /* DELL */) &&
+		    ((rdev->pdev->subsystem_device == 0x016c) ||
+		     (rdev->pdev->subsystem_device == 0x016d) ||
+		     (rdev->pdev->subsystem_device == 0x016e) ||
+		     (rdev->pdev->subsystem_device == 0x016f) ||
+		     (rdev->pdev->subsystem_device == 0x0170) ||
+		     (rdev->pdev->subsystem_device == 0x017d) ||
+		     (rdev->pdev->subsystem_device == 0x017e) ||
+		     (rdev->pdev->subsystem_device == 0x0183) ||
+		     (rdev->pdev->subsystem_device == 0x018a) ||
+		     (rdev->pdev->subsystem_device == 0x019a)))

-:69: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'rdev->pdev->subsystem_device == 0x016f'
#69: FILE: drivers/gpu/drm/radeon/r100.c:2641:
+		if ((rdev->pdev->subsystem_vendor == 0x1028 /* DELL */) &&
+		    ((rdev->pdev->subsystem_device == 0x016c) ||
+		     (rdev->pdev->subsystem_device == 0x016d) ||
+		     (rdev->pdev->subsystem_device == 0x016e) ||
+		     (rdev->pdev->subsystem_device == 0x016f) ||
+		     (rdev->pdev->subsystem_device == 0x0170) ||
+		     (rdev->pdev->subsystem_device == 0x017d) ||
+		     (rdev->pdev->subsystem_device == 0x017e) ||
+		     (rdev->pdev->subsystem_device == 0x0183) ||
+		     (rdev->pdev->subsystem_device == 0x018a) ||
+		     (rdev->pdev->subsystem_device == 0x019a)))

-:69: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'rdev->pdev->subsystem_device == 0x0170'
#69: FILE: drivers/gpu/drm/radeon/r100.c:2641:
+		if ((rdev->pdev->subsystem_vendor == 0x1028 /* DELL */) &&
+		    ((rdev->pdev->subsystem_device == 0x016c) ||
+		     (rdev->pdev->subsystem_device == 0x016d) ||
+		     (rdev->pdev->subsystem_device == 0x016e) ||
+		     (rdev->pdev->subsystem_device == 0x016f) ||
+		     (rdev->pdev->subsystem_device == 0x0170) ||
+		     (rdev->pdev->subsystem_device == 0x017d) ||
+		     (rdev->pdev->subsystem_device == 0x017e) ||
+		     (rdev->pdev->subsystem_device == 0x0183) ||
+		     (rdev->pdev->subsystem_device == 0x018a) ||
+		     (rdev->pdev->subsystem_device == 0x019a)))

-:69: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'rdev->pdev->subsystem_device == 0x017d'
#69: FILE: drivers/gpu/drm/radeon/r100.c:2641:
+		if ((rdev->pdev->subsystem_vendor == 0x1028 /* DELL */) &&
+		    ((rdev->pdev->subsystem_device == 0x016c) ||
+		     (rdev->pdev->subsystem_device == 0x016d) ||
+		     (rdev->pdev->subsystem_device == 0x016e) ||
+		     (rdev->pdev->subsystem_device == 0x016f) ||
+		     (rdev->pdev->subsystem_device == 0x0170) ||
+		     (rdev->pdev->subsystem_device == 0x017d) ||
+		     (rdev->pdev->subsystem_device == 0x017e) ||
+		     (rdev->pdev->subsystem_device == 0x0183) ||
+		     (rdev->pdev->subsystem_device == 0x018a) ||
+		     (rdev->pdev->subsystem_device == 0x019a)))

-:69: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'rdev->pdev->subsystem_device == 0x017e'
#69: FILE: drivers/gpu/drm/radeon/r100.c:2641:
+		if ((rdev->pdev->subsystem_vendor == 0x1028 /* DELL */) &&
+		    ((rdev->pdev->subsystem_device == 0x016c) ||
+		     (rdev->pdev->subsystem_device == 0x016d) ||
+		     (rdev->pdev->subsystem_device == 0x016e) ||
+		     (rdev->pdev->subsystem_device == 0x016f) ||
+		     (rdev->pdev->subsystem_device == 0x0170) ||
+		     (rdev->pdev->subsystem_device == 0x017d) ||
+		     (rdev->pdev->subsystem_device == 0x017e) ||
+		     (rdev->pdev->subsystem_device == 0x0183) ||
+		     (rdev->pdev->subsystem_device == 0x018a) ||
+		     (rdev->pdev->subsystem_device == 0x019a)))

-:69: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'rdev->pdev->subsystem_device == 0x0183'
#69: FILE: drivers/gpu/drm/radeon/r100.c:2641:
+		if ((rdev->pdev->subsystem_vendor == 0x1028 /* DELL */) &&
+		    ((rdev->pdev->subsystem_device == 0x016c) ||
+		     (rdev->pdev->subsystem_device == 0x016d) ||
+		     (rdev->pdev->subsystem_device == 0x016e) ||
+		     (rdev->pdev->subsystem_device == 0x016f) ||
+		     (rdev->pdev->subsystem_device == 0x0170) ||
+		     (rdev->pdev->subsystem_device == 0x017d) ||
+		     (rdev->pdev->subsystem_device == 0x017e) ||
+		     (rdev->pdev->subsystem_device == 0x0183) ||
+		     (rdev->pdev->subsystem_device == 0x018a) ||
+		     (rdev->pdev->subsystem_device == 0x019a)))

-:69: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'rdev->pdev->subsystem_device == 0x018a'
#69: FILE: drivers/gpu/drm/radeon/r100.c:2641:
+		if ((rdev->pdev->subsystem_vendor == 0x1028 /* DELL */) &&
+		    ((rdev->pdev->subsystem_device == 0x016c) ||
+		     (rdev->pdev->subsystem_device == 0x016d) ||
+		     (rdev->pdev->subsystem_device == 0x016e) ||
+		     (rdev->pdev->subsystem_device == 0x016f) ||
+		     (rdev->pdev->subsystem_device == 0x0170) ||
+		     (rdev->pdev->subsystem_device == 0x017d) ||
+		     (rdev->pdev->subsystem_device == 0x017e) ||
+		     (rdev->pdev->subsystem_device == 0x0183) ||
+		     (rdev->pdev->subsystem_device == 0x018a) ||
+		     (rdev->pdev->subsystem_device == 0x019a)))

-:69: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'rdev->pdev->subsystem_device == 0x019a'
#69: FILE: drivers/gpu/drm/radeon/r100.c:2641:
+		if ((rdev->pdev->subsystem_vendor == 0x1028 /* DELL */) &&
+		    ((rdev->pdev->subsystem_device == 0x016c) ||
+		     (rdev->pdev->subsystem_device == 0x016d) ||
+		     (rdev->pdev->subsystem_device == 0x016e) ||
+		     (rdev->pdev->subsystem_device == 0x016f) ||
+		     (rdev->pdev->subsystem_device == 0x0170) ||
+		     (rdev->pdev->subsystem_device == 0x017d) ||
+		     (rdev->pdev->subsystem_device == 0x017e) ||
+		     (rdev->pdev->subsystem_device == 0x0183) ||
+		     (rdev->pdev->subsystem_device == 0x018a) ||
+		     (rdev->pdev->subsystem_device == 0x019a)))

-:108: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'rdev' - possible side-effects?
#108: FILE: drivers/gpu/drm/radeon/radeon.h:2626:
+#define ASIC_IS_X2(rdev) ((rdev->pdev->device == 0x9441) || \
+		(rdev->pdev->device == 0x9443) || \
+		(rdev->pdev->device == 0x944B) || \
+		(rdev->pdev->device == 0x9506) || \
+		(rdev->pdev->device == 0x9509) || \
+		(rdev->pdev->device == 0x950F) || \
+		(rdev->pdev->device == 0x689C) || \
+		(rdev->pdev->device == 0x689D))

-:108: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'rdev' may be better as '(rdev)' to avoid precedence issues
#108: FILE: drivers/gpu/drm/radeon/radeon.h:2626:
+#define ASIC_IS_X2(rdev) ((rdev->pdev->device == 0x9441) || \
+		(rdev->pdev->device == 0x9443) || \
+		(rdev->pdev->device == 0x944B) || \
+		(rdev->pdev->device == 0x9506) || \
+		(rdev->pdev->device == 0x9509) || \
+		(rdev->pdev->device == 0x950F) || \
+		(rdev->pdev->device == 0x689C) || \
+		(rdev->pdev->device == 0x689D))

-:131: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'rdev' - possible side-effects?
#131: FILE: drivers/gpu/drm/radeon/radeon.h:2656:
+#define ASIC_IS_LOMBOK(rdev) ((rdev->pdev->device == 0x6849) || \
+			      (rdev->pdev->device == 0x6850) || \
+			      (rdev->pdev->device == 0x6858) || \
+			      (rdev->pdev->device == 0x6859) || \
+			      (rdev->pdev->device == 0x6840) || \
+			      (rdev->pdev->device == 0x6841) || \
+			      (rdev->pdev->device == 0x6842) || \
+			      (rdev->pdev->device == 0x6843))

-:131: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'rdev' may be better as '(rdev)' to avoid precedence issues
#131: FILE: drivers/gpu/drm/radeon/radeon.h:2656:
+#define ASIC_IS_LOMBOK(rdev) ((rdev->pdev->device == 0x6849) || \
+			      (rdev->pdev->device == 0x6850) || \
+			      (rdev->pdev->device == 0x6858) || \
+			      (rdev->pdev->device == 0x6859) || \
+			      (rdev->pdev->device == 0x6840) || \
+			      (rdev->pdev->device == 0x6841) || \
+			      (rdev->pdev->device == 0x6842) || \
+			      (rdev->pdev->device == 0x6843))

-:156: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->device == 0x791e'
#156: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:297:
+	if ((pdev->device == 0x791e) &&
+	    (pdev->subsystem_vendor == 0x1043) &&
+	    (pdev->subsystem_device == 0x826d)) {

-:156: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->subsystem_vendor == 0x1043'
#156: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:297:
+	if ((pdev->device == 0x791e) &&
+	    (pdev->subsystem_vendor == 0x1043) &&
+	    (pdev->subsystem_device == 0x826d)) {

-:156: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->subsystem_device == 0x826d'
#156: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:297:
+	if ((pdev->device == 0x791e) &&
+	    (pdev->subsystem_vendor == 0x1043) &&
+	    (pdev->subsystem_device == 0x826d)) {

-:168: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->device == 0x7941'
#168: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:306:
+	if ((pdev->device == 0x7941) &&
+	    (pdev->subsystem_vendor == 0x1849) &&
+	    (pdev->subsystem_device == 0x7941)) {

-:168: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->subsystem_vendor == 0x1849'
#168: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:306:
+	if ((pdev->device == 0x7941) &&
+	    (pdev->subsystem_vendor == 0x1849) &&
+	    (pdev->subsystem_device == 0x7941)) {

-:168: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->subsystem_device == 0x7941'
#168: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:306:
+	if ((pdev->device == 0x7941) &&
+	    (pdev->subsystem_vendor == 0x1849) &&
+	    (pdev->subsystem_device == 0x7941)) {

-:180: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->device == 0x796e'
#180: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:315:
+	if ((pdev->device == 0x796e) &&
+	    (pdev->subsystem_vendor == 0x1462) &&
+	    (pdev->subsystem_device == 0x7302)) {

-:180: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->subsystem_vendor == 0x1462'
#180: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:315:
+	if ((pdev->device == 0x796e) &&
+	    (pdev->subsystem_vendor == 0x1462) &&
+	    (pdev->subsystem_device == 0x7302)) {

-:180: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->subsystem_device == 0x7302'
#180: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:315:
+	if ((pdev->device == 0x796e) &&
+	    (pdev->subsystem_vendor == 0x1462) &&
+	    (pdev->subsystem_device == 0x7302)) {

-:192: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->device == 0x7941'
#192: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:324:
+	if ((pdev->device == 0x7941) &&
+	    (pdev->subsystem_vendor == 0x147b) &&
+	    (pdev->subsystem_device == 0x2412)) {

-:192: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->subsystem_vendor == 0x147b'
#192: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:324:
+	if ((pdev->device == 0x7941) &&
+	    (pdev->subsystem_vendor == 0x147b) &&
+	    (pdev->subsystem_device == 0x2412)) {

-:192: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->subsystem_device == 0x2412'
#192: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:324:
+	if ((pdev->device == 0x7941) &&
+	    (pdev->subsystem_vendor == 0x147b) &&
+	    (pdev->subsystem_device == 0x2412)) {

-:203: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->device == 0x5653'
#203: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:332:
+	if ((pdev->device == 0x5653) &&
+	    (pdev->subsystem_vendor == 0x1462) &&
+	    (pdev->subsystem_device == 0x0291)) {

-:203: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->subsystem_vendor == 0x1462'
#203: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:332:
+	if ((pdev->device == 0x5653) &&
+	    (pdev->subsystem_vendor == 0x1462) &&
+	    (pdev->subsystem_device == 0x0291)) {

-:203: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->subsystem_device == 0x0291'
#203: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:332:
+	if ((pdev->device == 0x5653) &&
+	    (pdev->subsystem_vendor == 0x1462) &&
+	    (pdev->subsystem_device == 0x0291)) {

-:216: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->device == 0x7146'
#216: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:342:
+	if ((pdev->device == 0x7146) &&
+	    (pdev->subsystem_vendor == 0x17af) &&
+	    (pdev->subsystem_device == 0x2058)) {

-:216: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->subsystem_vendor == 0x17af'
#216: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:342:
+	if ((pdev->device == 0x7146) &&
+	    (pdev->subsystem_vendor == 0x17af) &&
+	    (pdev->subsystem_device == 0x2058)) {

-:216: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->subsystem_device == 0x2058'
#216: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:342:
+	if ((pdev->device == 0x7146) &&
+	    (pdev->subsystem_vendor == 0x17af) &&
+	    (pdev->subsystem_device == 0x2058)) {

-:227: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->device == 0x7142'
#227: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:350:
+	if ((pdev->device == 0x7142) &&
+	    (pdev->subsystem_vendor == 0x1458) &&
+	    (pdev->subsystem_device == 0x2134)) {

-:227: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->subsystem_vendor == 0x1458'
#227: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:350:
+	if ((pdev->device == 0x7142) &&
+	    (pdev->subsystem_vendor == 0x1458) &&
+	    (pdev->subsystem_device == 0x2134)) {

-:227: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->subsystem_device == 0x2134'
#227: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:350:
+	if ((pdev->device == 0x7142) &&
+	    (pdev->subsystem_vendor == 0x1458) &&
+	    (pdev->subsystem_device == 0x2134)) {

-:239: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->device == 0x71C5'
#239: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:359:
+	if ((pdev->device == 0x71C5) &&
+	    (pdev->subsystem_vendor == 0x106b) &&
+	    (pdev->subsystem_device == 0x0080)) {

-:239: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->subsystem_vendor == 0x106b'
#239: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:359:
+	if ((pdev->device == 0x71C5) &&
+	    (pdev->subsystem_vendor == 0x106b) &&
+	    (pdev->subsystem_device == 0x0080)) {

-:239: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->subsystem_device == 0x0080'
#239: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:359:
+	if ((pdev->device == 0x71C5) &&
+	    (pdev->subsystem_vendor == 0x106b) &&
+	    (pdev->subsystem_device == 0x0080)) {

-:252: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->device == 0x9598'
#252: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:377:
+	if ((pdev->device == 0x9598) &&
+	    (pdev->subsystem_vendor == 0x1043) &&
+	    (pdev->subsystem_device == 0x01da)) {

-:252: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->subsystem_vendor == 0x1043'
#252: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:377:
+	if ((pdev->device == 0x9598) &&
+	    (pdev->subsystem_vendor == 0x1043) &&
+	    (pdev->subsystem_device == 0x01da)) {

-:252: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->subsystem_device == 0x01da'
#252: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:377:
+	if ((pdev->device == 0x9598) &&
+	    (pdev->subsystem_vendor == 0x1043) &&
+	    (pdev->subsystem_device == 0x01da)) {

-:264: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->device == 0x9598'
#264: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:386:
+	if ((pdev->device == 0x9598) &&
+	    (pdev->subsystem_vendor == 0x1043) &&
+	    (pdev->subsystem_device == 0x01e4)) {

-:264: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->subsystem_vendor == 0x1043'
#264: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:386:
+	if ((pdev->device == 0x9598) &&
+	    (pdev->subsystem_vendor == 0x1043) &&
+	    (pdev->subsystem_device == 0x01e4)) {

-:264: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->subsystem_device == 0x01e4'
#264: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:386:
+	if ((pdev->device == 0x9598) &&
+	    (pdev->subsystem_vendor == 0x1043) &&
+	    (pdev->subsystem_device == 0x01e4)) {

-:276: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->device == 0x95C5'
#276: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:395:
+	if ((pdev->device == 0x95C5) &&
+	    (pdev->subsystem_vendor == 0x1043) &&
+	    (pdev->subsystem_device == 0x01e2)) {

-:276: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->subsystem_vendor == 0x1043'
#276: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:395:
+	if ((pdev->device == 0x95C5) &&
+	    (pdev->subsystem_vendor == 0x1043) &&
+	    (pdev->subsystem_device == 0x01e2)) {

-:276: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->subsystem_device == 0x01e2'
#276: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:395:
+	if ((pdev->device == 0x95C5) &&
+	    (pdev->subsystem_vendor == 0x1043) &&
+	    (pdev->subsystem_device == 0x01e2)) {

-:289: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->device == 0x95c4'
#289: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:422:
+	if (((pdev->device == 0x95c4) || (pdev->device == 0x9591)) &&
+	    (pdev->subsystem_vendor == 0x1025) &&
+	    (pdev->subsystem_device == 0x013c)) {

-:289: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->device == 0x9591'
#289: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:422:
+	if (((pdev->device == 0x95c4) || (pdev->device == 0x9591)) &&
+	    (pdev->subsystem_vendor == 0x1025) &&
+	    (pdev->subsystem_device == 0x013c)) {

-:289: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->subsystem_vendor == 0x1025'
#289: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:422:
+	if (((pdev->device == 0x95c4) || (pdev->device == 0x9591)) &&
+	    (pdev->subsystem_vendor == 0x1025) &&
+	    (pdev->subsystem_device == 0x013c)) {

-:289: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->subsystem_device == 0x013c'
#289: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:422:
+	if (((pdev->device == 0x95c4) || (pdev->device == 0x9591)) &&
+	    (pdev->subsystem_vendor == 0x1025) &&
+	    (pdev->subsystem_device == 0x013c)) {

-:302: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->device == 0x9498'
#302: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:436:
+	if ((pdev->device == 0x9498) &&
+	    (pdev->subsystem_vendor == 0x1682) &&
+	    (pdev->subsystem_device == 0x2452) &&
 	    (i2c_bus->valid == false) &&
 	    !(supported_device & (ATOM_DEVICE_TV_SUPPORT | ATOM_DEVICE_CV_SUPPORT))) {

-:302: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->subsystem_vendor == 0x1682'
#302: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:436:
+	if ((pdev->device == 0x9498) &&
+	    (pdev->subsystem_vendor == 0x1682) &&
+	    (pdev->subsystem_device == 0x2452) &&
 	    (i2c_bus->valid == false) &&
 	    !(supported_device & (ATOM_DEVICE_TV_SUPPORT | ATOM_DEVICE_CV_SUPPORT))) {

-:302: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->subsystem_device == 0x2452'
#302: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:436:
+	if ((pdev->device == 0x9498) &&
+	    (pdev->subsystem_vendor == 0x1682) &&
+	    (pdev->subsystem_device == 0x2452) &&
 	    (i2c_bus->valid == false) &&
 	    !(supported_device & (ATOM_DEVICE_TV_SUPPORT | ATOM_DEVICE_CV_SUPPORT))) {

-:302: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'i2c_bus->valid == false'
#302: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:436:
+	if ((pdev->device == 0x9498) &&
+	    (pdev->subsystem_vendor == 0x1682) &&
+	    (pdev->subsystem_device == 0x2452) &&
 	    (i2c_bus->valid == false) &&
 	    !(supported_device & (ATOM_DEVICE_TV_SUPPORT | ATOM_DEVICE_CV_SUPPORT))) {

-:317: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->device == 0x9802'
#317: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:446:
+	if (((pdev->device == 0x9802) ||
+	     (pdev->device == 0x9805) ||
+	     (pdev->device == 0x9806)) &&
+	    (pdev->subsystem_vendor == 0x1734) &&
+	    (pdev->subsystem_device == 0x11bd)) {

-:317: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->device == 0x9805'
#317: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:446:
+	if (((pdev->device == 0x9802) ||
+	     (pdev->device == 0x9805) ||
+	     (pdev->device == 0x9806)) &&
+	    (pdev->subsystem_vendor == 0x1734) &&
+	    (pdev->subsystem_device == 0x11bd)) {

-:317: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->device == 0x9806'
#317: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:446:
+	if (((pdev->device == 0x9802) ||
+	     (pdev->device == 0x9805) ||
+	     (pdev->device == 0x9806)) &&
+	    (pdev->subsystem_vendor == 0x1734) &&
+	    (pdev->subsystem_device == 0x11bd)) {

-:317: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->subsystem_vendor == 0x1734'
#317: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:446:
+	if (((pdev->device == 0x9802) ||
+	     (pdev->device == 0x9805) ||
+	     (pdev->device == 0x9806)) &&
+	    (pdev->subsystem_vendor == 0x1734) &&
+	    (pdev->subsystem_device == 0x11bd)) {

-:317: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->subsystem_device == 0x11bd'
#317: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:446:
+	if (((pdev->device == 0x9802) ||
+	     (pdev->device == 0x9805) ||
+	     (pdev->device == 0x9806)) &&
+	    (pdev->subsystem_vendor == 0x1734) &&
+	    (pdev->subsystem_device == 0x11bd)) {

-:334: WARNING:BRACES: braces {} are not necessary for single statement blocks
#334: FILE: drivers/gpu/drm/radeon/radeon_bios.c:531:
+	if (rdev->pdev->device == PCI_DEVICE_ID_ATI_RADEON_QY) {
 		fp2_gen_cntl = RREG32(RADEON_FP2_GEN_CNTL);
 	}

-:343: WARNING:BRACES: braces {} are not necessary for single statement blocks
#343: FILE: drivers/gpu/drm/radeon/radeon_bios.c:568:
+	if (rdev->pdev->device == PCI_DEVICE_ID_ATI_RADEON_QY) {
 		WREG32(RADEON_FP2_GEN_CNTL, (fp2_gen_cntl & ~RADEON_FP2_ON));
 	}

-:352: WARNING:BRACES: braces {} are not necessary for single statement blocks
#352: FILE: drivers/gpu/drm/radeon/radeon_bios.c:586:
+	if (rdev->pdev->device == PCI_DEVICE_ID_ATI_RADEON_QY) {
 		WREG32(RADEON_FP2_GEN_CNTL, fp2_gen_cntl);
 	}

-:367: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'rdev->pdev->device == 0x5159'
#367: FILE: drivers/gpu/drm/radeon/radeon_combios.c:901:
+	if (((rdev->pdev->device == 0x5159) &&
+	    (rdev->pdev->subsystem_vendor == 0x174B) &&
+	    (rdev->pdev->subsystem_device == 0x7c28)) ||
 	/* Radeon 9100 (R200) */
+	   ((rdev->pdev->device == 0x514D) &&
+	    (rdev->pdev->subsystem_vendor == 0x174B) &&
+	    (rdev->pdev->subsystem_device == 0x7149))) {

-:367: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'rdev->pdev->subsystem_vendor == 0x174B'
#367: FILE: drivers/gpu/drm/radeon/radeon_combios.c:901:
+	if (((rdev->pdev->device == 0x5159) &&
+	    (rdev->pdev->subsystem_vendor == 0x174B) &&
+	    (rdev->pdev->subsystem_device == 0x7c28)) ||
 	/* Radeon 9100 (R200) */
+	   ((rdev->pdev->device == 0x514D) &&
+	    (rdev->pdev->subsystem_vendor == 0x174B) &&
+	    (rdev->pdev->subsystem_device == 0x7149))) {

-:367: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'rdev->pdev->subsystem_device == 0x7c28'
#367: FILE: drivers/gpu/drm/radeon/radeon_combios.c:901:
+	if (((rdev->pdev->device == 0x5159) &&
+	    (rdev->pdev->subsystem_vendor == 0x174B) &&
+	    (rdev->pdev->subsystem_device == 0x7c28)) ||
 	/* Radeon 9100 (R200) */
+	   ((rdev->pdev->device == 0x514D) &&
+	    (rdev->pdev->subsystem_vendor == 0x174B) &&
+	    (rdev->pdev->subsystem_device == 0x7149))) {

-:367: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'rdev->pdev->device == 0x514D'
#367: FILE: drivers/gpu/drm/radeon/radeon_combios.c:901:
+	if (((rdev->pdev->device == 0x5159) &&
+	    (rdev->pdev->subsystem_vendor == 0x174B) &&
+	    (rdev->pdev->subsystem_device == 0x7c28)) ||
 	/* Radeon 9100 (R200) */
+	   ((rdev->pdev->device == 0x514D) &&
+	    (rdev->pdev->subsystem_vendor == 0x174B) &&
+	    (rdev->pdev->subsystem_device == 0x7149))) {

-:367: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'rdev->pdev->subsystem_vendor == 0x174B'
#367: FILE: drivers/gpu/drm/radeon/radeon_combios.c:901:
+	if (((rdev->pdev->device == 0x5159) &&
+	    (rdev->pdev->subsystem_vendor == 0x174B) &&
+	    (rdev->pdev->subsystem_device == 0x7c28)) ||
 	/* Radeon 9100 (R200) */
+	   ((rdev->pdev->device == 0x514D) &&
+	    (rdev->pdev->subsystem_vendor == 0x174B) &&
+	    (rdev->pdev->subsystem_device == 0x7149))) {

-:367: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'rdev->pdev->subsystem_device == 0x7149'
#367: FILE: drivers/gpu/drm/radeon/radeon_combios.c:901:
+	if (((rdev->pdev->device == 0x5159) &&
+	    (rdev->pdev->subsystem_vendor == 0x174B) &&
+	    (rdev->pdev->subsystem_device == 0x7c28)) ||
 	/* Radeon 9100 (R200) */


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
