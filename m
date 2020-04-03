Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 50D5C19E09D
	for <lists+intel-gfx@lfdr.de>; Sat,  4 Apr 2020 00:04:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 437C66ECBB;
	Fri,  3 Apr 2020 22:04:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E3C6B6ECBA;
 Fri,  3 Apr 2020 22:04:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DDBE2A0BC6;
 Fri,  3 Apr 2020 22:04:14 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Fri, 03 Apr 2020 22:04:14 -0000
Message-ID: <158595145488.13351.17783778759867595840@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200403204008.14864-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200403204008.14864-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm=3A_Put_drm=5Fdisplay=5Fmode_on_diet_=28rev2=29?=
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

Series: drm: Put drm_display_mode on diet (rev2)
URL   : https://patchwork.freedesktop.org/series/73674/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
fa630bba9e2b drm: Nuke mode->hsync
bb6f7d766981 drm/i915: Introduce some local intel_dp variables
325b0ad221fe drm: Nuke mode->vrefresh
-:1431: WARNING:LONG_LINE: line over 100 characters
#1431: FILE: drivers/gpu/drm/i915/display/intel_dp.c:7750:
+					drm_mode_vrefresh(intel_dp->attached_connector->panel.fixed_mode));

-:1440: WARNING:LONG_LINE: line over 100 characters
#1440: FILE: drivers/gpu/drm/i915/display/intel_dp.c:7796:
+					drm_mode_vrefresh(intel_dp->attached_connector->panel.fixed_mode));

total: 0 errors, 2 warnings, 0 checks, 2591 lines checked
4b303d777e7b drm/msm/dpu: Stop copying around mode->private_flags
-:85: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#85: FILE: drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h:330:
+	TP_PROTO(uint32_t drm_id, unsigned int flags),

total: 0 errors, 0 warnings, 1 checks, 71 lines checked
f44cce4a1d9f drm: Shrink {width,height}_mm to u16
4f5ba370e14f drm: Shrink mode->type to u8
34c66e3566bb drm: Make mode->flags u32
d6bf22e2b0a3 drm: Shrink drm_display_mode timings
8f96019c76dc drm: Flatten drm_mode_vrefresh()
00ab805b0fb4 drm: Shrink mode->private_flags
d3368fb30d7c drm: pahole struct drm_display_mode
9122853a9574 drm/mcde: Use mode->clock instead of reverse calculating it from the vrefresh
103e75194d66 drm/i915: Stop using mode->private_flags
6c2380cbc283 drm/i915: Replace I915_MODE_FLAG_INHERITED with a boolean
6e809802b439 drm/gma500: Stop using mode->private_flags
5b136e94b7a4 drm: Nuke mode->private_flags
ace765c38dc5 drm: Replace mode->export_head with a boolean

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
