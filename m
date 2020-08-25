Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 702A725169C
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Aug 2020 12:25:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9E336E8CE;
	Tue, 25 Aug 2020 10:25:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 58C5C6E8CD;
 Tue, 25 Aug 2020 10:25:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 52035AA3D7;
 Tue, 25 Aug 2020 10:25:44 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hans de Goede" <hdegoede@redhat.com>
Date: Tue, 25 Aug 2020 10:25:44 -0000
Message-ID: <159835114433.23677.14835053656683624007@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200825100106.61941-1-hdegoede@redhat.com>
In-Reply-To: <20200825100106.61941-1-hdegoede@redhat.com>
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
URL   : https://patchwork.freedesktop.org/series/80976/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
ef85c003b00a ACPI / LPSS: Resume Cherry Trail PWM controller in no-irq phase
1d26b9fe569e ACPI / LPSS: Save Cherry Trail PWM ctx registers only once (at activation)
5dd4db0dc219 pwm: lpss: Fix off by one error in base_unit math in pwm_lpss_prepare()
a4e4727f40e6 pwm: lpss: Add range limit check for the base_unit register value
0d3912600257 pwm: lpss: Add pwm_lpss_prepare_enable() helper
-:45: CHECK:BOOL_COMPARISON: Using comparison to false is error prone
#45: FILE: drivers/pwm/pwm-lpss.c:137:
+	pwm_lpss_cond_enable(pwm, enable && lpwm->info->bypass == false);

-:50: CHECK:BOOL_COMPARISON: Using comparison to true is error prone
#50: FILE: drivers/pwm/pwm-lpss.c:142:
+	pwm_lpss_cond_enable(pwm, enable && lpwm->info->bypass == true);

total: 0 errors, 0 warnings, 2 checks, 67 lines checked
9fb3d675a6b6 pwm: lpss: Use pwm_lpss_apply() when restoring state on resume
2dda19e1952a pwm: crc: Fix period / duty_cycle times being off by a factor of 256
2061f911c93f pwm: crc: Fix off-by-one error in the clock-divider calculations
2e80db8eb3ff pwm: crc: Fix period changes not having any effect
04e01429ab69 pwm: crc: Enable/disable PWM output on enable/disable
f0758f16468b pwm: crc: Implement apply() method to support the new atomic PWM API
9a833ba135f1 pwm: crc: Implement get_state() method
ace83a7f4e48 drm/i915: panel: Add get_vbt_pwm_freq() helper
6c5200023ed2 drm/i915: panel: Honor the VBT PWM frequency for devs with an external PWM controller
5cba5633c584 drm/i915: panel: Honor the VBT PWM min setting for devs with an external PWM controller
871bbce513b9 drm/i915: panel: Use atomic PWM API for devs with an external PWM controller


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
