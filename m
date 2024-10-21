Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47B809A938D
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 00:54:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A568E10E09F;
	Mon, 21 Oct 2024 22:54:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B79E110E09F;
 Mon, 21 Oct 2024 22:54:17 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/dmc=5Fwl=3A?=
 =?utf-8?q?_Fixes_and_enablement_for_Xe3=5FLPD?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gustavo Sousa" <gustavo.sousa@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 21 Oct 2024 22:54:17 -0000
Message-ID: <172955125774.1306617.10327348638839112051@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241021222744.294371-1-gustavo.sousa@intel.com>
In-Reply-To: <20241021222744.294371-1-gustavo.sousa@intel.com>
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

Series: drm/i915/dmc_wl: Fixes and enablement for Xe3_LPD
URL   : https://patchwork.freedesktop.org/series/140282/
State : warning

== Summary ==

Error: dim checkpatch failed
22a0e1dad66b drm/xe: Mimic i915 behavior for non-sleeping MMIO wait
21b66390096d drm/i915/dmc_wl: Use non-sleeping variant of MMIO wait
-:33: WARNING:LONG_LINE: line length of 134 exceeds 100 columns
#33: FILE: drivers/gpu/drm/i915/display/intel_de.h:133:
+#define __intel_de_wait_for_register_atomic_nowl(p,...) ____intel_de_wait_for_register_atomic_nowl(__to_intel_display(p), __VA_ARGS__)

-:33: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#33: FILE: drivers/gpu/drm/i915/display/intel_de.h:133:
+}
+#define __intel_de_wait_for_register_atomic_nowl(p,...) ____intel_de_wait_for_register_atomic_nowl(__to_intel_display(p), __VA_ARGS__)

-:33: ERROR:SPACING: space required after that ',' (ctx:VxV)
#33: FILE: drivers/gpu/drm/i915/display/intel_de.h:133:
+#define __intel_de_wait_for_register_atomic_nowl(p,...) ____intel_de_wait_for_register_atomic_nowl(__to_intel_display(p), __VA_ARGS__)
                                                   ^

total: 1 errors, 1 warnings, 1 checks, 55 lines checked
87054766f121 drm/i915/dmc_wl: Check for non-zero refcount in release work
504337ac549f drm/i915/dmc_wl: Get wakelock when disabling dynamic DC states
6f7e7bfc4fc1 drm/i915/dmc_wl: Use sentinel item for range tables
ed1087ec8d7b drm/i915/dmc_wl: Extract intel_dmc_wl_addr_in_range()
a9d0463d8f1a drm/i915/dmc_wl: Check ranges specific to DC states
f843b90ccfa9 drm/i915/dmc_wl: Allow simpler syntax for single reg in range tables
1b4fb02d409c drm/i915/dmc_wl: Deal with existing references when disabling
e54a65822ae0 drm/i915/dmc_wl: Couple enable/disable with dynamic DC states
ad28b8ed1d2d drm/i915/dmc_wl: Add and use HAS_DMC_WAKELOCK()
-:25: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#25: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:131:
+#define HAS_DMC_WAKELOCK(i915)		(HAS_DMC(i915) && DISPLAY_VER(i915) >= 20)

total: 0 errors, 0 warnings, 1 checks, 37 lines checked
c90342162700 drm/i915/dmc_wl: Sanitize enable_dmc_wl according to hardware support
aef567f023a4 drm/i915/xe3lpd: Use DMC wakelock by default
-:31: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#31: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:127:
+intel_display_param_named_unsafe(enable_dmc_wl, int, 0400,
 	"Enable DMC wakelock "

total: 0 errors, 0 warnings, 1 checks, 32 lines checked


