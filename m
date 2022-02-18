Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 529BA4BC01C
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Feb 2022 20:09:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FE4810E170;
	Fri, 18 Feb 2022 19:09:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E62D610E170;
 Fri, 18 Feb 2022 19:09:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E6A7FAA0ED;
 Fri, 18 Feb 2022 19:09:30 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ramalingam C" <ramalingam.c@intel.com>
Date: Fri, 18 Feb 2022 19:09:30 -0000
Message-ID: <164521137094.25450.11479631707703958364@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220218184752.7524-1-ramalingam.c@intel.com>
In-Reply-To: <20220218184752.7524-1-ramalingam.c@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Enable_DG2?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915: Enable DG2
URL   : https://patchwork.freedesktop.org/series/100419/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
ecf3a6aabe11 drm/i915/dg2: Define GuC firmware version for DG2
9d7f9f8a3467 drm/i915: Fix for PHY_MISC_TC1 offset
-:49: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'port' - possible side-effects?
#49: FILE: drivers/gpu/drm/i915/i915_reg.h:9366:
+#define DG2_PHY_MISC(port)	((port) == PHY_E ? _MMIO(_DG2_PHY_MISC_TC1) : \
+				 ICL_PHY_MISC(port))

total: 0 errors, 0 warnings, 1 checks, 20 lines checked
fa0f06c942c8 drm/i915/dg2: Drop 38.4 MHz MPLLB tables
fa9afbc030e6 drm/i915/dg2: Enable 5th port
b8a7971164dc drm/i915: add needs_compact_pt flag
34bad68c9936 drm/i915: enforce min GTT alignment for discrete cards
-:304: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#304: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:458:
+						if (offset < hole_start + aligned_size)

-:316: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#316: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:482:
+						if (offset + aligned_size > hole_end)

-:334: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#334: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:498:
+						if (offset < hole_start + aligned_size)

-:346: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#346: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:521:
+						if (offset + aligned_size > hole_end)

-:364: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#364: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:537:
+						if (offset < hole_start + aligned_size)

-:376: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#376: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:561:
+						if (offset + aligned_size > hole_end)

-:394: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#394: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:577:
+						if (offset < hole_start + aligned_size)

-:406: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#406: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:600:
+						if (offset + aligned_size > hole_end)

total: 0 errors, 8 warnings, 0 checks, 438 lines checked
2a36c620cd9c drm/i915: support 64K GTT pages for discrete cards
fcbf93599a67 drm/i915: add gtt misalignment test
c23f3ce9db9e drm/i915/gtt: allow overriding the pt alignment
720fb0c9e82d drm/i915/gtt: add xehpsdv_ppgtt_insert_entry
4f1f68863bfa drm/i915/migrate: add acceleration support for DG2
ce72b8e0634a drm/i915/uapi: document behaviour for DG2 64K support
eb2aa0aafb5a drm/i915/xehpsdv: Add has_flat_ccs to device info
f94b70011b2d drm/i915/lmem: Enable lmem for platforms with Flat CCS
96e999374594 drm/i915/gt: Clear compress metadata for Xe_HP platforms


