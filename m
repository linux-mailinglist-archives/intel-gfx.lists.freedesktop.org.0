Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E4A423155CD
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Feb 2021 19:26:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69BCA6EB90;
	Tue,  9 Feb 2021 18:26:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D6D9F6EB90;
 Tue,  9 Feb 2021 18:26:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CF6B7A363D;
 Tue,  9 Feb 2021 18:26:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Tue, 09 Feb 2021 18:26:01 -0000
Message-ID: <161289516182.28235.11239492372453730804@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210209181439.215104-1-jose.souza@intel.com>
In-Reply-To: <20210209181439.215104-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/4=5D_drm/i915/display=3A_Rename_f?=
 =?utf-8?q?or=5Feach=5Fintel=5Fencoder=2E*=5Fcan=5Fpsr_to_for=5Feach=5Fint?=
 =?utf-8?b?ZWxfZW5jb2Rlci4qX3dpdGhfcHNy?=
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

Series: series starting with [1/4] drm/i915/display: Rename for_each_intel_encoder.*_can_psr to for_each_intel_encoder.*_with_psr
URL   : https://patchwork.freedesktop.org/series/86910/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
1edc3ad07376 drm/i915/display: Rename for_each_intel_encoder.*_can_psr to for_each_intel_encoder.*_with_psr
-:25: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#25: FILE: drivers/gpu/drm/i915/display/intel_display.h:421:
+#define for_each_intel_encoder_mask_with_psr(dev, intel_encoder, encoder_mask) \
 	list_for_each_entry((intel_encoder), &(dev)->mode_config.encoder_list, base.head) \
 		for_each_if(((encoder_mask) & drm_encoder_mask(&(intel_encoder)->base)) && \
 			    intel_encoder_can_psr(intel_encoder))

-:25: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'intel_encoder' - possible side-effects?
#25: FILE: drivers/gpu/drm/i915/display/intel_display.h:421:
+#define for_each_intel_encoder_mask_with_psr(dev, intel_encoder, encoder_mask) \
 	list_for_each_entry((intel_encoder), &(dev)->mode_config.encoder_list, base.head) \
 		for_each_if(((encoder_mask) & drm_encoder_mask(&(intel_encoder)->base)) && \
 			    intel_encoder_can_psr(intel_encoder))

-:34: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#34: FILE: drivers/gpu/drm/i915/display/intel_display.h:430:
+#define for_each_intel_encoder_with_psr(dev, intel_encoder) \
 	for_each_intel_encoder((dev), (intel_encoder)) \
 		for_each_if(intel_encoder_can_psr(intel_encoder))

-:34: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'intel_encoder' - possible side-effects?
#34: FILE: drivers/gpu/drm/i915/display/intel_display.h:430:
+#define for_each_intel_encoder_with_psr(dev, intel_encoder) \
 	for_each_intel_encoder((dev), (intel_encoder)) \
 		for_each_if(intel_encoder_can_psr(intel_encoder))

total: 2 errors, 0 warnings, 2 checks, 92 lines checked
fe6bbcba6125 drm/i915/display: Only write to register in intel_psr2_program_trans_man_trk_ctl()
889eeb0a82dd drm/i915/display: Remove some redundancy around CAN_PSR()
-:29: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'intel_dp' - possible side-effects?
#29: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:1796:
+#define CAN_PSR(intel_dp) ((intel_dp)->psr.sink_support && \
+			   (intel_dp)->psr.source_support)

total: 0 errors, 0 warnings, 1 checks, 35 lines checked
6c507f7a8c35 drm/i915/display: Set source_support even if panel do not support PSR


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
