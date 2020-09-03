Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ED8B025C066
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Sep 2020 13:34:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 599126E9D7;
	Thu,  3 Sep 2020 11:34:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6EA706E9D8;
 Thu,  3 Sep 2020 11:34:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 66E51A47DB;
 Thu,  3 Sep 2020 11:34:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hans de Goede" <hdegoede@redhat.com>
Date: Thu, 03 Sep 2020 11:34:26 -0000
Message-ID: <159913286641.15504.17958572889282274646@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200903105114.9969-1-hdegoede@redhat.com>
In-Reply-To: <20200903105114.9969-1-hdegoede@redhat.com>
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
URL   : https://patchwork.freedesktop.org/series/81284/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
1697ae1e044d ACPI / LPSS: Resume Cherry Trail PWM controller in no-irq phase
3d61460209ae ACPI / LPSS: Save Cherry Trail PWM ctx registers only once (at activation)
3323c5fd40fd pwm: lpss: Fix off by one error in base_unit math in pwm_lpss_prepare()
a5e5abaeb383 pwm: lpss: Add range limit check for the base_unit register value
35844baeea43 pwm: lpss: Add pwm_lpss_prepare_enable() helper
-:46: CHECK:BOOL_COMPARISON: Using comparison to false is error prone
#46: FILE: drivers/pwm/pwm-lpss.c:137:
+	pwm_lpss_cond_enable(pwm, enable && lpwm->info->bypass == false);

-:51: CHECK:BOOL_COMPARISON: Using comparison to true is error prone
#51: FILE: drivers/pwm/pwm-lpss.c:142:
+	pwm_lpss_cond_enable(pwm, enable && lpwm->info->bypass == true);

total: 0 errors, 0 warnings, 2 checks, 67 lines checked
6d4f51125b5e pwm: lpss: Make pwm_lpss_apply() not rely on existing hardware state
-:93: CHECK:BOOL_COMPARISON: Using comparison to false is error prone
#93: FILE: drivers/pwm/pwm-lpss.c:134:
+	pwm_lpss_cond_enable(pwm, lpwm->info->bypass == false);

-:99: CHECK:BOOL_COMPARISON: Using comparison to true is error prone
#99: FILE: drivers/pwm/pwm-lpss.c:139:
+	pwm_lpss_cond_enable(pwm, lpwm->info->bypass == true);

total: 0 errors, 0 warnings, 2 checks, 63 lines checked
f1828c9c0d08 pwm: lpss: Remove suspend/resume handlers
1bcad686586e pwm: crc: Fix period / duty_cycle times being off by a factor of 256
f35514f16ee3 pwm: crc: Fix off-by-one error in the clock-divider calculations
fba1b41f563c pwm: crc: Fix period changes not having any effect
17dac256640e pwm: crc: Enable/disable PWM output on enable/disable
c2ba8c2eec46 pwm: crc: Implement apply() method to support the new atomic PWM API
edc4cede8f26 pwm: crc: Implement get_state() method
4ab3de063861 drm/i915: panel: Add get_vbt_pwm_freq() helper
cb09d0ae8c40 drm/i915: panel: Honor the VBT PWM frequency for devs with an external PWM controller
5751ab4b4c97 drm/i915: panel: Honor the VBT PWM min setting for devs with an external PWM controller
71e10e2a06cb drm/i915: panel: Use atomic PWM API for devs with an external PWM controller


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
