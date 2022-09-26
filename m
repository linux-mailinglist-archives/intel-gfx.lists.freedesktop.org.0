Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 591DB5EA77D
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Sep 2022 15:41:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 869F810E6B7;
	Mon, 26 Sep 2022 13:41:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4609B10E6B7;
 Mon, 26 Sep 2022 13:41:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3D77DA7DFB;
 Mon, 26 Sep 2022 13:41:17 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>
Date: Mon, 26 Sep 2022 13:41:17 -0000
Message-ID: <166419967722.15112.8045300923453460220@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220926084551.231080-1-anshuman.gupta@intel.com>
In-Reply-To: <20220926084551.231080-1-anshuman.gupta@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/rc6=3A_GTC6=5FRESIDENCY=5F=7BLSB=2C_MSB=7D_Residen?=
 =?utf-8?q?cy_counter_support?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915/rc6: GTC6_RESIDENCY_{LSB, MSB} Residency counter support
URL   : https://patchwork.freedesktop.org/series/109041/
State : warning

== Summary ==

Error: dim checkpatch failed
464f26368366 drm/i915/rc6: GTC6_RESIDENCY_{LSB, MSB} Residency counter support
-:67: CHECK:SPACING: No space is necessary after a cast
#67: FILE: drivers/gpu/drm/i915/gt/intel_rc6.c:831:
+	drm_dbg(&i915->drm, "GT RC6 MSB=0x%x LSB=0x%x\n", (u32) msb, (u32) lsb);

total: 0 errors, 0 warnings, 1 checks, 53 lines checked


