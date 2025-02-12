Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 211FEA31A20
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 01:04:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7C1D10E776;
	Wed, 12 Feb 2025 00:04:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5084E10E776;
 Wed, 12 Feb 2025 00:04:03 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_some_GT_?=
 =?utf-8?q?register_fixes_and_cleanups?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 12 Feb 2025 00:04:03 -0000
Message-ID: <173931864332.1077039.10842233651895491947@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250211231941.22769-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20250211231941.22769-1-ville.syrjala@linux.intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915: some GT register fixes and cleanups
URL   : https://patchwork.freedesktop.org/series/144683/
State : warning

== Summary ==

Error: dim checkpatch failed
db3d83fcc51c drm/i915: Bump RING_FAULT engine ID bits
638d9ba28764 drm/i915: Relocate RING_FAULT bits
20b5bbfc36c8 drm/i915: Use REG_BIT() & co. for ring fault registers
3f2886301c3f drm/i915: Document which RING_FAULT bits apply to which platforms
0a0b18802705 drm/i915: Introduce RING_FAULT_VADDR_MASK
8fc521817a8d drm/i915: Extract gen8_report_fault()
4def0c3d64cd drm/i915: Use REG_BIT() & co. for CHV EU/slice fuse bits
-:72: WARNING:LONG_LINE: line length of 113 exceeds 100 columns
#72: FILE: drivers/gpu/drm/i915/gt/intel_sseu.c:339:
+			REG_FIELD_GET(CHV_FGT_EU_DIS_SS0_R1_MASK, fuse) << hweight32(CHV_FGT_EU_DIS_SS0_R0_MASK);

-:85: WARNING:LONG_LINE: line length of 113 exceeds 100 columns
#85: FILE: drivers/gpu/drm/i915/gt/intel_sseu.c:348:
+			REG_FIELD_GET(CHV_FGT_EU_DIS_SS1_R1_MASK, fuse) << hweight32(CHV_FGT_EU_DIS_SS1_R0_MASK);

total: 0 errors, 2 warnings, 0 checks, 63 lines checked
b7f98d3da435 drm/i915: Reoder CHV EU/slice fuse bits
b8ad41efea8d drm/i915: Use REG_BIT() & co. for BDW+ EU/slice fuse bits
-:42: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#42: FILE: drivers/gpu/drm/i915/gt/intel_gt_mcr.c:125:
+						      intel_uncore_read(gt->uncore, GEN10_MIRROR_FUSE3));

-:59: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#59: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:519:
+#define   GEN10_PGCTL_VALID_SS_MASK(slice)	((slice) == 0 ? REG_GENMASK(6, 0) : REG_GENMASK(4, 0))

total: 0 errors, 2 warnings, 0 checks, 223 lines checked
de513234c0a7 drm/i915: Reoder BDW+ EU/slice fuse bits
4f61d80fda59 drm/i915: Use REG_BIT() & co. for gen9+ timestamp freq registers
-:71: WARNING:LONG_LINE: line length of 115 exceeds 100 columns
#71: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:34:
+#define   GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_19_2_MHZ	REG_FIELD_PREP(GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_MASK, 0)

-:72: WARNING:LONG_LINE: line length of 115 exceeds 100 columns
#72: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:35:
+#define   GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_24_MHZ	REG_FIELD_PREP(GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_MASK, 1)

-:74: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#74: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:37:
+#define   GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_24_MHZ	REG_FIELD_PREP(GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_MASK, 0)

-:75: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#75: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:38:
+#define   GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_19_2_MHZ	REG_FIELD_PREP(GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_MASK, 1)

-:76: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#76: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:39:
+#define   GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_38_4_MHZ	REG_FIELD_PREP(GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_MASK, 2)

-:77: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#77: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:40:
+#define   GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_25_MHZ	REG_FIELD_PREP(GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_MASK, 3)

total: 0 errors, 6 warnings, 0 checks, 87 lines checked
8d385d70f322 drm/i915: Reoder gen9+ timestamp freq register bits
-:31: WARNING:LONG_LINE: line length of 115 exceeds 100 columns
#31: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:39:
+#define   GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_19_2_MHZ	REG_FIELD_PREP(GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_MASK, 0)

-:32: WARNING:LONG_LINE: line length of 115 exceeds 100 columns
#32: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:40:
+#define   GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_24_MHZ	REG_FIELD_PREP(GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_MASK, 1)

total: 0 errors, 2 warnings, 0 checks, 28 lines checked


