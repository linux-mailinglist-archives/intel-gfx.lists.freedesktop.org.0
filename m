Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C104988C8B
	for <lists+intel-gfx@lfdr.de>; Sat, 28 Sep 2024 00:44:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 023C310E239;
	Fri, 27 Sep 2024 22:44:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44F7210E239;
 Fri, 27 Sep 2024 22:44:00 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Ultrajoiner_basic_fu?=
 =?utf-8?q?nctionality_series_=28rev13=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Sep 2024 22:44:00 -0000
Message-ID: <172747704027.1113373.12891841367948292224@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240927152241.4014909-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20240927152241.4014909-1-ankit.k.nautiyal@intel.com>
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

Series: Ultrajoiner basic functionality series (rev13)
URL   : https://patchwork.freedesktop.org/series/133800/
State : warning

== Summary ==

Error: dim checkpatch failed
1143a007bfc7 drm/i915/display_device: Add Check HAS_DSC for bigjoiner
-:27: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#27: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:121:
+#define HAS_BIGJOINER(i915)		(DISPLAY_VER(i915) >= 11 && HAS_DSC(i915))

total: 0 errors, 0 warnings, 1 checks, 8 lines checked
365097693725 drm/i915/display_debugfs: Allow force joiner only if supported
0e868d6fb4fb drm/i915/display: Modify debugfs for joiner to force n pipes
394145f0e6fd drm/i915/dp: Add helper to compute num pipes required
a763ae08fb11 drm/i915: Split current joiner hw state readout
0dac093ad707 drm/i915: Add bigjoiner and uncompressed joiner hw readout sanity checks
ea5facb90bf1 drm/i915/display: Add macro HAS_ULTRAJOINER()
-:26: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#26: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:157:
+#define HAS_ULTRAJOINER(i915)		((DISPLAY_VER(i915) >= 20 || \
+					  (IS_DGFX(i915) && DISPLAY_VER(i915) == 14)) && \
+					 HAS_DSC(i915))

total: 0 errors, 0 warnings, 1 checks, 9 lines checked
267fd5b22c22 drm/i915/display: Refactor enable_joiner_pipes
d0112bb408e2 drm/i915: Implement hw state readout and checks for ultrajoiner
c9d81e07260f drm/i915/display/vdsc: Add ultrajoiner support with DSC
8e26f2728bf2 drm/i915/dp: Refactor joiner max_bpp calculations into separate functions
519f26e1526f drm/i915/dp: Use num_joined_pipes in bigjoiner_bw_max_bpp
476ae734858b drm/i915/dp: Modify compressed bpp limitations for ultrajoiner
-:19: WARNING:BAD_SIGN_OFF: Duplicate signature
#19: 
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

-:20: WARNING:BAD_SIGN_OFF: Duplicate signature
#20: 
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

total: 0 errors, 2 warnings, 0 checks, 36 lines checked
0f59540de2d3 drm/i915/dp: Simplify helper to get slice count with joiner
85ccf72119ea drm/i915: Compute config and mode valid changes for ultrajoiner
055088ce3f4d drm/i915/display: Consider ultrajoiner for computing maxdotclock
82d5745c9d53 drm/i915/intel_dp: Add support for forcing ultrajoiner


