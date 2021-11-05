Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA11E4468B6
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Nov 2021 19:58:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 372F86EC0D;
	Fri,  5 Nov 2021 18:58:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 03C546EB4C;
 Fri,  5 Nov 2021 18:58:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F03C0A8830;
 Fri,  5 Nov 2021 18:58:06 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lyude Paul" <lyude@redhat.com>
Date: Fri, 05 Nov 2021 18:58:06 -0000
Message-ID: <163613868695.30622.3358382145582360240@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211105183342.130810-1-lyude@redhat.com>
In-Reply-To: <20211105183342.130810-1-lyude@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/dp=2C_drm/i915=3A_Finish_basic_PWM_support_for_VESA_bac?=
 =?utf-8?q?klight_helpers_=28rev11=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/dp, drm/i915: Finish basic PWM support for VESA backlight helpers (rev11)
URL   : https://patchwork.freedesktop.org/series/95127/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
87f25e6e4d96 drm/i915: Add support for panels with VESA backlights with PWM enable/disable
cb44ccb9b548 drm/nouveau/kms/nv50-: Explicitly check DPCD backlights for aux enable/brightness
77a13fc4483a drm/dp: Don't read back backlight mode in drm_edp_backlight_enable()
4ac7457c762d drm/dp, drm/i915: Add support for VESA backlights using PWM for brightness control
-:216: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#216: FILE: drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c:309:
+								     panel->backlight.pwm_level_max);

total: 0 errors, 1 warnings, 0 checks, 244 lines checked
a987c9775621 drm/i915: Clarify probing order in intel_dp_aux_init_backlight_funcs()


