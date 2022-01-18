Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0819E49230C
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jan 2022 10:46:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BB4A1129D1;
	Tue, 18 Jan 2022 09:46:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 76EC01129E0;
 Tue, 18 Jan 2022 09:46:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 739A3A47DF;
 Tue, 18 Jan 2022 09:46:27 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Tue, 18 Jan 2022 09:46:27 -0000
Message-ID: <164249918747.25100.6705475906782623942@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220118092354.11631-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220118092354.11631-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Fix_bandwith_related_cdclk_calculations?=
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

Series: drm/i915: Fix bandwith related cdclk calculations
URL   : https://patchwork.freedesktop.org/series/98975/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
f65f6b681b85 drm/i915: Drop pointless dev_priv argument
9668fabd85a5 drm/i915: Extract skl_ddb_entry_init()
dee30e2a1ae4 drm/i915: Fix plane relative_data_rate calculation
73d19f52835a drm/i915: Introduce skl_plane_ddb_iter
fbf2a65a754f drm/i915: Extract skl_allocate_plane_ddb()
8eb5c0bb1655 drm/i915: Extract skl_crtc_calc_dbuf_bw()
e7ec581a03b3 drm/i915: Tweak plane ddb allocation tracking
988a18fdccaa drm/i915: Split plane data_rate into data_rate+data_rate_y
f3dc6a126906 drm/i915: Pre-calculate plane relative data rate
-:345: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#345: FILE: drivers/gpu/drm/i915/intel_pm.c:5107:
+								iter.start + iter.uv_total[plane_id]);

total: 0 errors, 1 warnings, 0 checks, 302 lines checked
3d9ea614fc38 drm/i915: Remove total[] and uv_total[] from ddb allocation
2eca9b239d7d drm/i915: Nuke intel_bw_calc_min_cdclk()
28a02ba19afc drm/i915: Round up when calculating display bandwidth requirements
08b2d8e87205 drm/i915: Properly write lock bw_state when it changes
e3a2fec61118 drm/i915: Fix DBUF bandwidth vs. cdclk handling
7d55ec242dd3 drm/i915: Add "maximum pipe read bandwidth" checks


