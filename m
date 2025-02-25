Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 749D7A431C1
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2025 01:12:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9D1910E504;
	Tue, 25 Feb 2025 00:12:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8615E10E504;
 Tue, 25 Feb 2025 00:12:04 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_some_GT_?=
 =?utf-8?q?register_fixes_and_cleanups_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Feb 2025 00:12:04 -0000
Message-ID: <174044232454.1772369.17217901814993036068@b555e5b46a47>
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

Series: drm/i915: some GT register fixes and cleanups (rev3)
URL   : https://patchwork.freedesktop.org/series/144683/
State : warning

== Summary ==

Error: dim checkpatch failed
067f8029ba78 drm/i915: Bump RING_FAULT engine ID bits
97af3013b359 drm/i915: Relocate RING_FAULT bits
63b71db24fe6 drm/i915: Use REG_BIT() & co. for ring fault registers
d1ae0ace5b0f drm/i915: Document which RING_FAULT bits apply to which platforms
508078e91db8 drm/i915: Introduce RING_FAULT_VADDR_MASK
99155f3b698a drm/i915: Extract gen8_report_fault()
f9f45ccda144 drm/i915: Use REG_BIT() & co. for CHV EU/slice fuse bits
-:73: WARNING:LONG_LINE: line length of 113 exceeds 100 columns
#73: FILE: drivers/gpu/drm/i915/gt/intel_sseu.c:339:
+			REG_FIELD_GET(CHV_FGT_EU_DIS_SS0_R1_MASK, fuse) << hweight32(CHV_FGT_EU_DIS_SS0_R0_MASK);

-:86: WARNING:LONG_LINE: line length of 113 exceeds 100 columns
#86: FILE: drivers/gpu/drm/i915/gt/intel_sseu.c:348:
+			REG_FIELD_GET(CHV_FGT_EU_DIS_SS1_R1_MASK, fuse) << hweight32(CHV_FGT_EU_DIS_SS1_R0_MASK);

total: 0 errors, 2 warnings, 0 checks, 63 lines checked
dfd190e63803 drm/i915: Reoder CHV EU/slice fuse bits
87c339b22681 drm/i915: Use REG_BIT() & co. for BDW+ EU/slice fuse bits
-:43: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#43: FILE: drivers/gpu/drm/i915/gt/intel_gt_mcr.c:125:
+						      intel_uncore_read(gt->uncore, GEN10_MIRROR_FUSE3));

-:60: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#60: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:522:
+#define   GEN10_PGCTL_VALID_SS_MASK(slice)	((slice) == 0 ? REG_GENMASK(6, 0) : REG_GENMASK(4, 0))

total: 0 errors, 2 warnings, 0 checks, 223 lines checked
7816fcabc2e1 drm/i915: Reoder BDW+ EU/slice fuse bits
ec39f6499741 drm/i915: Use REG_BIT() & co. for gen9+ timestamp freq registers
-:72: WARNING:LONG_LINE: line length of 115 exceeds 100 columns
#72: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:34:
+#define   GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_19_2_MHZ	REG_FIELD_PREP(GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_MASK, 0)

-:73: WARNING:LONG_LINE: line length of 115 exceeds 100 columns
#73: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:35:
+#define   GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_24_MHZ	REG_FIELD_PREP(GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_MASK, 1)

-:75: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#75: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:37:
+#define   GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_24_MHZ	REG_FIELD_PREP(GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_MASK, 0)

-:76: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#76: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:38:
+#define   GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_19_2_MHZ	REG_FIELD_PREP(GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_MASK, 1)

-:77: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#77: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:39:
+#define   GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_38_4_MHZ	REG_FIELD_PREP(GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_MASK, 2)

-:78: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#78: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:40:
+#define   GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_25_MHZ	REG_FIELD_PREP(GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_MASK, 3)

total: 0 errors, 6 warnings, 0 checks, 87 lines checked
eba59250e005 drm/i915: Reoder gen9+ timestamp freq register bits
-:32: WARNING:LONG_LINE: line length of 115 exceeds 100 columns
#32: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:39:
+#define   GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_19_2_MHZ	REG_FIELD_PREP(GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_MASK, 0)

-:33: WARNING:LONG_LINE: line length of 115 exceeds 100 columns
#33: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:40:
+#define   GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_24_MHZ	REG_FIELD_PREP(GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_MASK, 1)

total: 0 errors, 2 warnings, 0 checks, 28 lines checked


