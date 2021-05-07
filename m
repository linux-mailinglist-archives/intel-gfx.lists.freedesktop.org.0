Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F22A376987
	for <lists+intel-gfx@lfdr.de>; Fri,  7 May 2021 19:35:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9D326E0D1;
	Fri,  7 May 2021 17:34:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id BDA306E0D1;
 Fri,  7 May 2021 17:34:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B6ED4A00E6;
 Fri,  7 May 2021 17:34:57 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nikola Cornij" <nikola.cornij@amd.com>
Date: Fri, 07 May 2021 17:34:57 -0000
Message-ID: <162040889772.10704.4365823040006342947@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210503172109.22877-1-nikola.cornij@amd.com>
In-Reply-To: <20210503172109.22877-1-nikola.cornij@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv1=2C1/1=5D_drm/dp=5Fmst=3A_Use_kHz?=
 =?utf-8?q?_as_link_rate_units_when_settig_source_max_link_caps_at_init_?=
 =?utf-8?b?KHJldjIp?=
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

Series: series starting with [v1,1/1] drm/dp_mst: Use kHz as link rate units when settig source max link caps at init (rev2)
URL   : https://patchwork.freedesktop.org/series/89753/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
bc995082bc94 drm/dp_mst: Use kHz as link rate units when settig source max link caps at init
-:44: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#44: FILE: drivers/gpu/drm/drm_dp_mst_topology.c:3725:
+		link_rate = min_t(int, drm_dp_bw_code_to_link_rate(mgr->dpcd[1]), mgr->max_link_rate);

total: 0 errors, 1 warnings, 0 checks, 88 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
