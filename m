Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE73C9BF92D
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 23:24:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 242F510E0E7;
	Wed,  6 Nov 2024 22:24:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74C6B10E0E7;
 Wed,  6 Nov 2024 22:24:11 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/dmc=5Fwl=3A?=
 =?utf-8?q?_Fixes_and_enablement_for_Xe3=5FLPD_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gustavo Sousa" <gustavo.sousa@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 06 Nov 2024 22:24:11 -0000
Message-ID: <173093185147.1419307.3090407431497180446@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241106215231.103474-1-gustavo.sousa@intel.com>
In-Reply-To: <20241106215231.103474-1-gustavo.sousa@intel.com>
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

Series: drm/i915/dmc_wl: Fixes and enablement for Xe3_LPD (rev2)
URL   : https://patchwork.freedesktop.org/series/140282/
State : warning

== Summary ==

Error: dim checkpatch failed
d03be180852b drm/i915/dmc_wl: Use i915_mmio_reg_offset() instead of reg.reg
8781d6c39354 drm/xe: Mimic i915 behavior for non-sleeping MMIO wait
b6314b0f43e9 drm/i915/dmc_wl: Use non-sleeping variant of MMIO wait
bb441af11eb3 drm/i915/dmc_wl: Check for non-zero refcount in release work
920986e9ecca drm/i915/dmc_wl: Get wakelock when disabling dynamic DC states
05d898edb8ce drm/i915/dmc_wl: Use sentinel item for range tables
3823a2d2f1d9 drm/i915/dmc_wl: Extract intel_dmc_wl_reg_in_range()
d0d734f8a182 drm/i915/dmc_wl: Rename lnl_wl_range to powered_off_ranges
7e995f91539c drm/i915/dmc_wl: Track registers touched by the DMC
77d8de7056d0 drm/i915/dmc_wl: Allow simpler syntax for single reg in range tables
c3e92a65bc76 drm/i915/dmc_wl: Deal with existing references when disabling
611aa98f714c drm/i915/dmc_wl: Couple enable/disable with dynamic DC states
199b4466ae10 drm/i915/dmc_wl: Add and use HAS_DMC_WAKELOCK()
b7e7c1ccf706 drm/i915/dmc_wl: Init only after we have runtime device info
2719d94e6e7f drm/i915/dmc_wl: Use HAS_DMC() in HAS_DMC_WAKELOCK()
-:22: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#22: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:150:
+#define HAS_DMC_WAKELOCK(i915)		(HAS_DMC(i915) && DISPLAY_VER(i915) >= 20)

total: 0 errors, 0 warnings, 1 checks, 8 lines checked
ea92bac5bd9a drm/i915/dmc_wl: Sanitize enable_dmc_wl according to hardware support
e886d8c2addc drm/i915/xe3lpd: Use DMC wakelock by default
-:35: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#35: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:127:
+intel_display_param_named_unsafe(enable_dmc_wl, int, 0400,
 	"Enable DMC wakelock "

total: 0 errors, 0 warnings, 1 checks, 33 lines checked


