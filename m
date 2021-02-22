Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 437FC32167F
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Feb 2021 13:25:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83AB46E4D7;
	Mon, 22 Feb 2021 12:25:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E1AE36E4CF;
 Mon, 22 Feb 2021 12:25:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DB751A0BCB;
 Mon, 22 Feb 2021 12:25:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gwan-gyeong Mun" <gwan-gyeong.mun@intel.com>
Date: Mon, 22 Feb 2021 12:25:56 -0000
Message-ID: <161399675687.19117.13892803343549246492@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210222112415.1523930-1-gwan-gyeong.mun@intel.com>
In-Reply-To: <20210222112415.1523930-1-gwan-gyeong.mun@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/display=3A_Do_not_allow_DC3CO_if_PSR_SF_is_enabled?=
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

Series: drm/i915/display: Do not allow DC3CO if PSR SF is enabled
URL   : https://patchwork.freedesktop.org/series/87283/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
64ad41f78f8f drm/i915/display: Do not allow DC3CO if PSR SF is enabled
-:12: WARNING:TYPO_SPELLING: 'wiil' may be misspelled - perhaps 'will'?
#12: 
Selective Fetch wiil be enabled by default.
                ^^^^

-:35: CHECK:BRACES: braces {} should be used on all arms of this statement
#35: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:807:
+	if (INTEL_GEN(dev_priv) >= 12) {
[...]
+	} else if (IS_GEN(dev_priv, 11))
[...]
 	else if (IS_GEN9_LP(dev_priv))
[...]

total: 0 errors, 1 warnings, 1 checks, 33 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
