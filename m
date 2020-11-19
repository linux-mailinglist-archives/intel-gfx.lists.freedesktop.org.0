Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50E1B2B9B1E
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Nov 2020 20:08:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F2766E7D9;
	Thu, 19 Nov 2020 19:08:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 84B866E56A;
 Thu, 19 Nov 2020 19:08:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7D4A2A0003;
 Thu, 19 Nov 2020 19:08:28 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Thu, 19 Nov 2020 19:08:28 -0000
Message-ID: <160581290848.18187.3052167026007043782@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201119185401.31883-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20201119185401.31883-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Clean_up_the_plane_data=5Frate_stuff?=
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

Series: drm/i915: Clean up the plane data_rate stuff
URL   : https://patchwork.freedesktop.org/series/84075/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
c0d1ad9d577b drm/i915: Drop pointless total_data_rate argument
076ed52a6259 drm/i915: Drop pointless dev_priv argument
cdea900f9957 drm/i915: Extract skl_ddb_entry_init()
7ff8faaaa6d0 drm/i915: Introduce skl_plane_ddb_iter
a7add21a42fe drm/i915: Extract skl_allocate_plane_ddb()
c961619d2c21 drm/i915: Extract skl_crtc_calc_dbuf_bw()
1f668e243573 drm/i915: Tweak plane ddb allocation tracking
43279666b42c drm/i915: Split plane data_rate into data_rate+data_rate_y
36eeeb55b1ed drm/i915: Extract intel_adjusted_rate()
c2bbd552bb85 drm/i915: Reuse intel_adjusted_rate() for pfit pixel rate adjustment
571740d244d0 drm/i915: Pre-calculate plane relative data rate
-:454: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#454: FILE: drivers/gpu/drm/i915/intel_pm.c:4814:
+								iter.start + iter.uv_total[plane_id]);

total: 0 errors, 1 warnings, 0 checks, 403 lines checked
bee9dd701f76 drm/i915: Remove total[] and uv_total[] from ddb allocation
6837c02a30f5 drm/i915: s/plane_res_b/blocks/ etc.


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
