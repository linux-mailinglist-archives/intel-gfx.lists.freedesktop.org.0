Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E308219368
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jul 2020 00:28:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1EAA6E94F;
	Wed,  8 Jul 2020 22:28:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 65C606E94C;
 Wed,  8 Jul 2020 22:28:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5F917A0BCB;
 Wed,  8 Jul 2020 22:28:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hans de Goede" <hdegoede@redhat.com>
Date: Wed, 08 Jul 2020 22:28:13 -0000
Message-ID: <159424729336.3840.12892800900742102512@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200708211432.28612-1-hdegoede@redhat.com>
In-Reply-To: <20200708211432.28612-1-hdegoede@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_acpi/pwm/i915=3A_Convert_pwm-crc_and_i915_driver=27s_PWM_co?=
 =?utf-8?q?de_to_use_the_atomic_PWM_API_=28rev2=29?=
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

Series: acpi/pwm/i915: Convert pwm-crc and i915 driver's PWM code to use the atomic PWM API (rev2)
URL   : https://patchwork.freedesktop.org/series/78657/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
3810d73918ca ACPI / LPSS: Resume Cherry Trail PWM controller in no-irq phase
8de01886d9fc ACPI / LPSS: Save Cherry Trail PWM ctx registers only once (at activation)
b93df8e84d40 pwm: lpss: Fix off by one error in base_unit math in pwm_lpss_prepare()
0d2abd2ac4e6 pwm: lpss: Add range limit check for the base_unit register value
1ab2767600fd pwm: lpss: Use pwm_lpss_apply() when restoring state on resume
fd8cbcd32419 pwm: lpss: Correct get_state result for base_unit == 0
-:30: WARNING:TYPO_SPELLING: 'continous' may be misspelled - perhaps 'continuous'?
#30: FILE: drivers/pwm/pwm-lpss.c:196:
+		/* In this case the PWM outputs a continous low signal */

total: 0 errors, 1 warnings, 0 checks, 23 lines checked
4887e66cca3d pwm: crc: Fix period / duty_cycle times being off by a factor of 256
a2ba15abc488 pwm: crc: Fix off-by-one error in the clock-divider calculations
b19055babcba pwm: crc: Fix period changes not having any effect
c67dd8c42755 pwm: crc: Enable/disable PWM output on enable/disable
f23593da4ffc pwm: crc: Implement apply() method to support the new atomic PWM API
87286a03aeb6 pwm: crc: Implement get_state() method
-:21: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#21: FILE: drivers/pwm/pwm-crc.c:123:
+static void crc_pwm_get_state(struct pwm_chip *chip, struct pwm_device *pwm,
+			       struct pwm_state *state)

total: 0 errors, 0 warnings, 1 checks, 39 lines checked
e7a6b17c679b drm/i915: panel: Add get_vbt_pwm_freq() helper
d8c8ba34159b drm/i915: panel: Honor the VBT PWM frequency for devs with an external PWM controller
149ca7a94773 drm/i915: panel: Honor the VBT PWM min setting for devs with an external PWM controller
f5cb7cd44c63 drm/i915: panel: Use atomic PWM API for devs with an external PWM controller

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
