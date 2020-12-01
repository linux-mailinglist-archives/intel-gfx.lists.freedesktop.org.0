Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A2A22CA109
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Dec 2020 12:17:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6171E6E513;
	Tue,  1 Dec 2020 11:17:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4789789D7B;
 Tue,  1 Dec 2020 11:17:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3DA05AA3D8;
 Tue,  1 Dec 2020 11:17:24 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Thomas Zimmermann" <tzimmermann@suse.de>
Date: Tue, 01 Dec 2020 11:17:24 -0000
Message-ID: <160682144422.6992.2217335133752652666@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201201103542.2182-1-tzimmermann@suse.de>
In-Reply-To: <20201201103542.2182-1-tzimmermann@suse.de>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm=3A_Move_struct_drm=5Fdevice=2Epdev_to_legacy_=28rev2=29?=
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

Series: drm: Move struct drm_device.pdev to legacy (rev2)
URL   : https://patchwork.freedesktop.org/series/84205/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
d5ee9901110c drm/amdgpu: Fix trailing whitespaces
9c9debf682a2 drm/amdgpu: Remove references to struct drm_device.pdev
1be542ae7e18 drm/ast: Remove references to struct drm_device.pdev
fa29f8d7b64e drm/bochs: Remove references to struct drm_device.pdev
52f0841c50db drm/cirrus: Remove references to struct drm_device.pdev
-:13: WARNING:OBSOLETE: drivers/gpu/drm/tiny/cirrus.c is marked as 'obsolete' in the MAINTAINERS hierarchy.  No unnecessary modifications please.

-:16: WARNING:OBSOLETE: drivers/gpu/drm/tiny/cirrus.c is marked as 'obsolete' in the MAINTAINERS hierarchy.  No unnecessary modifications please.

total: 0 errors, 2 warnings, 0 checks, 7 lines checked
d48462ec93e7 drm/gma500: Fix trailing whitespaces
cb67b5b224f9 drm/gma500: Remove references to struct drm_device.pdev
-:90: CHECK:CAMELCASE: Avoid CamelCase: <saveLBB>
#90: FILE: drivers/gpu/drm/gma500/cdv_device.c:269:
+	pci_read_config_byte(pdev, 0xF4, &regs->cdv.saveLBB);

