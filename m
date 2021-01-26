Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AC6C3032A1
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jan 2021 04:27:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66DE289CD3;
	Tue, 26 Jan 2021 03:27:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BF1AD89CD3;
 Tue, 26 Jan 2021 03:27:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BA3D6A73C7;
 Tue, 26 Jan 2021 03:27:00 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Aditya Swarup" <aditya.swarup@intel.com>
Date: Tue, 26 Jan 2021 03:27:00 -0000
Message-ID: <161163162073.9812.12013187026476590466@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210125140753.347998-1-aditya.swarup@intel.com>
In-Reply-To: <20210125140753.347998-1-aditya.swarup@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Alderlake-S_platform_enabling_patches_=28rev2=29?=
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

Series: Alderlake-S platform enabling patches (rev2)
URL   : https://patchwork.freedesktop.org/series/86260/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
aade12b92978 x86/gpu: Add Alderlake-S stolen memory support
300dcb516efb drm/i915/adl_s: Add PCH support
43ecfab3c2ba drm/i915/adl_s: Add Interrupt Support
6e5d01044438 drm/i915/adl_s: Add PHYs for Alderlake S
7c2a725093dc drm/i915/adl_s: Configure DPLL for ADL-S
0b554f3df487 drm/i915/adl_s: Configure Port clock registers for ADL-S
a3783d1bb097 drm/i915/adl_s: Initialize display for ADL-S
4d3692703ac0 drm/i915/adl_s: Add adl-s ddc pin mapping
a9a635f54fb2 drm/i915/adl_s: Add vbt port and aux channel settings for adls
-:10: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#10: 
- ADL-S driver internal mapping uses PORT D, E, F, G for Combo phy B, C, D and E.

total: 0 errors, 1 warnings, 0 checks, 81 lines checked
0700ccc2b0ce drm/i915/adl_s: Update combo PHY master/slave relationships


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
