Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F2567366F2
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jun 2023 11:05:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83D1210E189;
	Tue, 20 Jun 2023 09:05:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 053D310E181;
 Tue, 20 Jun 2023 09:05:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F16D2AA3D8;
 Tue, 20 Jun 2023 09:05:47 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>
Date: Tue, 20 Jun 2023 09:05:47 -0000
Message-ID: <168725194798.10438.6428994114797767058@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230620074400.1054530-1-arun.r.murthy@intel.com>
In-Reply-To: <20230620074400.1054530-1-arun.r.murthy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/display/dp=3A_Add_fallback_on_LT_failure_for_DP2?=
 =?utf-8?q?=2E0?=
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

Series: drm/i915/display/dp: Add fallback on LT failure for DP2.0
URL   : https://patchwork.freedesktop.org/series/119567/
State : warning

== Summary ==

Error: dim checkpatch failed
ccd7b37665f6 drm/i915/display/dp: Add fallback on LT failure for DP2.0
-:30: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#30: FILE: drivers/gpu/drm/i915/display/intel_dp.c:668:
+				intel_dp->max_link_lane_count = intel_dp_max_common_lane_count(intel_dp);

total: 0 errors, 1 warnings, 0 checks, 32 lines checked


