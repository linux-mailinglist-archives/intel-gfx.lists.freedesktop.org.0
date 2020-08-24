Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33C2F24FDC1
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Aug 2020 14:28:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A0CF6E217;
	Mon, 24 Aug 2020 12:28:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C623C6E0F6;
 Mon, 24 Aug 2020 12:28:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BEC64A7DFF;
 Mon, 24 Aug 2020 12:28:30 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hans de Goede" <hdegoede@redhat.com>
Date: Mon, 24 Aug 2020 12:28:30 -0000
Message-ID: <159827211077.20778.4575869402766299068@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200824120126.7116-1-hdegoede@redhat.com>
In-Reply-To: <20200824120126.7116-1-hdegoede@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_acpi/pwm/i915=3A_Convert_pwm-crc_and_i915_driver=27s_PWM_co?=
 =?utf-8?q?de_to_use_the_atomic_PWM_API?=
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

Series: acpi/pwm/i915: Convert pwm-crc and i915 driver's PWM code to use the atomic PWM API
URL   : https://patchwork.freedesktop.org/series/80943/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
23eeb608a11a ACPI / LPSS: Resume Cherry Trail PWM controller in no-irq phase
3404311e82b8 ACPI / LPSS: Save Cherry Trail PWM ctx registers only once (at activation)
cc49add91e96 pwm: lpss: Fix off by one error in base_unit math in pwm_lpss_prepare()
a9f8c291fa0f pwm: lpss: Add range limit check for the base_unit register value
a7c9b3968280 pwm: lpss: Add pwm_lpss_prepare_enable() helper
-:45: CHECK:BOOL_COMPARISON: Using comparison to false is error prone
#45: FILE: drivers/pwm/pwm-lpss.c:137:
+	pwm_lpss_cond_enable(pwm, enable && lpwm->info->bypass == false);

-:50: CHECK:BOOL_COMPARISON: Using comparison to true is error prone
#50: FILE: drivers/pwm/pwm-lpss.c:142:
+	pwm_lpss_cond_enable(pwm, enable && lpwm->info->bypass == true);

total: 0 errors, 0 warnings, 2 checks, 67 lines checked
19fbcc493a46 pwm: lpss: Use pwm_lpss_apply() when restoring state on resume
23df6f9340c1 pwm: crc: Fix period / duty_cycle times being off by a factor of 256
a9c78de3ade3 pwm: crc: Fix off-by-one error in the clock-divider calculations
9d3242bf8a3e pwm: crc: Fix period changes not having any effect
8b8e82933140 pwm: crc: Enable/disable PWM output on enable/disable
6a44ff1498a2 pwm: crc: Implement apply() method to support the new atomic PWM API
c72a3592f7d9 pwm: crc: Implement get_state() method
1f8f97bf9b4a drm/i915: panel: Add get_vbt_pwm_freq() helper
c1026447b3e9 drm/i915: panel: Honor the VBT PWM frequency for devs with an external PWM controller
5e7767931e02 drm/i915: panel: Honor the VBT PWM min setting for devs with an external PWM controller
80c31f95dffd drm/i915: panel: Use atomic PWM API for devs with an external PWM controller


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
