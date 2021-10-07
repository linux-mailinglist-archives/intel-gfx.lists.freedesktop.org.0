Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8A504252DE
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Oct 2021 14:18:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A80C6F45A;
	Thu,  7 Oct 2021 12:18:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8302E6F45A;
 Thu,  7 Oct 2021 12:18:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7E9ACA0BCB;
 Thu,  7 Oct 2021 12:18:04 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 07 Oct 2021 12:18:04 -0000
Message-ID: <163360908451.5187.7073217289758338441@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211007105727.18439-1-jani.nikula@intel.com>
In-Reply-To: <20211007105727.18439-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/dp=3A_take_LTTPR_into_account_in_128b/132b_rates?=
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

Series: drm/i915/dp: take LTTPR into account in 128b/132b rates
URL   : https://patchwork.freedesktop.org/series/95555/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
49469018e6a6 drm/i915/dp: take LTTPR into account in 128b/132b rates
-:53: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#53: FILE: drivers/gpu/drm/i915/display/intel_dp.c:173:
+							DP_LT_TUNABLE_PHY_REPEATER_FIELD_DATA_STRUCTURE_REV] &

-:56: WARNING:LONG_LINE: line length of 160 exceeds 100 columns
#56: FILE: drivers/gpu/drm/i915/display/intel_dp.c:176:
+				uhbr_rates &= intel_dp->lttpr_common_caps[DP_PHY_REPEATER_128B132B_RATES - DP_LT_TUNABLE_PHY_REPEATER_FIELD_DATA_STRUCTURE_REV];

total: 0 errors, 2 warnings, 0 checks, 29 lines checked


