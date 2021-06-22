Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 591A33B0943
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Jun 2021 17:39:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44F986E5B0;
	Tue, 22 Jun 2021 15:39:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5AC0689B7D;
 Tue, 22 Jun 2021 15:39:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 53E82A41FB;
 Tue, 22 Jun 2021 15:39:16 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lee Shawn C" <shawn.c.lee@intel.com>
Date: Tue, 22 Jun 2021 15:39:16 -0000
Message-ID: <162437635631.30778.18148835670622519233@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210622133107.7422-1-shawn.c.lee@intel.com>
In-Reply-To: <20210622133107.7422-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_keep_backlight=5Fenable_on_until_turn_eDP_displ?=
 =?utf-8?q?ay_off_=28rev3=29?=
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

Series: drm/i915: keep backlight_enable on until turn eDP display off (rev3)
URL   : https://patchwork.freedesktop.org/series/91780/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
9d04638ef39d drm/i915: keep backlight_enable on until turn eDP display off
-:115: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#115: FILE: drivers/gpu/drm/i915/i915_drv.h:470:
+#define QUIRK_NO_PPS_BACKLIGHT_POWER_HOOK (1<<8)
                                             ^

total: 0 errors, 0 warnings, 1 checks, 68 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
