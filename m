Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 202D6165073
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 21:59:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E19616E870;
	Wed, 19 Feb 2020 20:59:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0AB166E870;
 Wed, 19 Feb 2020 20:59:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 01448A47E1;
 Wed, 19 Feb 2020 20:59:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Wed, 19 Feb 2020 20:59:18 -0000
Message-ID: <158214595897.21062.8758059422482557024@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200219203544.31013-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200219203544.31013-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm=3A_Put_drm=5Fdisplay=5Fmode_on_diet?=
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

Series: drm: Put drm_display_mode on diet
URL   : https://patchwork.freedesktop.org/series/73674/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
1547c317f1a8 drm: Nuke mode->hsync
60d00db46691 drm/exynos: Use mode->clock instead of reverse calculating it from the vrefresh
28e0079cb232 drm/i915: Introduce some local intel_dp variables
fc4bd0c92150 drm: Nuke mode->vrefresh
-:1393: WARNING:LONG_LINE: line over 100 characters
#1393: FILE: drivers/gpu/drm/i915/display/intel_dp.c:7225:
+					drm_mode_vrefresh(intel_dp->attached_connector->panel.fixed_mode));

-:1402: WARNING:LONG_LINE: line over 100 characters
#1402: FILE: drivers/gpu/drm/i915/display/intel_dp.c:7271:
+					drm_mode_vrefresh(intel_dp->attached_connector->panel.fixed_mode));

total: 0 errors, 2 warnings, 0 checks, 2529 lines checked
5ffd09532dbc drm/msm/dpu: Stop copying around mode->private_flags
-:84: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#84: FILE: drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h:330:
+	TP_PROTO(uint32_t drm_id, unsigned int flags),

total: 0 errors, 0 warnings, 1 checks, 71 lines checked
ebc0d4878fa3 drm: Shrink {width,height}_mm to u16
123730c56db7 drm: Shrink mode->type to u8
95bbdbf0fc19 drm: Make mode->flags u32
461918918abd drm: Shrink drm_display_mode timings
2b38c59a9a1c drm: Flatten drm_mode_vrefresh()
185304bca386 drm: Shrink mode->private_flags
133ee95728f4 drm: pahole struct drm_display_mode

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
