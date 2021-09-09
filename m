Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 02A4A405804
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Sep 2021 15:48:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 168086E85F;
	Thu,  9 Sep 2021 13:48:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EA4376E85F;
 Thu,  9 Sep 2021 13:48:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E3D39AA0EA;
 Thu,  9 Sep 2021 13:48:21 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 09 Sep 2021 13:48:21 -0000
Message-ID: <163119530190.16812.4888865882867263924@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1631191763.git.jani.nikula@intel.com>
In-Reply-To: <cover.1631191763.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/dp=3A_dp_2=2E0_enabling_prep_work_=28rev3=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915/dp: dp 2.0 enabling prep work (rev3)
URL   : https://patchwork.freedesktop.org/series/93800/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
a3665dc8b3d2 drm/dp: add DP 2.0 UHBR link rate and bw code conversions
68ec9d98ee90 drm/dp: use more of the extended receiver cap
48940950af3c drm/dp: add LTTPR DP 2.0 DPCD addresses
a2c94be7e9b9 drm/dp: add helper for extracting adjust 128b/132b TX FFE preset
c762623aaaba drm/i915/dg2: add DG2+ TRANS_DDI_FUNC_CTL DP 2.0 128b/132b mode
e99cd06140c4 drm/i915/dp: add helper for checking for UHBR link rate
9334d33d2624 drm/i915/dp: use 128b/132b TPS2 for UHBR+ link rates
13bcc2d6e808 drm/i915/dp: select 128b/132b channel encoding for UHBR rates
1fc3c6d399c1 drm/i915/dg2: configure TRANS_DP2_CTL for DP 2.0
23ec558b7af4 drm/i915/dp: add HAS_DP20 macro
fcf2455de71f drm/i915/dg2: use 128b/132b transcoder DDI mode
5a7810bd5e6f drm/i915/dg2: configure TRANS_DP2_VFREQ{HIGH, LOW} for 128b/132b
c586238887e7 drm/i915/dg2: update link training for 128b/132b
-:27: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#27: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:1404:
+		return intel_dp->train_set[0] & DP_TX_FFE_PRESET_VALUE_MASK;
+	} else {

total: 0 errors, 1 warnings, 0 checks, 139 lines checked


