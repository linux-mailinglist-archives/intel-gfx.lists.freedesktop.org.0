Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 484239C1E86
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2024 14:51:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8EF610E9AD;
	Fri,  8 Nov 2024 13:51:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA14F10E9AD;
 Fri,  8 Nov 2024 13:51:54 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/dmc=5Fwl=3A?=
 =?utf-8?q?_Fixes_and_enablement_for_Xe3=5FLPD_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gustavo Sousa" <gustavo.sousa@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 08 Nov 2024 13:51:54 -0000
Message-ID: <173107391488.1427063.4583305084585664718@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241108130218.24125-1-gustavo.sousa@intel.com>
In-Reply-To: <20241108130218.24125-1-gustavo.sousa@intel.com>
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

Series: drm/i915/dmc_wl: Fixes and enablement for Xe3_LPD (rev4)
URL   : https://patchwork.freedesktop.org/series/140282/
State : warning

== Summary ==

Error: dim checkpatch failed
9e0a95a12b30 drm/i915/dmc_wl: Use i915_mmio_reg_offset() instead of reg.reg
cfd1589bb25d drm/xe: Mimic i915 behavior for non-sleeping MMIO wait
7e5642f3c3ba drm/i915/dmc_wl: Use non-sleeping variant of MMIO wait
f6a4b34a9897 drm/i915/dmc_wl: Check for non-zero refcount in release work
8d2994405a43 drm/i915/dmc_wl: Get wakelock when disabling dynamic DC states
dd9ef21bd436 drm/i915/dmc_wl: Use sentinel item for range tables
c15d94ffca51 drm/i915/dmc_wl: Extract intel_dmc_wl_reg_in_range()
a52d98d5395f drm/i915/dmc_wl: Rename lnl_wl_range to powered_off_ranges
cf75f8927a52 drm/i915/dmc_wl: Track registers touched by the DMC
c5ea7b11d8be drm/i915/dmc_wl: Allow simpler syntax for single reg in range tables
c1eeb9099f29 drm/i915/dmc_wl: Deal with existing references when disabling
f6f08f3c57e7 drm/i915/dmc_wl: Couple enable/disable with dynamic DC states
9f7970d6f3ae drm/i915/dmc_wl: Add and use HAS_DMC_WAKELOCK()
feb5da326016 drm/i915/dmc_wl: Sanitize enable_dmc_wl according to hardware support
5d63a16a5ac5 drm/i915/xe3lpd: Use DMC wakelock by default
-:35: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#35: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:127:
+intel_display_param_named_unsafe(enable_dmc_wl, int, 0400,
 	"Enable DMC wakelock "

total: 0 errors, 0 warnings, 1 checks, 33 lines checked


