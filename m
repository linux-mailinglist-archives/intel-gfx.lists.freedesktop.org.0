Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BFB594FC2D8
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Apr 2022 19:02:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FA5110E0D0;
	Mon, 11 Apr 2022 17:02:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0859C10E0D0;
 Mon, 11 Apr 2022 17:02:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 043AFA0118;
 Mon, 11 Apr 2022 17:02:04 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Mon, 11 Apr 2022 17:02:04 -0000
Message-ID: <164969652401.2974.9256673385119771569@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220408172154.807900-1-imre.deak@intel.com>
In-Reply-To: <20220408172154.807900-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv3=2C1/2=5D_drm/dp=3A_Factor_out_a_?=
 =?utf-8?q?function_to_probe_a_DPCD_address_=28rev3=29?=
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

Series: series starting with [v3,1/2] drm/dp: Factor out a function to probe a DPCD address (rev3)
URL   : https://patchwork.freedesktop.org/series/102428/
State : warning

== Summary ==

Error: dim checkpatch failed
7a09c6bb44f9 drm/dp: Factor out a function to probe a DPCD address
-:15: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#15: 
v3: Add tracing for the 1-byte read even if the read was successful. (Khaled)

total: 0 errors, 1 warnings, 0 checks, 58 lines checked
3e0afbca1857 drm/i915/dp: Add workaround for spurious AUX timeouts/hotplugs on LTTPR links
-:76: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#76: FILE: drivers/gpu/drm/i915/display/intel_dp_link_training.c:200:
+		if (drm_dp_dpcd_probe(&intel_dp->aux, DP_LT_TUNABLE_PHY_REPEATER_FIELD_DATA_STRUCTURE_REV))

total: 0 errors, 1 warnings, 0 checks, 49 lines checked


