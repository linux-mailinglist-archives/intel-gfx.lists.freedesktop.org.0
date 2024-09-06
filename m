Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A5FF96F64E
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2024 16:08:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C1E710E089;
	Fri,  6 Sep 2024 14:08:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A12C810E07D;
 Fri,  6 Sep 2024 14:08:36 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Ultrajoiner_basic_fu?=
 =?utf-8?q?nctionality_series_=28rev7=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 06 Sep 2024 14:08:36 -0000
Message-ID: <172563171665.954738.10663799464812518604@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240906125807.3960642-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20240906125807.3960642-1-ankit.k.nautiyal@intel.com>
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

Series: Ultrajoiner basic functionality series (rev7)
URL   : https://patchwork.freedesktop.org/series/133800/
State : warning

== Summary ==

Error: dim checkpatch failed
f0319f26329c drm/i915/display: Modify debugfs for joiner to force n pipes
c990cc40b2c9 drm/i915/display: Use joined pipes in intel_dp_joiner_needs_dsc
6a7298b1549d drm/i915/display: Use joined pipes in intel_mode_valid_max_plane_size
997453c80592 drm/i915/display: Use joined pipes in dsc helpers for slices, bpp
185c7a362580 drm/i915: Add some essential functionality for joiners
e589900b4e56 drm/i915: Split current joiner hw state readout
dbc40a7ee871 drm/i915: Add bigjoiner and uncompressed joiner hw readout sanity checks
aff7471b9657 drm/i915: Implement hw state readout and checks for ultrajoiner
aa050e4a1a58 drm/i915/display: Add helpers to check for ultrajoiner primary
13e5f0c73c6e drm/i915/display/vdsc: Add ultrajoiner support with DSC
87c324295490 drm/i915: Add new abstraction layer to handle pipe order for different joiners
-:231: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#231: FILE: drivers/gpu/drm/i915/display/intel_display.h:278:
+#define for_each_intel_crtc_in_mask_priority(__dev_priv, intel_crtc, __p, __mask, __priolist) \
+	for_each_pipe(__dev_priv, __p) \
+		for_each_if((__mask) & BIT(__priolist[__p])) \
+			for_each_if(intel_crtc = intel_crtc_for_pipe(to_intel_display(&__dev_priv->drm), __priolist[__p]))

-:231: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__dev_priv' - possible side-effects?
#231: FILE: drivers/gpu/drm/i915/display/intel_display.h:278:
+#define for_each_intel_crtc_in_mask_priority(__dev_priv, intel_crtc, __p, __mask, __priolist) \
+	for_each_pipe(__dev_priv, __p) \
+		for_each_if((__mask) & BIT(__priolist[__p])) \
+			for_each_if(intel_crtc = intel_crtc_for_pipe(to_intel_display(&__dev_priv->drm), __priolist[__p]))

-:231: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__p' - possible side-effects?
#231: FILE: drivers/gpu/drm/i915/display/intel_display.h:278:
+#define for_each_intel_crtc_in_mask_priority(__dev_priv, intel_crtc, __p, __mask, __priolist) \
+	for_each_pipe(__dev_priv, __p) \
+		for_each_if((__mask) & BIT(__priolist[__p])) \
+			for_each_if(intel_crtc = intel_crtc_for_pipe(to_intel_display(&__dev_priv->drm), __priolist[__p]))

-:231: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__priolist' - possible side-effects?
#231: FILE: drivers/gpu/drm/i915/display/intel_display.h:278:
+#define for_each_intel_crtc_in_mask_priority(__dev_priv, intel_crtc, __p, __mask, __priolist) \
+	for_each_pipe(__dev_priv, __p) \
+		for_each_if((__mask) & BIT(__priolist[__p])) \
+			for_each_if(intel_crtc = intel_crtc_for_pipe(to_intel_display(&__dev_priv->drm), __priolist[__p]))

-:234: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#234: FILE: drivers/gpu/drm/i915/display/intel_display.h:281:
+			for_each_if(intel_crtc = intel_crtc_for_pipe(to_intel_display(&__dev_priv->drm), __priolist[__p]))

total: 1 errors, 1 warnings, 3 checks, 250 lines checked
408e3cb74a24 drm/i915: Compute config and mode valid changes for ultrajoiner
12981c443053 drm/i915/display: Consider ultrajoiner for computing maxdotclock
a4c718aa641a drm/i915/intel_dp: Add support for forcing ultrajoiner


