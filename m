Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35AED6DE60A
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Apr 2023 22:54:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71A5C10E116;
	Tue, 11 Apr 2023 20:53:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B169310E116;
 Tue, 11 Apr 2023 20:53:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A9BFAA00CC;
 Tue, 11 Apr 2023 20:53:57 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Tue, 11 Apr 2023 20:53:57 -0000
Message-ID: <168124643766.13170.17752043733432395019@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230406085802.7381-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20230406085802.7381-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Query_compressed_bpp_properly_using_correct_DPC?=
 =?utf-8?q?D_and_DP_Spec_info_=28rev2=29?=
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

Series: drm/i915: Query compressed bpp properly using correct DPCD and DP Spec info (rev2)
URL   : https://patchwork.freedesktop.org/series/116179/
State : warning

== Summary ==

Error: dim checkpatch failed
dc818fbee1db drm/i915: Query compressed bpp properly using correct DPCD and DP Spec info
-:7: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#7: 
Currently we seem to be using wrong DPCD register for reading compressed bpps,

-:89: WARNING:LONG_LINE: line length of 113 exceeds 100 columns
#89: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:274:
+	max_bpp = min(max_bpp, dsc_max_sink_compressed_bppx16(intel_dp->dsc_dpcd, crtc_state, max_bpp / 3) >> 4);

total: 0 errors, 2 warnings, 0 checks, 100 lines checked


