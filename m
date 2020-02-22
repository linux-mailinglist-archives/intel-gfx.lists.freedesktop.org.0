Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 706A7168B6C
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Feb 2020 02:08:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2727B6F58E;
	Sat, 22 Feb 2020 01:08:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6BB2E6E044;
 Sat, 22 Feb 2020 01:08:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 63E3DA011A;
 Sat, 22 Feb 2020 01:08:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hans de Goede" <hdegoede@redhat.com>
Date: Sat, 22 Feb 2020 01:08:03 -0000
Message-ID: <158233368337.32577.6872567478050513740@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200221172927.510027-1-hdegoede@redhat.com>
In-Reply-To: <20200221172927.510027-1-hdegoede@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bresend=2C1/2=5D_drm/i915=3A_panel?=
 =?utf-8?q?=3A_Use_intel=5Fpanel=5Fcompute=5Fbrightness=28=29_from_pwm=5Fs?=
 =?utf-8?q?etup=5Fbacklight=28=29?=
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

Series: series starting with [resend,1/2] drm/i915: panel: Use intel_panel_compute_brightness() from pwm_setup_backlight()
URL   : https://patchwork.freedesktop.org/series/73784/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
8beab9ed3934 drm/i915: panel: Use intel_panel_compute_brightness() from pwm_setup_backlight()
dc2359f4d6a7 drm/i915: Add invert-brightness quirk for Thundersoft TST178 tablet
-:35: WARNING:LONG_LINE: line over 100 characters
#35: FILE: drivers/gpu/drm/i915/display/intel_quirks.c:91:
+					    DMI_EXACT_MATCH(DMI_PRODUCT_NAME, "To be filled by O.E.M."),

total: 0 errors, 1 warnings, 0 checks, 16 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
