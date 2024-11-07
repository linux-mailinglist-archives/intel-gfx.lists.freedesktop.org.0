Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B2039C0E3E
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 20:04:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE28B10E8B2;
	Thu,  7 Nov 2024 19:04:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17F0310E8B2;
 Thu,  7 Nov 2024 19:04:41 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/dmc=5Fwl=3A?=
 =?utf-8?q?_Fixes_and_enablement_for_Xe3=5FLPD_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gustavo Sousa" <gustavo.sousa@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 07 Nov 2024 19:04:41 -0000
Message-ID: <173100628109.1423683.18041353676315064226@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241107182921.102193-1-gustavo.sousa@intel.com>
In-Reply-To: <20241107182921.102193-1-gustavo.sousa@intel.com>
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

Series: drm/i915/dmc_wl: Fixes and enablement for Xe3_LPD (rev3)
URL   : https://patchwork.freedesktop.org/series/140282/
State : warning

== Summary ==

Error: dim checkpatch failed
4c9de302bb17 drm/i915/dmc_wl: Use i915_mmio_reg_offset() instead of reg.reg
f4744774f2dd drm/xe: Mimic i915 behavior for non-sleeping MMIO wait
152c352c3052 drm/i915/dmc_wl: Use non-sleeping variant of MMIO wait
08203e372a4e drm/i915/dmc_wl: Check for non-zero refcount in release work
4e05c3f4f8e6 drm/i915/dmc_wl: Get wakelock when disabling dynamic DC states
03c502f9f099 drm/i915/dmc_wl: Use sentinel item for range tables
666a5f85209b drm/i915/dmc_wl: Extract intel_dmc_wl_reg_in_range()
83a7ec662c01 drm/i915/dmc_wl: Rename lnl_wl_range to powered_off_ranges
054005205292 drm/i915/dmc_wl: Track registers touched by the DMC
2d08135f2c59 drm/i915/dmc_wl: Allow simpler syntax for single reg in range tables
12ed409fc4b4 drm/i915/dmc_wl: Deal with existing references when disabling
dcd602746a8e drm/i915/dmc_wl: Couple enable/disable with dynamic DC states
8ab2a0e3f623 drm/i915/dmc_wl: Add and use HAS_DMC_WAKELOCK()
36be32597df6 drm/i915/dmc_wl: Init only after we have runtime device info
6c70b661050e drm/i915/dmc_wl: Use HAS_DMC() in HAS_DMC_WAKELOCK()
-:23: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#23: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:150:
+#define HAS_DMC_WAKELOCK(i915)		(HAS_DMC(i915) && DISPLAY_VER(i915) >= 20)

total: 0 errors, 0 warnings, 1 checks, 8 lines checked
d823eb5b0971 drm/i915/dmc_wl: Sanitize enable_dmc_wl according to hardware support
beaa072150ed drm/i915/dmc_wl: Do nothing until initialized
d76b80d77dc4 drm/i915/xe3lpd: Use DMC wakelock by default
-:35: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#35: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:127:
+intel_display_param_named_unsafe(enable_dmc_wl, int, 0400,
 	"Enable DMC wakelock "

total: 0 errors, 0 warnings, 1 checks, 33 lines checked


