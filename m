Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BE05C1C4960
	for <lists+intel-gfx@lfdr.de>; Tue,  5 May 2020 00:08:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B00FE6E02A;
	Mon,  4 May 2020 22:08:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E9B956E02A;
 Mon,  4 May 2020 22:08:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E3DBBA47E8;
 Mon,  4 May 2020 22:08:29 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Mon, 04 May 2020 22:08:29 -0000
Message-ID: <158863010990.5816.16831745163778002008@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200501170748.358135-1-matthew.d.roper@intel.com>
In-Reply-To: <20200501170748.358135-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBJ?=
 =?utf-8?q?ntroduce_Rocket_Lake_=28rev3=29?=
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

Series: Introduce Rocket Lake (rev3)
URL   : https://patchwork.freedesktop.org/series/76826/
State : failure

== Summary ==

Applying: drm/i915/rkl: Add RKL platform info and PCI ids
Applying: x86/gpu: add RKL stolen memory support
Applying: drm/i915/rkl: Re-use TGL GuC/HuC firmware
Applying: drm/i915/rkl: Load DMC firmware for Rocket Lake
Applying: drm/i915/rkl: Add PCH support
Applying: drm/i915/rkl: Update memory bandwidth parameters
Applying: drm/i915/rkl: Limit number of universal planes to 5
Applying: drm/i915/rkl: Add power well support
Applying: drm/i915/rkl: Program BW_BUDDY0 registers instead of BW_BUDDY1/2
Applying: drm/i915/rkl: RKL only uses PHY_MISC for PHY's A and B
Applying: drm/i915/rkl: Add cdclk support
error: patch fragment without header at line 14: @@ -1414,7 +1448,8 @@ static void bxt_get_cdclk(struct drm_i915_private *dev_priv,
error: could not build fake ancestor
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0011 drm/i915/rkl: Add cdclk support
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