-:130: WARNING:PREFER_DEV_LEVEL: Prefer dev_err(... to dev_printk(KERN_ERR, ...
#130: FILE: drivers/gpu/drm/gma500/cdv_intel_crt.c:281:
+		dev_printk(KERN_ERR, dev->dev, "DDC bus registration failed.\n");

-:152: WARNING:PREFER_DEV_LEVEL: Prefer dev_err(... to dev_printk(KERN_ERR, ...
#152: FILE: drivers/gpu/drm/gma500/cdv_intel_lvds.c:578:
+		dev_printk(KERN_ERR, dev->dev,

-:193: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around dev->mode_config.fb_base
#193: FILE: drivers/gpu/drm/gma500/framebuffer.c:545:
+	pci_read_config_dword(pdev, PSB_BSM, (u32 *)&(dev->mode_config.fb_base));

-:664: WARNING:PREFER_DEV_LEVEL: Prefer dev_err(... to dev_printk(KERN_ERR, ...
#664: FILE: drivers/gpu/drm/gma500/psb_intel_lvds.c:722:
+		dev_printk(KERN_ERR, dev->dev,

-:693: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#693: FILE: drivers/gpu/drm/gma500/tc35876x-dsi-lvds.c:459:
+			dev_warn(dev->dev, "GPIOPWMCTRL was not set to system clock (pwmctrl = 0x%02x)\n", pwmctrl);

total: 0 errors, 4 warnings, 2 checks, 606 lines checked
be8051e49be4 drm/hibmc: Remove references to struct drm_device.pdev
61e0b567bb3e drm/i915: Remove references to struct drm_device.pdev
cdd2c801aa8f drm/i915/gt: Remove references to struct drm_device.pdev
dbc466d7690b drm/i915/gvt: Remove references to struct drm_device.pdev
f53a3b1b9d6f drm/mgag200: Remove references to struct drm_device.pdev
4cbb5886974d drm/nouveau: Remove references to struct drm_device.pdev
e73c9354acd9 drm/qxl: Remove references to struct drm_device.pdev
416d6fc35bdf drm/radeon: Fix trailing whitespaces
15c70afcebfd drm/radeon: Remove references to struct drm_device.pdev
-:28: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'rdev->pdev->device == 0x71C5'
#28: FILE: drivers/gpu/drm/radeon/atombios_encoders.c:2068:
+	if ((rdev->pdev->device == 0x71C5) &&
+	    (rdev->pdev->subsystem_vendor == 0x106b) &&
+	    (rdev->pdev->subsystem_device == 0x0080)) {

-:28: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'rdev->pdev->subsystem_vendor == 0x106b'
#28: FILE: drivers/gpu/drm/radeon/atombios_encoders.c:2068:
+	if ((rdev->pdev->device == 0x71C5) &&
+	    (rdev->pdev->subsystem_vendor == 0x106b) &&
+	    (rdev->pdev->subsystem_device == 0x0080)) {

-:28: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'rdev->pdev->subsystem_device == 0x0080'
#28: FILE: drivers/gpu/drm/radeon/atombios_encoders.c:2068:
+	if ((rdev->pdev->device == 0x71C5) &&
+	    (rdev->pdev->subsystem_vendor == 0x106b) &&
+	    (rdev->pdev->subsystem_device == 0x0080)) {

-:70: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'rdev->pdev->subsystem_device == 0x016c'
#70: FILE: drivers/gpu/drm/radeon/r100.c:2641:
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

-:70: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'rdev->pdev->subsystem_device == 0x016d'
#70: FILE: drivers/gpu/drm/radeon/r100.c:2641:
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

-:70: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'rdev->pdev->subsystem_device == 0x016e'
#70: FILE: drivers/gpu/drm/radeon/r100.c:2641:
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

-:70: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'rdev->pdev->subsystem_device == 0x016f'
#70: FILE: drivers/gpu/drm/radeon/r100.c:2641:
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

-:70: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'rdev->pdev->subsystem_device == 0x0170'
#70: FILE: drivers/gpu/drm/radeon/r100.c:2641:
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

-:70: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'rdev->pdev->subsystem_device == 0x017d'
#70: FILE: drivers/gpu/drm/radeon/r100.c:2641:
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

-:70: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'rdev->pdev->subsystem_device == 0x017e'
#70: FILE: drivers/gpu/drm/radeon/r100.c:2641:
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

-:70: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'rdev->pdev->subsystem_device == 0x0183'
#70: FILE: drivers/gpu/drm/radeon/r100.c:2641:
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

-:70: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'rdev->pdev->subsystem_device == 0x018a'
#70: FILE: drivers/gpu/drm/radeon/r100.c:2641:
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

-:70: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'rdev->pdev->subsystem_device == 0x019a'
#70: FILE: drivers/gpu/drm/radeon/r100.c:2641:
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

-:100: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'rdev' - possible side-effects?
#100: FILE: drivers/gpu/drm/radeon/radeon.h:2626:
+#define ASIC_IS_X2(rdev) ((rdev->pdev->device == 0x9441) || \
+		(rdev->pdev->device == 0x9443) || \
+		(rdev->pdev->device == 0x944B) || \
+		(rdev->pdev->device == 0x9506) || \
+		(rdev->pdev->device == 0x9509) || \
+		(rdev->pdev->device == 0x950F) || \
+		(rdev->pdev->device == 0x689C) || \
+		(rdev->pdev->device == 0x689D))

-:100: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'rdev' may be better as '(rdev)' to avoid precedence issues
#100: FILE: drivers/gpu/drm/radeon/radeon.h:2626:
+#define ASIC_IS_X2(rdev) ((rdev->pdev->device == 0x9441) || \
+		(rdev->pdev->device == 0x9443) || \
+		(rdev->pdev->device == 0x944B) || \
+		(rdev->pdev->device == 0x9506) || \
+		(rdev->pdev->device == 0x9509) || \
+		(rdev->pdev->device == 0x950F) || \
+		(rdev->pdev->device == 0x689C) || \
+		(rdev->pdev->device == 0x689D))

-:123: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'rdev' - possible side-effects?
#123: FILE: drivers/gpu/drm/radeon/radeon.h:2656:
+#define ASIC_IS_LOMBOK(rdev) ((rdev->pdev->device == 0x6849) || \
+			      (rdev->pdev->device == 0x6850) || \
+			      (rdev->pdev->device == 0x6858) || \
+			      (rdev->pdev->device == 0x6859) || \
+			      (rdev->pdev->device == 0x6840) || \
+			      (rdev->pdev->device == 0x6841) || \
+			      (rdev->pdev->device == 0x6842) || \
+			      (rdev->pdev->device == 0x6843))

-:123: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'rdev' may be better as '(rdev)' to avoid precedence issues
#123: FILE: drivers/gpu/drm/radeon/radeon.h:2656:
+#define ASIC_IS_LOMBOK(rdev) ((rdev->pdev->device == 0x6849) || \
+			      (rdev->pdev->device == 0x6850) || \
+			      (rdev->pdev->device == 0x6858) || \
+			      (rdev->pdev->device == 0x6859) || \
+			      (rdev->pdev->device == 0x6840) || \
+			      (rdev->pdev->device == 0x6841) || \
+			      (rdev->pdev->device == 0x6842) || \
+			      (rdev->pdev->device == 0x6843))

-:148: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->device == 0x791e'
#148: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:297:
+	if ((pdev->device == 0x791e) &&
+	    (pdev->subsystem_vendor == 0x1043) &&
+	    (pdev->subsystem_device == 0x826d)) {

-:148: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->subsystem_vendor == 0x1043'
#148: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:297:
+	if ((pdev->device == 0x791e) &&
+	    (pdev->subsystem_vendor == 0x1043) &&
+	    (pdev->subsystem_device == 0x826d)) {

-:148: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->subsystem_device == 0x826d'
#148: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:297:
+	if ((pdev->device == 0x791e) &&
+	    (pdev->subsystem_vendor == 0x1043) &&
+	    (pdev->subsystem_device == 0x826d)) {

-:160: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->device == 0x7941'
#160: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:306:
+	if ((pdev->device == 0x7941) &&
+	    (pdev->subsystem_vendor == 0x1849) &&
+	    (pdev->subsystem_device == 0x7941)) {

-:160: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->subsystem_vendor == 0x1849'
#160: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:306:
+	if ((pdev->device == 0x7941) &&
+	    (pdev->subsystem_vendor == 0x1849) &&
+	    (pdev->subsystem_device == 0x7941)) {

-:160: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->subsystem_device == 0x7941'
#160: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:306:
+	if ((pdev->device == 0x7941) &&
+	    (pdev->subsystem_vendor == 0x1849) &&
+	    (pdev->subsystem_device == 0x7941)) {

-:172: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->device == 0x796e'
#172: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:315:
+	if ((pdev->device == 0x796e) &&
+	    (pdev->subsystem_vendor == 0x1462) &&
+	    (pdev->subsystem_device == 0x7302)) {

-:172: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->subsystem_vendor == 0x1462'
#172: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:315:
+	if ((pdev->device == 0x796e) &&
+	    (pdev->subsystem_vendor == 0x1462) &&
+	    (pdev->subsystem_device == 0x7302)) {

-:172: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->subsystem_device == 0x7302'
#172: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:315:
+	if ((pdev->device == 0x796e) &&
+	    (pdev->subsystem_vendor == 0x1462) &&
+	    (pdev->subsystem_device == 0x7302)) {

-:184: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->device == 0x7941'
#184: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:324:
+	if ((pdev->device == 0x7941) &&
+	    (pdev->subsystem_vendor == 0x147b) &&
+	    (pdev->subsystem_device == 0x2412)) {

-:184: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->subsystem_vendor == 0x147b'
#184: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:324:
+	if ((pdev->device == 0x7941) &&
+	    (pdev->subsystem_vendor == 0x147b) &&
+	    (pdev->subsystem_device == 0x2412)) {

-:184: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->subsystem_device == 0x2412'
#184: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:324:
+	if ((pdev->device == 0x7941) &&
+	    (pdev->subsystem_vendor == 0x147b) &&
+	    (pdev->subsystem_device == 0x2412)) {

-:195: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->device == 0x5653'
#195: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:332:
+	if ((pdev->device == 0x5653) &&
+	    (pdev->subsystem_vendor == 0x1462) &&
+	    (pdev->subsystem_device == 0x0291)) {

-:195: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->subsystem_vendor == 0x1462'
#195: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:332:
+	if ((pdev->device == 0x5653) &&
+	    (pdev->subsystem_vendor == 0x1462) &&
+	    (pdev->subsystem_device == 0x0291)) {

-:195: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->subsystem_device == 0x0291'
#195: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:332:
+	if ((pdev->device == 0x5653) &&
+	    (pdev->subsystem_vendor == 0x1462) &&
+	    (pdev->subsystem_device == 0x0291)) {

-:208: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->device == 0x7146'
#208: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:342:
+	if ((pdev->device == 0x7146) &&
+	    (pdev->subsystem_vendor == 0x17af) &&
+	    (pdev->subsystem_device == 0x2058)) {

-:208: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->subsystem_vendor == 0x17af'
#208: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:342:
+	if ((pdev->device == 0x7146) &&
+	    (pdev->subsystem_vendor == 0x17af) &&
+	    (pdev->subsystem_device == 0x2058)) {

-:208: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->subsystem_device == 0x2058'
#208: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:342:
+	if ((pdev->device == 0x7146) &&
+	    (pdev->subsystem_vendor == 0x17af) &&
+	    (pdev->subsystem_device == 0x2058)) {

-:219: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->device == 0x7142'
#219: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:350:
+	if ((pdev->device == 0x7142) &&
+	    (pdev->subsystem_vendor == 0x1458) &&
+	    (pdev->subsystem_device == 0x2134)) {

-:219: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->subsystem_vendor == 0x1458'
#219: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:350:
+	if ((pdev->device == 0x7142) &&
+	    (pdev->subsystem_vendor == 0x1458) &&
+	    (pdev->subsystem_device == 0x2134)) {

-:219: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->subsystem_device == 0x2134'
#219: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:350:
+	if ((pdev->device == 0x7142) &&
+	    (pdev->subsystem_vendor == 0x1458) &&
+	    (pdev->subsystem_device == 0x2134)) {

-:231: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->device == 0x71C5'
#231: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:359:
+	if ((pdev->device == 0x71C5) &&
+	    (pdev->subsystem_vendor == 0x106b) &&
+	    (pdev->subsystem_device == 0x0080)) {

-:231: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->subsystem_vendor == 0x106b'
#231: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:359:
+	if ((pdev->device == 0x71C5) &&
+	    (pdev->subsystem_vendor == 0x106b) &&
+	    (pdev->subsystem_device == 0x0080)) {

-:231: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->subsystem_device == 0x0080'
#231: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:359:
+	if ((pdev->device == 0x71C5) &&
+	    (pdev->subsystem_vendor == 0x106b) &&
+	    (pdev->subsystem_device == 0x0080)) {

-:244: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->device == 0x9598'
#244: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:377:
+	if ((pdev->device == 0x9598) &&
+	    (pdev->subsystem_vendor == 0x1043) &&
+	    (pdev->subsystem_device == 0x01da)) {

-:244: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->subsystem_vendor == 0x1043'
#244: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:377:
+	if ((pdev->device == 0x9598) &&
+	    (pdev->subsystem_vendor == 0x1043) &&
+	    (pdev->subsystem_device == 0x01da)) {

-:244: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->subsystem_device == 0x01da'
#244: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:377:
+	if ((pdev->device == 0x9598) &&
+	    (pdev->subsystem_vendor == 0x1043) &&
+	    (pdev->subsystem_device == 0x01da)) {

-:256: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->device == 0x9598'
#256: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:386:
+	if ((pdev->device == 0x9598) &&
+	    (pdev->subsystem_vendor == 0x1043) &&
+	    (pdev->subsystem_device == 0x01e4)) {

-:256: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->subsystem_vendor == 0x1043'
#256: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:386:
+	if ((pdev->device == 0x9598) &&
+	    (pdev->subsystem_vendor == 0x1043) &&
+	    (pdev->subsystem_device == 0x01e4)) {

-:256: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->subsystem_device == 0x01e4'
#256: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:386:
+	if ((pdev->device == 0x9598) &&
+	    (pdev->subsystem_vendor == 0x1043) &&
+	    (pdev->subsystem_device == 0x01e4)) {

-:268: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->device == 0x95C5'
#268: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:395:
+	if ((pdev->device == 0x95C5) &&
+	    (pdev->subsystem_vendor == 0x1043) &&
+	    (pdev->subsystem_device == 0x01e2)) {

-:268: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->subsystem_vendor == 0x1043'
#268: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:395:
+	if ((pdev->device == 0x95C5) &&
+	    (pdev->subsystem_vendor == 0x1043) &&
+	    (pdev->subsystem_device == 0x01e2)) {

-:268: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->subsystem_device == 0x01e2'
#268: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:395:
+	if ((pdev->device == 0x95C5) &&
+	    (pdev->subsystem_vendor == 0x1043) &&
+	    (pdev->subsystem_device == 0x01e2)) {

-:281: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->device == 0x95c4'
#281: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:422:
+	if (((pdev->device == 0x95c4) || (pdev->device == 0x9591)) &&
+	    (pdev->subsystem_vendor == 0x1025) &&
+	    (pdev->subsystem_device == 0x013c)) {

-:281: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->device == 0x9591'
#281: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:422:
+	if (((pdev->device == 0x95c4) || (pdev->device == 0x9591)) &&
+	    (pdev->subsystem_vendor == 0x1025) &&
+	    (pdev->subsystem_device == 0x013c)) {

-:281: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->subsystem_vendor == 0x1025'
#281: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:422:
+	if (((pdev->device == 0x95c4) || (pdev->device == 0x9591)) &&
+	    (pdev->subsystem_vendor == 0x1025) &&
+	    (pdev->subsystem_device == 0x013c)) {

-:281: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->subsystem_device == 0x013c'
#281: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:422:
+	if (((pdev->device == 0x95c4) || (pdev->device == 0x9591)) &&
+	    (pdev->subsystem_vendor == 0x1025) &&
+	    (pdev->subsystem_device == 0x013c)) {

-:294: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->device == 0x9498'
#294: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:436:
+	if ((pdev->device == 0x9498) &&
+	    (pdev->subsystem_vendor == 0x1682) &&
+	    (pdev->subsystem_device == 0x2452) &&
 	    (i2c_bus->valid == false) &&
 	    !(supported_device & (ATOM_DEVICE_TV_SUPPORT | ATOM_DEVICE_CV_SUPPORT))) {

-:294: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->subsystem_vendor == 0x1682'
#294: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:436:
+	if ((pdev->device == 0x9498) &&
+	    (pdev->subsystem_vendor == 0x1682) &&
+	    (pdev->subsystem_device == 0x2452) &&
 	    (i2c_bus->valid == false) &&
 	    !(supported_device & (ATOM_DEVICE_TV_SUPPORT | ATOM_DEVICE_CV_SUPPORT))) {

-:294: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->subsystem_device == 0x2452'
#294: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:436:
+	if ((pdev->device == 0x9498) &&
+	    (pdev->subsystem_vendor == 0x1682) &&
+	    (pdev->subsystem_device == 0x2452) &&
 	    (i2c_bus->valid == false) &&
 	    !(supported_device & (ATOM_DEVICE_TV_SUPPORT | ATOM_DEVICE_CV_SUPPORT))) {

-:294: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'i2c_bus->valid == false'
#294: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:436:
+	if ((pdev->device == 0x9498) &&
+	    (pdev->subsystem_vendor == 0x1682) &&
+	    (pdev->subsystem_device == 0x2452) &&
 	    (i2c_bus->valid == false) &&
 	    !(supported_device & (ATOM_DEVICE_TV_SUPPORT | ATOM_DEVICE_CV_SUPPORT))) {

-:309: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->device == 0x9802'
#309: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:446:
+	if (((pdev->device == 0x9802) ||
+	     (pdev->device == 0x9805) ||
+	     (pdev->device == 0x9806)) &&
+	    (pdev->subsystem_vendor == 0x1734) &&
+	    (pdev->subsystem_device == 0x11bd)) {

-:309: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->device == 0x9805'
#309: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:446:
+	if (((pdev->device == 0x9802) ||
+	     (pdev->device == 0x9805) ||
+	     (pdev->device == 0x9806)) &&
+	    (pdev->subsystem_vendor == 0x1734) &&
+	    (pdev->subsystem_device == 0x11bd)) {

-:309: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->device == 0x9806'
#309: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:446:
+	if (((pdev->device == 0x9802) ||
+	     (pdev->device == 0x9805) ||
+	     (pdev->device == 0x9806)) &&
+	    (pdev->subsystem_vendor == 0x1734) &&
+	    (pdev->subsystem_device == 0x11bd)) {

-:309: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->subsystem_vendor == 0x1734'
#309: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:446:
+	if (((pdev->device == 0x9802) ||
+	     (pdev->device == 0x9805) ||
+	     (pdev->device == 0x9806)) &&
+	    (pdev->subsystem_vendor == 0x1734) &&
+	    (pdev->subsystem_device == 0x11bd)) {

-:309: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pdev->subsystem_device == 0x11bd'
#309: FILE: drivers/gpu/drm/radeon/radeon_atombios.c:446:
+	if (((pdev->device == 0x9802) ||
+	     (pdev->device == 0x9805) ||
+	     (pdev->device == 0x9806)) &&
+	    (pdev->subsystem_vendor == 0x1734) &&
+	    (pdev->subsystem_device == 0x11bd)) {

-:326: WARNING:BRACES: braces {} are not necessary for single statement blocks
#326: FILE: drivers/gpu/drm/radeon/radeon_bios.c:531:
+	if (rdev->pdev->device == PCI_DEVICE_ID_ATI_RADEON_QY) {
 		fp2_gen_cntl = RREG32(RADEON_FP2_GEN_CNTL);
 	}

-:335: WARNING:BRACES: braces {} are not necessary for single statement blocks
#335: FILE: drivers/gpu/drm/radeon/radeon_bios.c:568:
+	if (rdev->pdev->device == PCI_DEVICE_ID_ATI_RADEON_QY) {
 		WREG32(RADEON_FP2_GEN_CNTL, (fp2_gen_cntl & ~RADEON_FP2_ON));
 	}

-:344: WARNING:BRACES: braces {} are not necessary for single statement blocks
#344: FILE: drivers/gpu/drm/radeon/radeon_bios.c:586:
+	if (rdev->pdev->device == PCI_DEVICE_ID_ATI_RADEON_QY) {
 		WREG32(RADEON_FP2_GEN_CNTL, fp2_gen_cntl);
 	}

-:359: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'rdev->pdev->device == 0x5159'
#359: FILE: drivers/gpu/drm/radeon/radeon_combios.c:901:
+	if (((rdev->pdev->device == 0x5159) &&
+	    (rdev->pdev->subsystem_vendor == 0x174B) &&
+	    (rdev->pdev->subsystem_device == 0x7c28)) ||
 	/* Radeon 9100 (R200) */
+	   ((rdev->pdev->device == 0x514D) &&
+	    (rdev->pdev->subsystem_vendor == 0x174B) &&
+	    (rdev->pdev->subsystem_device == 0x7149))) {

-:359: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'rdev->pdev->subsystem_vendor == 0x174B'
#359: FILE: drivers/gpu/drm/radeon/radeon_combios.c:901:
+	if (((rdev->pdev->device == 0x5159) &&
+	    (rdev->pdev->subsystem_vendor == 0x174B) &&
+	    (rdev->pdev->subsystem_device == 0x7c28)) ||
 	/* Radeon 9100 (R200) */
+	   ((rdev->pdev->device == 0x514D) &&
+	    (rdev->pdev->subsystem_vendor == 0x174B) &&
+	    (rdev->pdev->subsystem_device == 0x7149))) {

-:359: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'rdev->pdev->subsystem_device == 0x7c28'
#359: FILE: drivers/gpu/drm/radeon/radeon_combios.c:901:
+	if (((rdev->pdev->device == 0x5159) &&
+	    (rdev->pdev->subsystem_vendor == 0x174B) &&
+	    (rdev->pdev->subsystem_device == 0x7c28)) ||
 	/* Radeon 9100 (R200) */
+	   ((rdev->pdev->device == 0x514D) &&
+	    (rdev->pdev->subsystem_vendor == 0x174B) &&
+	    (rdev->pdev->subsystem_device == 0x7149))) {

-:359: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'rdev->pdev->device == 0x514D'
#359: FILE: drivers/gpu/drm/radeon/radeon_combios.c:901:
+	if (((rdev->pdev->device == 0x5159) &&
+	    (rdev->pdev->subsystem_vendor == 0x174B) &&
+	    (rdev->pdev->subsystem_device == 0x7c28)) ||
 	/* Radeon 9100 (R200) */
+	   ((rdev->pdev->device == 0x514D) &&
+	    (rdev->pdev->subsystem_vendor == 0x174B) &&
+	    (rdev->pdev->subsystem_device == 0x7149))) {

-:359: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'rdev->pdev->subsystem_vendor == 0x174B'
#359: FILE: drivers/gpu/drm/radeon/radeon_combios.c:901:
+	if (((rdev->pdev->device == 0x5159) &&
+	    (rdev->pdev->subsystem_vendor == 0x174B) &&
+	    (rdev->pdev->subsystem_device == 0x7c28)) ||
 	/* Radeon 9100 (R200) */
+	   ((rdev->pdev->device == 0x514D) &&
+	    (rdev->pdev->subsystem_vendor == 0x174B) &&
+	    (rdev->pdev->subsystem_device == 0x7149))) {

-:359: CHECK:UNNECESSARY_PARENTHESES: Unneces


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
