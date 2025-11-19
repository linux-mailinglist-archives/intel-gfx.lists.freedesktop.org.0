Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28812C70F4B
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Nov 2025 21:05:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFD6310E665;
	Wed, 19 Nov 2025 20:05:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g8q52oaa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A122610E665;
 Wed, 19 Nov 2025 20:05:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763582721; x=1795118721;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9WrGiXglMShLVFyieD8KRzz/jb/rYj+RMwCXvBzmZpM=;
 b=g8q52oaaTfCMmkJ6uS8+myDVFboOI3X7YwD+WM1nbbmUyI6PpAoLN8cX
 t9BiIu85OFoxBGF4yn90vI+h76amdrpzsQVNtS29iuvVssic3izLHhEMu
 us4gaNONMX3/A2Q9yjvPT/ttA2rqox+Dfb+V/m05nPp2UGZvH6/DYFN+I
 6zG7SSqLAgxelSCnHse+l4wXjvSrlupr4Hw4bjE3noDj8GDJz7QkxNO1T
 MCOjI6zEHgR/axCbaODR4lDfGdkMXzhUbuzeAI3VLbL+rThLxfEqNJsu9
 zn8NThdbHpfxniEMqtjLNB2DPzzhrtAF5lYFKzC6MxSJQQ0mMpfVZJF/4 g==;
X-CSE-ConnectionGUID: Y5MBkxRpTkOUCv0e7u9Xrg==
X-CSE-MsgGUID: wT2pM1GqTi+p2K8UZLTBTA==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="69506825"
X-IronPort-AV: E=Sophos;i="6.19,316,1754982000"; d="scan'208";a="69506825"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 12:05:19 -0800
X-CSE-ConnectionGUID: yyv9H7QyTm2+/HsnoC0zrw==
X-CSE-MsgGUID: COv1ZQmTR4ei1BZmNMDwOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,316,1754982000"; d="scan'208";a="221803155"
Received: from lucas-s2600cw.jf.intel.com ([10.54.55.69])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 12:05:19 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Subject: [PATCH] drm/i915/display: Stop touching vga on post enable
Date: Wed, 19 Nov 2025 12:04:38 -0800
Message-ID: <20251119-ioport-v1-1-ec43f1e12c49@intel.com>
X-Mailer: git-send-email 2.51.2
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Change-ID: 20251118-ioport-e244c320b59e
X-Mailer: b4 0.15-dev-50d74
Content-Transfer-Encoding: quoted-printable
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Touching VGA_MIS_W goes back to commit f9dcb0dfee98 ("drm/i915: touch=0D
VGA MSR after we enable the power well"). That case doesn't seem to be=0D
reproduced anymore, even considering that the unclaimed accesses are now=0D
printed with debug log level. Also note that the original issue was=0D
reproduced with vgacon, but that is not used anymore on x86 when booted=0D
with EFI.=0D
=0D
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>=0D
---=0D
WIP to drop the VGA accesses and allow xe driver to be used with=0D
non-x86 platforms. There are multiple patches floating around, some=0D
disabling code for non-x86, some disabling for !CONFIG_VGA_CONSOLE.=0D
=0D
For this v1, I think the entire workaround can be removed. Sending it=0D
for CI while I look into the other cases.=0D
=0D
Get some initial tests running to see if it breaks the world before=0D
ICL, particularly before gen7 where unclaimed accesses for non-display-engi=
ne=0D
registers worked, systems booted without EFI, etc. If this is not an=0D
issue anymore, a patch completely dropping the has_vga could follow=0D
since this is the only user.=0D
---=0D
 .../gpu/drm/i915/display/intel_display_power_well.c   |  3 ---=0D
 drivers/gpu/drm/i915/display/intel_vga.c              | 19 ---------------=
----=0D
 2 files changed, 22 deletions(-)=0D
=0D
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/driv=
ers/gpu/drm/i915/display/intel_display_power_well.c=0D
index f4f7e73acc874..01213f7d1c9ef 100644=0D
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c=0D
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c=0D
@@ -205,9 +205,6 @@ int intel_power_well_refcount(struct i915_power_well *p=
ower_well)=0D
 static void hsw_power_well_post_enable(struct intel_display *display,=0D
 				       u8 irq_pipe_mask, bool has_vga)=0D
 {=0D
-	if (has_vga)=0D
-		intel_vga_reset_io_mem(display);=0D
-=0D
 	if (irq_pipe_mask)=0D
 		gen8_irq_power_well_post_enable(display, irq_pipe_mask);=0D
 }=0D
diff --git a/drivers/gpu/drm/i915/display/intel_vga.c b/drivers/gpu/drm/i91=
5/display/intel_vga.c=0D
index 6e125564db34c..97d4c06c2e2fd 100644=0D
--- a/drivers/gpu/drm/i915/display/intel_vga.c=0D
+++ b/drivers/gpu/drm/i915/display/intel_vga.c=0D
@@ -76,25 +76,6 @@ void intel_vga_disable(struct intel_display *display)=0D
 	intel_de_posting_read(display, vga_reg);=0D
 }=0D
 =0D
-void intel_vga_reset_io_mem(struct intel_display *display)=0D
-{=0D
-	struct pci_dev *pdev =3D to_pci_dev(display->drm->dev);=0D
-=0D
-	/*=0D
-	 * After we re-enable the power well, if we touch VGA register 0x3d5=0D
-	 * we'll get unclaimed register interrupts. This stops after we write=0D
-	 * anything to the VGA MSR register. The vgacon module uses this=0D
-	 * register all the time, so if we unbind our driver and, as a=0D
-	 * consequence, bind vgacon, we'll get stuck in an infinite loop at=0D
-	 * console_unlock(). So make here we touch the VGA MSR register, making=0D
-	 * sure vgacon can keep working normally without triggering interrupts=0D
-	 * and error messages.=0D
-	 */=0D
-	vga_get_uninterruptible(pdev, VGA_RSRC_LEGACY_IO);=0D
-	outb(inb(VGA_MIS_R), VGA_MIS_W);=0D
-	vga_put(pdev, VGA_RSRC_LEGACY_IO);=0D
-}=0D
-=0D
 int intel_vga_register(struct intel_display *display)=0D
 {=0D
 =0D
=0D
=0D
=0D
