Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A794943BD5F
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Oct 2021 00:43:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 152D789C86;
	Tue, 26 Oct 2021 22:43:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4012F89C6C;
 Tue, 26 Oct 2021 22:43:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3851DA66C8;
 Tue, 26 Oct 2021 22:43:11 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lyude Paul" <lyude@redhat.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Oct 2021 22:43:11 -0000
Message-ID: <163528819119.9776.11251451368547649995@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211026220848.439530-1-lyude@redhat.com>
In-Reply-To: <20211026220848.439530-1-lyude@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/dp=2C_drm/i915=3A_Finish_basic_PWM_support_for_VESA_bac?=
 =?utf-8?q?klight_helpers_=28rev10=29?=
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

Series: drm/dp, drm/i915: Finish basic PWM support for VESA backlight helpers (rev10)
URL   : https://patchwork.freedesktop.org/series/95127/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
2a532b418235 drm/i915: Add support for panels with VESA backlights with PWM enable/disable
7557ddeac4b1 drm/nouveau/kms/nv50-: Explicitly check DPCD backlights for aux enable/brightness
8bc9ebb1845f drm/dp: Disable unsupported features in DP_EDP_BACKLIGHT_MODE_SET_REGISTER
e87c0204c051 drm/dp, drm/i915: Add support for VESA backlights using PWM for brightness control
-:228: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#228: FILE: drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c:309:
+								     panel->backlight.pwm_level_max);

total: 0 errors, 1 warnings, 0 checks, 255 lines checked
c28caf36811d drm/i915: Clarify probing order in intel_dp_aux_init_backlight_funcs()


