Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D908825C0A0
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Sep 2020 13:54:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D909D6E9DA;
	Thu,  3 Sep 2020 11:54:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5B6F36E9D9;
 Thu,  3 Sep 2020 11:54:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5383AA0BCB;
 Thu,  3 Sep 2020 11:54:07 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hans de Goede" <hdegoede@redhat.com>
Date: Thu, 03 Sep 2020 11:54:07 -0000
Message-ID: <159913404731.15506.15033191157576493313@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200903112337.4113-1-hdegoede@redhat.com>
In-Reply-To: <20200903112337.4113-1-hdegoede@redhat.com>
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
URL   : https://patchwork.freedesktop.org/series/81287/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
1168abd5ce8d ACPI / LPSS: Resume Cherry Trail PWM controller in no-irq phase
49747f4e3a9e ACPI / LPSS: Save Cherry Trail PWM ctx registers only once (at activation)
97b4a9aebcb4 pwm: lpss: Fix off by one error in base_unit math in pwm_lpss_prepare()
2e7faec371d2 pwm: lpss: Add range limit check for the base_unit register value
94a41c16c5ba pwm: lpss: Add pwm_lpss_prepare_enable() helper
-:46: CHECK:BOOL_COMPARISON: Using comparison to false is error prone
#46: FILE: drivers/pwm/pwm-lpss.c:137:
+	pwm_lpss_cond_enable(pwm, enable && lpwm->info->bypass == false);

-:51: CHECK:BOOL_COMPARISON: Using comparison to true is error prone
#51: FILE: drivers/pwm/pwm-lpss.c:142:
+	pwm_lpss_cond_enable(pwm, enable && lpwm->info->bypass == true);

total: 0 errors, 0 warnings, 2 checks, 67 lines checked
b6ce0150e736 pwm: lpss: Make pwm_lpss_apply() not rely on existing hardware state
-:93: CHECK:BOOL_COMPARISON: Using comparison to false is error prone
#93: FILE: drivers/pwm/pwm-lpss.c:134:
+	pwm_lpss_cond_enable(pwm, lpwm->info->bypass == false);

-:99: CHECK:BOOL_COMPARISON: Using comparison to true is error prone
#99: FILE: drivers/pwm/pwm-lpss.c:139:
+	pwm_lpss_cond_enable(pwm, lpwm->info->bypass == true);

total: 0 errors, 0 warnings, 2 checks, 63 lines checked
48f37ff234b3 pwm: lpss: Remove suspend/resume handlers
247ad837e2cd pwm: crc: Fix period / duty_cycle times being off by a factor of 256
0b9d965a728a pwm: crc: Fix off-by-one error in the clock-divider calculations
666a424bb1a8 pwm: crc: Fix period changes not having any effect
f29b5d035a49 pwm: crc: Enable/disable PWM output on enable/disable
88ea19297024 pwm: crc: Implement apply() method to support the new atomic PWM API
ad30d11970a4 pwm: crc: Implement get_state() method
240678c00b3d drm/i915: panel: Add get_vbt_pwm_freq() helper
d1aacec4e432 drm/i915: panel: Honor the VBT PWM frequency for devs with an external PWM controller
7e1d6106ba3a drm/i915: panel: Honor the VBT PWM min setting for devs with an external PWM controller
5f2ad76ad27d drm/i915: panel: Use atomic PWM API for devs with an external PWM controller


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
