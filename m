Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AF6972023D3
	for <lists+intel-gfx@lfdr.de>; Sat, 20 Jun 2020 14:41:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C62C26E2C4;
	Sat, 20 Jun 2020 12:41:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4C4546E105;
 Sat, 20 Jun 2020 12:41:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 44A54A66C7;
 Sat, 20 Jun 2020 12:41:47 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hans de Goede" <hdegoede@redhat.com>
Date: Sat, 20 Jun 2020 12:41:47 -0000
Message-ID: <159265690725.5569.2518282758646834525@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200620121758.14836-1-hdegoede@redhat.com>
In-Reply-To: <20200620121758.14836-1-hdegoede@redhat.com>
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
URL   : https://patchwork.freedesktop.org/series/78657/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
00c7ab81dc2b ACPI / LPSS: Resume Cherry Trail PWM controller in no-irq phase
70aa4c26421d ACPI / LPSS: Save Cherry Trail PWM ctx registers only once (at activation)
2b3dc82c833f pwm: lpss: Fix off by one error in base_unit math in pwm_lpss_prepare()
331619bd8d2d pwm: lpss: Add range limit check for the base_unit register value
8ca68e33dcee pwm: lpss: Use pwm_lpss_apply() when restoring state on resume
eb1f77282a44 pwm: crc: Fix period / duty_cycle times being off by a factor of 256
5c49b15649d0 pwm: crc: Fix off-by-one error in the clock-divider calculations
fd2e1f63fa16 pwm: crc: Fix period changes not having any effect
7f858f2631cc pwm: crc: Enable/disable PWM output on enable/disable
257686c338a9 pwm: crc: Implement apply() method to support the new atomic PWM API
7c35513a98ae pwm: crc: Implement get_state() method
-:21: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#21: FILE: drivers/pwm/pwm-crc.c:123:
+static void crc_pwm_get_state(struct pwm_chip *chip, struct pwm_device *pwm,
+			       struct pwm_state *state)

total: 0 errors, 0 warnings, 1 checks, 37 lines checked
09a8c4429a2c drm/i915: panel: Add get_vbt_pwm_freq() helper
2844a5b2bc7d drm/i915: panel: Honor the VBT PWM frequency for devs with an external PWM controller
c9ae779cf5df drm/i915: panel: Honor the VBT PWM min setting for devs with an external PWM controller
b38271ed1f65 drm/i915: panel: Use atomic PWM API for devs with an external PWM controller

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
