Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46D591F0E05
	for <lists+intel-gfx@lfdr.de>; Sun,  7 Jun 2020 20:28:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E3D46E348;
	Sun,  7 Jun 2020 18:28:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C02EC6E181;
 Sun,  7 Jun 2020 18:28:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BA170A00EF;
 Sun,  7 Jun 2020 18:28:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hans de Goede" <hdegoede@redhat.com>
Date: Sun, 07 Jun 2020 18:28:13 -0000
Message-ID: <159155449374.15986.5218940914735022313@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200607181840.13536-1-hdegoede@redhat.com>
In-Reply-To: <20200607181840.13536-1-hdegoede@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_pwm/i915=3A_Convert_pwm-crc_and_i915_driver=27s_PWM_code_to?=
 =?utf-8?q?_use_the_atomic_PWM_API?=
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

Series: pwm/i915: Convert pwm-crc and i915 driver's PWM code to use the atomic PWM API
URL   : https://patchwork.freedesktop.org/series/78089/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
e5cf553c0dcc ACPI / LPSS: Resume Cherry Trail PWM controller in no-irq phase
e4c217421240 ACPI / LPSS: Save Cherry Trail PWM ctx registers only once (at activation)
50130652086f pwm: lpss: Add range limit check for the base_unit register value
cb9922913f55 pwm: lpss: Fix off by one error in base_unit math in pwm_lpss_prepare()
dba8a9e355db pwm: lpss: Set SW_UPDATE bit when enabling the PWM
-:78: CHECK:BOOL_COMPARISON: Using comparison to false is error prone
#78: FILE: drivers/pwm/pwm-lpss.c:149:
+					 lpwm->info->bypass == false);

total: 0 errors, 0 warnings, 1 checks, 36 lines checked
84fd73d0b37e pwm: crc: Fix period / duty_cycle times being off by a factor of 256
9e2eaeacdf15 pwm: crc: Fix off-by-one error in the clock-divider calculations
8b1bbb8e9bc0 pwm: crc: Fix period changes not having any effect
a08d7c7752b8 pwm: crc: Enable/disable PWM output on enable/disable
989f50988bff pwm: crc: Implement apply() method to support the new atomic PWM API
2c6d747e89fe pwm: crc: Implement get_state() method
-:20: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#20: FILE: drivers/pwm/pwm-crc.c:118:
+static void crc_pwm_get_state(struct pwm_chip *chip, struct pwm_device *pwm,
+			       struct pwm_state *state)

total: 0 errors, 0 warnings, 1 checks, 37 lines checked
13ddb5bbc283 drm/i915: panel: Add get_vbt_pwm_freq() helper
a5b8e319f197 drm/i915: panel: Honor the VBT PWM frequency for devs with an external PWM controller
61594a403a5c drm/i915: panel: Honor the VBT PWM min setting for devs with an external PWM controller
dc3969b82041 drm/i915: panel: Use atomic PWM API for devs with an external PWM controller

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
