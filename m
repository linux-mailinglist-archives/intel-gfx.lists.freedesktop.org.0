Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6C4A30FE27
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Feb 2021 21:27:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9463D6E106;
	Thu,  4 Feb 2021 20:27:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4A8196E029;
 Thu,  4 Feb 2021 20:27:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 45681AA01E;
 Thu,  4 Feb 2021 20:27:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gwan-gyeong Mun" <gwan-gyeong.mun@intel.com>
Date: Thu, 04 Feb 2021 20:27:26 -0000
Message-ID: <161247044626.4503.4817121942128471106@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210204134015.419036-1-gwan-gyeong.mun@intel.com>
In-Reply-To: <20210204134015.419036-1-gwan-gyeong.mun@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv15=2C1/2=5D_drm/i915/display=3A_Su?=
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

Series: series starting with [v15,1/2] drm/i915/display: Support PSR Multiple Instances
URL   : https://patchwork.freedesktop.org/series/86701/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
f7ac9079531d drm/i915/display: Support PSR Multiple Instances
-:90: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#90: FILE: drivers/gpu/drm/i915/display/intel_display.h:420:
+#define for_each_intel_encoder_mask_can_psr(dev, intel_encoder, encoder_mask) \
+	list_for_each_entry((intel_encoder), &(dev)->mode_config.encoder_list, base.head) \
+		for_each_if(((encoder_mask) & drm_encoder_mask(&(intel_encoder)->base)) && \
+			    intel_encoder_can_psr(intel_encoder))

-:90: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'intel_encoder' - possible side-effects?
#90: FILE: drivers/gpu/drm/i915/display/intel_display.h:420:
+#define for_each_intel_encoder_mask_can_psr(dev, intel_encoder, encoder_mask) \
+	list_for_each_entry((intel_encoder), &(dev)->mode_config.encoder_list, base.head) \
+		for_each_if(((encoder_mask) & drm_encoder_mask(&(intel_encoder)->base)) && \
+			    intel_encoder_can_psr(intel_encoder))

-:99: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#99: FILE: drivers/gpu/drm/i915/display/intel_display.h:429:
+#define for_each_intel_encoder_can_psr(dev, intel_encoder) \
+	for_each_intel_encoder((dev), (intel_encoder)) \
+		for_each_if(intel_encoder_can_psr(intel_encoder))

-:99: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'intel_encoder' - possible side-effects?
#99: FILE: drivers/gpu/drm/i915/display/intel_display.h:429:
+#define for_each_intel_encoder_can_psr(dev, intel_encoder) \
+	for_each_intel_encoder((dev), (intel_encoder)) \
+		for_each_if(intel_encoder_can_psr(intel_encoder))

-:377: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'intel_dp' - possible side-effects?
#377: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:1795:
+#define CAN_PSR(intel_dp)	(HAS_PSR(dp_to_i915(intel_dp)) && \
+				 (intel_dp)->psr.sink_support && \
+				 (intel_dp)->psr.source_support)

total: 2 errors, 0 warnings, 3 checks, 1726 lines checked
7a9ed6999675 drm/i915/display: Support Multiple Transcoders' PSR status on debugfs


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
