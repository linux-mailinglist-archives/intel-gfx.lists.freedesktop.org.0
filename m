Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 151761BCCDB
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2020 21:59:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CCEB6EBFE;
	Tue, 28 Apr 2020 19:59:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E32876EC27;
 Tue, 28 Apr 2020 19:59:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DD3E5A0BCB;
 Tue, 28 Apr 2020 19:59:21 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Tue, 28 Apr 2020 19:59:21 -0000
Message-ID: <158810396187.17772.18366051813686108321@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200428171940.19552-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200428171940.19552-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm=3A_Put_drm=5Fdisplay=5Fmode_on_diet_=28rev4=29?=
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

Series: drm: Put drm_display_mode on diet (rev4)
URL   : https://patchwork.freedesktop.org/series/73674/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
391d956587ff drm: Nuke mode->hsync
eaecaca706ae drm/i915: Introduce some local intel_dp variables
88e33e5f3e3c drm: Nuke mode->vrefresh
-:1445: WARNING:LONG_LINE: line over 100 characters
#1445: FILE: drivers/gpu/drm/i915/display/intel_dp.c:8031:
+					drm_mode_vrefresh(intel_dp->attached_connector->panel.fixed_mode));

-:1454: WARNING:LONG_LINE: line over 100 characters
#1454: FILE: drivers/gpu/drm/i915/display/intel_dp.c:8077:
+					drm_mode_vrefresh(intel_dp->attached_connector->panel.fixed_mode));

total: 0 errors, 2 warnings, 0 checks, 2641 lines checked
236701787646 drm/msm/dpu: Stop copying around mode->private_flags
-:85: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#85: FILE: drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h:330:
+	TP_PROTO(uint32_t drm_id, unsigned int flags),

total: 0 errors, 0 warnings, 1 checks, 71 lines checked
def3490cecd2 drm: Shrink {width,height}_mm to u16
39beb28d7f54 drm: Shrink mode->type to u8
193c14ba7aa6 drm: Make mode->flags u32
80a8d788d6dd drm: Shrink drm_display_mode timings
cb12bfa009ef drm: Flatten drm_mode_vrefresh()
6183fd17cc04 drm: pahole struct drm_display_mode
c6250bb8bb4c drm/mcde: Use mode->clock instead of reverse calculating it from the vrefresh
599655854c63 drm/i915: Stop using mode->private_flags
c9d66b575ee4 drm/i915: Replace I915_MODE_FLAG_INHERITED with a boolean
4fb36e6875cf drm/gma500: Stop using mode->private_flags
1899ce9671ee drm: Nuke mode->private_flags
c1a74fbc130f drm: Replace mode->export_head with a boolean

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
