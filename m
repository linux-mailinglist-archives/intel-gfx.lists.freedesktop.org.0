Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 33D874E1F9D
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Mar 2022 05:48:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 436F210E60E;
	Mon, 21 Mar 2022 04:48:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6403910E60E
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Mar 2022 04:48:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647838087; x=1679374087;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=G1q94vMPDh34INP+LrJp8WrXQiAPljoyE6enwhiCA20=;
 b=B7HqVDbr6fWrPMhgHjTtHQC68veVz9I3i1gVExczGu5WGkgSZ6C07jZH
 5JdpMH1jHahOkQh8swHgz04WLtklqnofwHeVFZh1O8GZqZKAsRc/schsR
 foCbKuPAphTvi1HS3aGkZJBLyx8dj/71EsP2fsQqt4syPs2IGPS3pCzkE
 5IDaJWGXZF4/zwCjGvBORuMhvOM6lckGv10I4qzimy3MLpMGYiqenXlrq
 ItSqBImjNsX5qw24v7tEkGogR2HutJeHCNyGGgmF4yd7UtYrjTDsCC3wE
 bNL666lnBD8xYZz6Gt9fW3FMDEtpItAoTiVZJoq6r1C6K+LwD+SCCv0oW g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10292"; a="318177087"
X-IronPort-AV: E=Sophos;i="5.90,197,1643702400"; d="scan'208";a="318177087"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2022 21:48:06 -0700
X-IronPort-AV: E=Sophos;i="5.90,197,1643702400"; d="scan'208";a="784870830"
Received: from cooperch-ml.itwn.intel.com ([10.5.231.29])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2022 21:48:05 -0700
From: Cooper Chiou <cooper.chiou@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 21 Mar 2022 12:43:30 +0800
Message-Id: <20220321044330.27723-1-cooper.chiou@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/edid: filter DisplayID v2.0 CTA block in
 audio detection
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
Cc: Jani Nikula <jani.nikula@intel.com>, Cooper Chiou <cooper.chiou@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In DisplayID v2.0 CTS data block 0x81 case, there is no any audio
information definition, but drm_detect_monitor_audio didn't filter
it so that it caused eDP dummy audio card be detected improperly.

We observed this issue on some AUO/BOE eDP panel with DID v2.0 CTA
block, and fix issue by adding filter for edid_ext[0]=DATA_BLOCK_CTA
case.

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Shawn C Lee <shawn.c.lee@intel.com>

Signed-off-by: Cooper Chiou <cooper.chiou@intel.com>
---
 drivers/gpu/drm/drm_edid.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index f5f5de362ff2..6c9ae4b130bd 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -4845,7 +4845,7 @@ bool drm_detect_monitor_audio(struct edid *edid)
 	int start_offset, end_offset;
 
 	edid_ext = drm_find_cea_extension(edid);
-	if (!edid_ext)
+	if (!edid_ext || (edid_ext[0] == DATA_BLOCK_CTA))
 		goto end;
 
 	has_audio = ((edid_ext[3] & EDID_BASIC_AUDIO) != 0);
-- 
2.17.1

