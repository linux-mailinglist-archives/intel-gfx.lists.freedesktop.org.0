Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1271A302B8D
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jan 2021 20:25:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 704566E17B;
	Mon, 25 Jan 2021 19:25:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 589EA6E17B;
 Mon, 25 Jan 2021 19:25:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 52139A0019;
 Mon, 25 Jan 2021 19:25:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Mon, 25 Jan 2021 19:25:39 -0000
Message-ID: <161160273933.3419.2909447273124999856@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210125173636.1733812-1-imre.deak@intel.com>
In-Reply-To: <20210125173636.1733812-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/dp/mst=3A_Export_drm=5Fd?=
 =?utf-8?b?cF9nZXRfdmNfcGF5bG9hZF9idygp?=
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

Series: series starting with [1/2] drm/dp/mst: Export drm_dp_get_vc_payload_bw()
URL   : https://patchwork.freedesktop.org/series/86267/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
b6d4c956f6d4 drm/dp/mst: Export drm_dp_get_vc_payload_bw()
54fe7ced0a5a drm/i915: Fix the MST PBN divider calculation
-:40: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#40: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:72:
+						      drm_dp_get_vc_payload_bw(crtc_state->port_clock,

-:41: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#41: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:73:
+									       crtc_state->lane_count));

total: 0 errors, 2 warnings, 0 checks, 10 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
