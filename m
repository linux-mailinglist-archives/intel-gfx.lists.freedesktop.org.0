Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 56044308735
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Jan 2021 10:05:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB1D06E463;
	Fri, 29 Jan 2021 09:05:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8C9846E463;
 Fri, 29 Jan 2021 09:05:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 86F42A47E9;
 Fri, 29 Jan 2021 09:05:48 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gwan-gyeong Mun" <gwan-gyeong.mun@intel.com>
Date: Fri, 29 Jan 2021 09:05:48 -0000
Message-ID: <161191114855.15523.9544961155815740918@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210129074547.1721344-1-gwan-gyeong.mun@intel.com>
In-Reply-To: <20210129074547.1721344-1-gwan-gyeong.mun@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv14=2C1/2=5D_drm/i915/display=3A_Su?=
 =?utf-8?q?pport_PSR_Multiple_Instances?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with [v14,1/2] drm/i915/display: Support PSR Multiple Instances
URL   : https://patchwork.freedesktop.org/series/86433/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
2beed3acee30 drm/i915/display: Support PSR Multiple Instances
-:88: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#88: FILE: drivers/gpu/drm/i915/display/intel_display.h:420:
+#define for_each_intel_encoder_mask_can_psr(dev, intel_encoder, encoder_mask) \
+	list_for_each_entry((intel_encoder), &(dev)->mode_config.encoder_list, base.head) \
+		for_each_if(((encoder_mask) & drm_encoder_mask(&(intel_encoder)->base)) && \
+			    intel_encoder_can_psr(intel_encoder))

-:88: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'intel_encoder' - possible side-effects?
#88: FILE: drivers/gpu/drm/i915/display/intel_display.h:420:
+#define for_each_intel_encoder_mask_can_psr(dev, intel_encoder, encoder_mask) \
+	list_for_each_entry((intel_encoder), &(dev)->mode_config.encoder_list, base.head) \
+		for_each_if(((encoder_mask) & drm_encoder_mask(&(intel_encoder)->base)) && \
+			    intel_encoder_can_psr(intel_encoder))

-:97: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#97: FILE: drivers/gpu/drm/i915/display/intel_display.h:429:
+#define for_each_intel_encoder_can_psr(dev, intel_encoder) \
+	for_each_intel_encoder((dev), (intel_encoder)) \
+		for_each_if(intel_encoder_can_psr(intel_encoder))

-:97: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'intel_encoder' - possible side-effects?
#97: FILE: drivers/gpu/drm/i915/display/intel_display.h:429:
+#define for_each_intel_encoder_can_psr(dev, intel_encoder) \
+	for_each_intel_encoder((dev), (intel_encoder)) \
+		for_each_if(intel_encoder_can_psr(intel_encoder))

-:375: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'intel_dp' - possible side-effects?
#375: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:1795:
+#define CAN_PSR(intel_dp)	(HAS_PSR(dp_to_i915(intel_dp)) && \
+				 (intel_dp)->psr.sink_support && \
+				 (intel_dp)->psr.source_support)

-:1188: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#1188: FILE: drivers/gpu/drm/i915/display/intel_psr.c:1230:
+					    crtc_state->uapi.encoder_mask) {
+

-:1320: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1320: FILE: drivers/gpu/drm/i915/display/intel_psr.c:1523:
+		if (!intel_dp->psr.enabled ||
+		     (intel_dp->psr.enabled && intel_dp->psr.psr2_enabled)) {

total: 2 errors, 0 warnings, 5 checks, 1731 lines checked
84aa39bab08a drm/i915/display: Support Multiple Transcoders' PSR status on debugfs


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
