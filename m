Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 54103302928
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jan 2021 18:42:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F1066E0AD;
	Mon, 25 Jan 2021 17:42:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id EFF726E0AD;
 Mon, 25 Jan 2021 17:42:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id ECF7BA0099;
 Mon, 25 Jan 2021 17:42:08 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Aditya Swarup" <aditya.swarup@intel.com>
Date: Mon, 25 Jan 2021 17:42:08 -0000
Message-ID: <161159652896.3417.14796348959990973038@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210125140753.347998-1-aditya.swarup@intel.com>
In-Reply-To: <20210125140753.347998-1-aditya.swarup@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Alderlake-S_platform_enabling_patches?=
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

Series: Alderlake-S platform enabling patches
URL   : https://patchwork.freedesktop.org/series/86260/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
7d5293a71979 x86/gpu: Add Alderlake-S stolen memory support
9c6ff305711e drm/i915/adl_s: Add PCH support
5f6060c32665 drm/i915/adl_s: Add Interrupt Support
cc0c6ffe9192 drm/i915/adl_s: Add PHYs for Alderlake S
ed39c7a3e949 drm/i915/adl_s: Configure DPLL for ADL-S
bc2af1bd65e7 drm/i915/adl_s: Configure Port clock registers for ADL-S
ffa1c9a2e683 drm/i915/adl_s: Initialize display for ADL-S
d1dd456e53b6 drm/i915/adl_s: Add adl-s ddc pin mapping
7a27ec2a8473 drm/i915/adl_s: Add vbt port and aux channel settings for adls
-:10: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#10: 
- ADL-S driver internal mapping uses PORT D, E, F, G for Combo phy B, C, D and E.

total: 0 errors, 1 warnings, 0 checks, 81 lines checked
e081829e52d7 drm/i915/adl_s: Update combo PHY master/slave relationships


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
