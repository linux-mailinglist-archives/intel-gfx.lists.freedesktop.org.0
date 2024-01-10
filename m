Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 20B4F829B00
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jan 2024 14:13:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C19A10E79D;
	Wed, 10 Jan 2024 13:13:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A55FC10E791
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jan 2024 13:13:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704892422; x=1736428422;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NFE2B40Zk9zMvrb6pylYNzcIUduefTz8o6enIitfxZQ=;
 b=EMksgu29iOsIFUVUeg48zOha5B2Xu0JlqUA7GqSRsdBlXQwCBpUymYw0
 esy+KWeK2DZee54Am8kB1VGBsZrpY/mVFRWKXtVzQ950cF1+Af30PDsdy
 NnOtRkikd/Ig0uMAhO9xieQnnIdPSZCtfG6bBNN3b3kilRQL0kZSVFxpJ
 X9JIJettrBbFZLDkbZ25BoODSEuHwfT+aRJUqrNKk52t6/3ZJ6QKhecof
 T1fFAdVOLVJgqwV48I9jL5ioDQhhYto15LTuJCuEdomO4Ht0SwDmmes9A
 BxoC2qEkGRQ5a/2BxyEMERPGfyfz4g9oncMDP/RZDPeOIYQ6L+xtW/UCP Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10948"; a="464914041"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; d="scan'208";a="464914041"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2024 05:13:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10948"; a="816347116"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; d="scan'208";a="816347116"
Received: from vsovraso-mobl.ccr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.211.202])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2024 05:13:41 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 09/13] drm/i915/psr: Detect panel replay selective update
 support
Date: Wed, 10 Jan 2024 15:13:00 +0200
Message-Id: <20240110131304.2470006-10-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240110131304.2470006-1-jouni.hogander@intel.com>
References: <20240110131304.2470006-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Detect panel replay selective update support and store it into
intel_psr->sink_panel_replay_su_support.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index be8b1b7a8025..03e41f10873f 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -519,9 +519,15 @@ static void _panel_replay_init_dpcd(struct intel_dp *intel_dp)
 		return;
 	}
 
-	drm_dbg_kms(&i915->drm,
-		    "Panel replay is supported by panel\n");
 	intel_dp->psr.sink_panel_replay_support = true;
+
+	if (pr_dpcd & DP_PANEL_REPLAY_SU_SUPPORT)
+		intel_dp->psr.sink_panel_replay_su_support = true;
+
+	drm_dbg_kms(&i915->drm,
+		    "Panel replay %sis supported by panel\n",
+		    intel_dp->psr.sink_panel_replay_su_support ?
+		    "selective_update " : "");
 }
 
 static void _psr_init_dpcd(struct intel_dp *intel_dp)
-- 
2.34.1

