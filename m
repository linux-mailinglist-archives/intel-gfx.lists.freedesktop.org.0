Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23B601F08D1
	for <lists+intel-gfx@lfdr.de>; Sat,  6 Jun 2020 22:47:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D3E26E229;
	Sat,  6 Jun 2020 20:47:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4C4006E216;
 Sat,  6 Jun 2020 20:47:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 244A2A47DF;
 Sat,  6 Jun 2020 20:47:28 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hans de Goede" <hdegoede@redhat.com>
Date: Sat, 06 Jun 2020 20:47:28 -0000
Message-ID: <159147644811.20628.11733720867934347075@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200606202601.48410-1-hdegoede@redhat.com>
In-Reply-To: <20200606202601.48410-1-hdegoede@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBz?=
 =?utf-8?q?eries_starting_with_=5B01/16=5D_ACPI_/_LPSS=3A_Resume_Cherry_Tr?=
 =?utf-8?q?ail_PWM_controller_in_no-irq_phase?=
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

Series: series starting with [01/16] ACPI / LPSS: Resume Cherry Trail PWM controller in no-irq phase
URL   : https://patchwork.freedesktop.org/series/78071/
State : failure

== Summary ==

Applying: ACPI / LPSS: Resume Cherry Trail PWM controller in no-irq phase
Applying: ACPI / LPSS: Save Cherry Trail PWM ctx registers only once (at activation)
Applying: pwm: lpss: Add range limit check for the base_unit register value
Applying: pwm: lpss: Fix off by one error in base_unit math in pwm_lpss_prepare()
Applying: pwm: lpss: Set SW_UPDATE bit when enabling the PWM
Applying: pwm: lpss: Add debug prints, test patch for moving i915 to atomic PWM
error: sha1 information is lacking or useless (drivers/pwm/pwm-lpss.c).
error: could not build fake ancestor
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0006 pwm: lpss: Add debug prints, test patch for moving i915 to atomic PWM
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
