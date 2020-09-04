Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D896F25D09B
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Sep 2020 06:36:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54CB56EA7D;
	Fri,  4 Sep 2020 04:35:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E48FD6EA7C;
 Fri,  4 Sep 2020 04:35:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E176EA0094;
 Fri,  4 Sep 2020 04:35:58 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vidya Srinivas" <vidya.srinivas@intel.com>
Date: Fri, 04 Sep 2020 04:35:58 -0000
Message-ID: <159919415892.8518.6559019975798964472@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <1599193291-2705-1-git-send-email-vidya.srinivas@intel.com>
In-Reply-To: <1599193291-2705-1-git-send-email-vidya.srinivas@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/3=5D_drm/dp=3A_Add_PHY=5FTEST=5FP?=
 =?utf-8?q?ATTERN_CP2520_Pattern_2_and_3?=
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

Series: series starting with [1/3] drm/dp: Add PHY_TEST_PATTERN CP2520 Pattern 2 and 3
URL   : https://patchwork.freedesktop.org/series/81316/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
476360697e13 drm/dp: Add PHY_TEST_PATTERN CP2520 Pattern 2 and 3
638277dcfac6 drm/i915/dp: TPS4 PHY test pattern compliance support
b6a9310ded5d drm/i915/dp: DP PHY compliance for EHL/JSL
-:66: WARNING:LINE_CONTINUATIONS: Avoid line continuations in quoted strings
#66: FILE: drivers/gpu/drm/i915/display/intel_dp.c:5365:
+		DRM_DEBUG_KMS("Set 80Bit Custom Phy Test Pattern \

-:188: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#188: FILE: drivers/gpu/drm/i915/display/intel_dp.c:5558:
+			drm_dbg_kms(&i915->drm,
+				"PHY compliance for platform not supported\n");

total: 0 errors, 1 warnings, 1 checks, 194 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
