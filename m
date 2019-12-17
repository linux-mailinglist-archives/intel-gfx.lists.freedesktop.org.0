Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 971AA122267
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2019 04:13:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9BA26E933;
	Tue, 17 Dec 2019 03:13:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 18BB36E932;
 Tue, 17 Dec 2019 03:13:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0FAABA0BA8;
 Tue, 17 Dec 2019 03:13:06 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hans de Goede" <hdegoede@redhat.com>
Date: Tue, 17 Dec 2019 03:13:06 -0000
Message-ID: <157655238606.21847.3133615387649603142@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191216202906.1662893-1-hdegoede@redhat.com>
In-Reply-To: <20191216202906.1662893-1-hdegoede@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915_/_LPSS_/_mfd=3A_Select_correct_PWM_controller_to_u?=
 =?utf-8?q?se_based_on_VBT_=28rev3=29?=
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

Series: drm/i915 / LPSS / mfd: Select correct PWM controller to use based on VBT (rev3)
URL   : https://patchwork.freedesktop.org/series/69686/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
9a0b084effd9 ACPI / LPSS: Rename pwm_backlight pwm-lookup to pwm_soc_backlight
7f06eeff5a09 mfd: intel_soc_pmic: Rename pwm_backlight pwm-lookup to pwm_pmic_backlight
-:50: WARNING:LONG_LINE: line over 100 characters
#50: FILE: drivers/mfd/intel_soc_pmic_core.c:41:
+	PWM_LOOKUP("crystal_cove_pwm", 0, "0000:00:02.0", "pwm_pmic_backlight", 0, PWM_POLARITY_NORMAL),

total: 0 errors, 1 warnings, 0 checks, 8 lines checked
b075d00cadea drm/i915: DSI: select correct PWM controller to use based on the VBT

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
