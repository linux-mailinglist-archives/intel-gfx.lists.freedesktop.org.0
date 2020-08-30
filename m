Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 03D43256E16
	for <lists+intel-gfx@lfdr.de>; Sun, 30 Aug 2020 15:26:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56D18898AA;
	Sun, 30 Aug 2020 13:25:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1AC1189801;
 Sun, 30 Aug 2020 13:25:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1245EA73C7;
 Sun, 30 Aug 2020 13:25:57 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hans de Goede" <hdegoede@redhat.com>
Date: Sun, 30 Aug 2020 13:25:57 -0000
Message-ID: <159879395703.18690.13529871566286732857@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200830125753.230420-1-hdegoede@redhat.com>
In-Reply-To: <20200830125753.230420-1-hdegoede@redhat.com>
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
URL   : https://patchwork.freedesktop.org/series/81176/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
48148eeaab72 ACPI / LPSS: Resume Cherry Trail PWM controller in no-irq phase
45a4de251846 ACPI / LPSS: Save Cherry Trail PWM ctx registers only once (at activation)
4f7f933a6af6 pwm: lpss: Fix off by one error in base_unit math in pwm_lpss_prepare()
bea1f0a2539c pwm: lpss: Add range limit check for the base_unit register value
c14d8f448f41 pwm: lpss: Add pwm_lpss_prepare_enable() helper
-:45: CHECK:BOOL_COMPARISON: Using comparison to false is error prone
#45: FILE: drivers/pwm/pwm-lpss.c:137:
+	pwm_lpss_cond_enable(pwm, enable && lpwm->info->bypass == false);

-:50: CHECK:BOOL_COMPARISON: Using comparison to true is error prone
#50: FILE: drivers/pwm/pwm-lpss.c:142:
+	pwm_lpss_cond_enable(pwm, enable && lpwm->info->bypass == true);

total: 0 errors, 0 warnings, 2 checks, 67 lines checked
4537cd716e11 pwm: lpss: Use pwm_lpss_restore() when restoring state on resume
a12337a38581 pwm: lpss: Always update state and set update bit
23074c82455a pwm: crc: Fix period / duty_cycle times being off by a factor of 256
d6a64ac9e222 pwm: crc: Fix off-by-one error in the clock-divider calculations
3eaa398d8d92 pwm: crc: Fix period changes not having any effect
605d467e4d8d pwm: crc: Enable/disable PWM output on enable/disable
8924b6bba39e pwm: crc: Implement apply() method to support the new atomic PWM API
32379b451d32 pwm: crc: Implement get_state() method
ada5a0b67cad drm/i915: panel: Add get_vbt_pwm_freq() helper
b09d3cbb410b drm/i915: panel: Honor the VBT PWM frequency for devs with an external PWM controller
823d349c8754 drm/i915: panel: Honor the VBT PWM min setting for devs with an external PWM controller
263c2d7f2378 drm/i915: panel: Use atomic PWM API for devs with an external PWM controller


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
