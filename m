Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E8E736E0BA
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Apr 2021 23:09:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8BB96EC3F;
	Wed, 28 Apr 2021 21:09:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A26846EC3F;
 Wed, 28 Apr 2021 21:09:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 94F93A47EB;
 Wed, 28 Apr 2021 21:09:16 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nikola Cornij" <nikola.cornij@amd.com>
Date: Wed, 28 Apr 2021 21:09:16 -0000
Message-ID: <161964415660.24076.9675371339598382323@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210428204406.1067318-1-nikola.cornij@amd.com>
In-Reply-To: <20210428204406.1067318-1-nikola.cornij@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/drm=5Fmst=3A_Use_Extended_Base_Receiver_Capability_=28r?=
 =?utf-8?q?ev2=29?=
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

Series: drm/drm_mst: Use Extended Base Receiver Capability (rev2)
URL   : https://patchwork.freedesktop.org/series/89590/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
f0fa6e36ebac drm/drm_mst: Use Extended Base Receiver Capability DPCD space
-:22: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 2dcab875e763 ("Revert "drm/dp_mst: Retrieve extended DPCD caps for topology manager"")'
#22: 
This also reverts 'commit 2dcab875e763 ("Revert "drm/dp_mst: Retrieve

-:67: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#67: FILE: drivers/gpu/drm/amd/display/dc/core/dc_link_dp.c:1897:
+bool dc_link_dp_get_max_link_enc_cap(const struct dc_link *link, struct dc_link_settings *max_link_enc_cap)

-:96: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#96: FILE: drivers/gpu/drm/amd/display/dc/dc_link.h:349:
+bool dc_link_dp_get_max_link_enc_cap(const struct dc_link *link, struct dc_link_settings *max_link_enc_cap);

total: 1 errors, 2 warnings, 0 checks, 201 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
