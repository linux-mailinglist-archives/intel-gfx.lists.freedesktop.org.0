Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 607EB89E1DF
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Apr 2024 19:52:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5CA7112E88;
	Tue,  9 Apr 2024 17:52:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56178112E94;
 Tue,  9 Apr 2024 17:52:31 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_Bigjoine?=
 =?utf-8?q?r_modeset_sequence_redesign_and_MST_support_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 09 Apr 2024 17:52:31 -0000
Message-ID: <171268515135.1300822.13188653210879238159@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240409163502.29633-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240409163502.29633-1-ville.syrjala@linux.intel.com>
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

Series: drm/i915: Bigjoiner modeset sequence redesign and MST support (rev4)
URL   : https://patchwork.freedesktop.org/series/131797/
State : warning

== Summary ==

Error: dim checkpatch failed
23cbdc3c0fd4 drm/i915: Extract intel_ddi_post_disable_hdmi_or_sst()
05502b938cf4 drm/i915: Utilize intel_crtc_joined_pipe_mask() more
12256bc818fc drm/i915: Handle joined pipes inside hsw_crtc_disable()
27d7559142a9 drm/i915: Handle joined pipes inside hsw_crtc_enable()
-:11: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#11: 
That way we can also remove a bunch of checks like intel_crtc_is_bigjoiner_slave.

-:320: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#320: FILE: drivers/gpu/drm/i915/display/intel_display.h:283:
+#define for_each_intel_crtc_in_pipe_mask_reverse(dev, intel_crtc, pipe_mask)	\
+	list_for_each_entry_reverse((intel_crtc),				\
+				    &(dev)->mode_config.crtc_list,		\
+				    base.head)					\
+		for_each_if((pipe_mask) & BIT((intel_crtc)->pipe))

-:320: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'intel_crtc' - possible side-effects?
#320: FILE: drivers/gpu/drm/i915/display/intel_display.h:283:
+#define for_each_intel_crtc_in_pipe_mask_reverse(dev, intel_crtc, pipe_mask)	\
+	list_for_each_entry_reverse((intel_crtc),				\
+				    &(dev)->mode_config.crtc_list,		\
+				    base.head)					\
+		for_each_if((pipe_mask) & BIT((intel_crtc)->pipe))

total: 1 errors, 1 warnings, 1 checks, 275 lines checked
b5088ba3d763 drm/i915/mst: Add bigjoiner handling to MST modeset sequence
64ad32be2977 drm/i915: Allow bigjoiner for MST


