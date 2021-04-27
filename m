Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 064D236CDEB
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Apr 2021 23:38:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFEEA6E9D0;
	Tue, 27 Apr 2021 21:38:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0594A6E9CE;
 Tue, 27 Apr 2021 21:38:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F3182A7E03;
 Tue, 27 Apr 2021 21:38:51 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Cornij, Nikola" <nikola.cornij@amd.com>
Date: Tue, 27 Apr 2021 21:38:51 -0000
Message-ID: <161955953199.17488.14129697556503081636@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210427212850.35267-1-nikola.cornij@amd.com>
In-Reply-To: <20210427212850.35267-1-nikola.cornij@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/drm=5Fmst=3A_Use_Extended_Base_Receiver_Capability_DPCD?=
 =?utf-8?q?_space?=
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

Series: drm/drm_mst: Use Extended Base Receiver Capability DPCD space
URL   : https://patchwork.freedesktop.org/series/89559/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
63120ebc08ec drm/drm_mst: Use Extended Base Receiver Capability DPCD space
-:22: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 2dcab875e763 ("Revert "drm/dp_mst: Retrieve extended DPCD caps for topology manager"")'
#22: 
This also reverts the 2dcab875e763 (Revert "drm/dp_mst: Retrieve

-:24: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit ad44c03208e4 ("drm/dp_mst: Retrieve extended DPCD caps for topology manager")'
#24: 
original commit ad44c03208e4 (drm/dp_mst: Retrieve extended DPCD caps

-:67: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#67: FILE: drivers/gpu/drm/amd/display/dc/core/dc_link_dp.c:1897:
+bool dc_link_dp_get_max_link_enc_cap(const struct dc_link *link, struct dc_link_settings *max_link_enc_cap)

-:69: WARNING:BRACES: braces {} are not necessary for single statement blocks
#69: FILE: drivers/gpu/drm/amd/display/dc/core/dc_link_dp.c:1899:
+	if (max_link_enc_cap == NULL) {
+		DC_LOG_ERROR("%s: Could not return max link encoder caps", __func__);
+	}

-:69: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!max_link_enc_cap"
#69: FILE: drivers/gpu/drm/amd/display/dc/core/dc_link_dp.c:1899:
+	if (max_link_enc_cap == NULL) {

-:95: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#95: FILE: drivers/gpu/drm/amd/display/dc/dc_link.h:349:
+bool dc_link_dp_get_max_link_enc_cap(const struct dc_link *link, struct dc_link_settings *max_link_enc_cap);

-:127: WARNING:MINMAX: min() should probably be min_t(int, mgr->dpcd[1], mgr->max_link_rate)
#127: FILE: drivers/gpu/drm/drm_dp_mst_topology.c:3717:
+		link_rate = min((int)mgr->dpcd[1], mgr->max_link_rate);

-:177: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#177: FILE: drivers/gpu/drm/drm_dp_mst_topology.c:5905:
+		if ((dpcd_ext[DP_DOWNSTREAMPORT_PRESENT] & DP_DWN_STRM_PORT_PRESENT) &&
+		   ((dpcd_ext[DP_DOWNSTREAMPORT_PRESENT] & DP_DWN_STRM_PORT_TYPE_MASK)

-:202: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#202: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:963:
+					   bios_max_link_rate/27000, conn_base_id);
 					                     ^

total: 2 errors, 4 warnings, 3 checks, 194 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
