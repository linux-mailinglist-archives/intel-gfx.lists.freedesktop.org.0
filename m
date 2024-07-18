Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1807E934A33
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2024 10:45:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C58E10E100;
	Thu, 18 Jul 2024 08:45:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 060F710E5E8;
 Thu, 18 Jul 2024 08:45:21 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Ultrajoiner_basic_fu?=
 =?utf-8?q?nctionality_series_=28rev6=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 18 Jul 2024 08:45:21 -0000
Message-ID: <172129232102.272469.8312744378706276149@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240718081803.3338564-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20240718081803.3338564-1-ankit.k.nautiyal@intel.com>
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

Series: Ultrajoiner basic functionality series (rev6)
URL   : https://patchwork.freedesktop.org/series/133800/
State : warning

== Summary ==

Error: dim checkpatch failed
23508b7b4b40 drm/i915/display: Modify debugfs for joiner to force n pipes
a064b31b51cd drm/i915/display: Use joined pipes in intel_dp_joiner_needs_dsc
efceeb539426 drm/i915/display: Use joined pipes in intel_mode_valid_max_plane_size
8ab3c7e4bacb drm/i915/display: Use joined pipes in dsc helpers for slices, bpp
d850eebf97fe drm/i915: Add some essential functionality for joiners
0e4c2974746f drm/i915: Split current joiner hw state readout
8f9ba2421a37 drm/i915: Add bigjoiner and uncompressed joiner hw readout sanity checks
ace849677f05 drm/i915: Implement hw state readout and checks for ultrajoiner
a9c4aef266c5 drm/i915/display/vdsc: Add ultrajoiner support with DSC
98f9585af083 drm/i915: Compute config and mode valid changes for ultrajoiner
cecd47d85a7f drm/i915: Add new abstraction layer to handle pipe order for different joiners
-:237: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#237: FILE: drivers/gpu/drm/i915/display/intel_display.h:278:
+#define for_each_intel_crtc_in_mask_priority(__dev_priv, intel_crtc, __p, __mask, __priolist) \
+	for_each_pipe(__dev_priv, __p) \
+		for_each_if((__mask) & BIT(__priolist[__p])) \
+			for_each_if(intel_crtc = intel_crtc_for_pipe(__dev_priv, __priolist[__p]))

-:237: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__dev_priv' - possible side-effects?
#237: FILE: drivers/gpu/drm/i915/display/intel_display.h:278:
+#define for_each_intel_crtc_in_mask_priority(__dev_priv, intel_crtc, __p, __mask, __priolist) \
+	for_each_pipe(__dev_priv, __p) \
+		for_each_if((__mask) & BIT(__priolist[__p])) \
+			for_each_if(intel_crtc = intel_crtc_for_pipe(__dev_priv, __priolist[__p]))

-:237: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__p' - possible side-effects?
#237: FILE: drivers/gpu/drm/i915/display/intel_display.h:278:
+#define for_each_intel_crtc_in_mask_priority(__dev_priv, intel_crtc, __p, __mask, __priolist) \
+	for_each_pipe(__dev_priv, __p) \
+		for_each_if((__mask) & BIT(__priolist[__p])) \
+			for_each_if(intel_crtc = intel_crtc_for_pipe(__dev_priv, __priolist[__p]))

-:237: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__priolist' - possible side-effects?
#237: FILE: drivers/gpu/drm/i915/display/intel_display.h:278:
+#define for_each_intel_crtc_in_mask_priority(__dev_priv, intel_crtc, __p, __mask, __priolist) \
+	for_each_pipe(__dev_priv, __p) \
+		for_each_if((__mask) & BIT(__priolist[__p])) \
+			for_each_if(intel_crtc = intel_crtc_for_pipe(__dev_priv, __priolist[__p]))

total: 1 errors, 0 warnings, 3 checks, 257 lines checked
492b5281d865 drm/i915/intel_dp: Add support for forcing ultrajoiner


