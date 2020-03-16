Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 547581871F2
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2020 19:10:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8ABDD6E499;
	Mon, 16 Mar 2020 18:10:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DCC696E499;
 Mon, 16 Mar 2020 18:10:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BBAD5A47DA;
 Mon, 16 Mar 2020 18:10:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mario Kleiner" <mario.kleiner.de@gmail.com>
Date: Mon, 16 Mar 2020 18:10:27 -0000
Message-ID: <158438222773.18993.15665069653115697330@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200316042340.4783-1-mario.kleiner.de@gmail.com>
In-Reply-To: <20200316042340.4783-1-mario.kleiner.de@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/dp=3A_Add_dpcd_link=5Frate_quirk_for_Apple_15=22_M?=
 =?utf-8?q?BP_2017_=28rev3=29?=
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

Series: drm/i915/dp: Add dpcd link_rate quirk for Apple 15" MBP 2017 (rev3)
URL   : https://patchwork.freedesktop.org/series/74100/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
3d21f79cfaf6 drm/i915/dp: Add dpcd link_rate quirk for Apple 15" MBP 2017 (v3)
-:47: WARNING:LONG_LINE: line over 100 characters
#47: FILE: drivers/gpu/drm/drm_dp_helper.c:1242:
+	{ OUI(0x00, 0x10, 0xfa), DEVICE_ID(101, 68, 21, 101, 98, 97), false, BIT(DP_DPCD_QUIRK_CAN_DO_MAX_LINK_RATE_3_24_GBPS) },

total: 0 errors, 1 warnings, 0 checks, 38 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
