Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98AD512135B
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2019 19:01:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F092E8975F;
	Mon, 16 Dec 2019 18:01:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7DCE36E858;
 Mon, 16 Dec 2019 18:01:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 758ADA0075;
 Mon, 16 Dec 2019 18:01:48 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hans de Goede" <hdegoede@redhat.com>
Date: Mon, 16 Dec 2019 18:01:48 -0000
Message-ID: <157651930845.5612.16188025864017938598@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191216120735.1091873-1-hdegoede@redhat.com>
In-Reply-To: <20191216120735.1091873-1-hdegoede@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Deal_with_inverted_brightness_on_Thundersoft_TS?=
 =?utf-8?q?T178_tablets?=
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

Series: drm/i915: Deal with inverted brightness on Thundersoft TST178 tablets
URL   : https://patchwork.freedesktop.org/series/70978/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
690293c2d125 drm/i915: panel: Use intel_panel_compute_brightness() from pwm_setup_backlight()
734e99ba5c9b drm/i915: Add invert-brightness quirk for Thundersoft TST178 tablet
-:35: WARNING:LONG_LINE: line over 100 characters
#35: FILE: drivers/gpu/drm/i915/display/intel_quirks.c:91:
+					    DMI_EXACT_MATCH(DMI_PRODUCT_NAME, "To be filled by O.E.M."),

total: 0 errors, 1 warnings, 0 checks, 16 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
