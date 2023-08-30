Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3F7378D3D6
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Aug 2023 10:04:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E975610E4ED;
	Wed, 30 Aug 2023 08:04:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3F4510E4D0
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Aug 2023 08:04:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693382672; x=1724918672;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CaxyJ1w9mFIYL12fY7mZosPFjS6oe8Bx1csvuD2nkf8=;
 b=LP8BSeRCsRxxrdBCSIPX9pVMx37mujSyWLuwlwnmt6tFWumalWTYKeey
 8PC7YKMwFzv4RPGUO9OyUNiVYzmPy5/cAhy6sOlLerX5sF3o57vyn6iqy
 csmtN1WTSmbV72zyWTQj2J8yS1KML5y1r2mM26x5sC1XXH9tRXi2yPB09
 C7ZxZzCdDRf7yQ9drmmtpcqh7dA/O5WLio7zTGPySsrRjW0kspMiGf5AO
 cJvLB1trmGh5pDkYIS4J65hmB5TkAzwj2bwD+f39u+A35aoYTAUpZFk7q
 q8UpxYm/rGH11AKUc1RWflpx4E+uNlCCHJBrMqSW1DfsRTCGTbm9LKVL4 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10817"; a="439526923"
X-IronPort-AV: E=Sophos;i="6.02,213,1688454000"; d="scan'208";a="439526923"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2023 01:02:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="882646724"
Received: from alorinti-mobl3.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.252.33.134])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2023 01:02:44 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Aug 2023 11:02:17 +0300
Message-Id: <20230830080219.2529281-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230830080219.2529281-1-jouni.hogander@intel.com>
References: <20230830080219.2529281-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 2/4] drm/i915/psr: Clear frontbuffer busy
 bits on flip
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

We are planning to move flush performed from work queue. This
means it is possible to have invalidate -> flip -> flush sequence.
Handle this by clearing possible busy bits on flip.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 72887c29fb51..887d0b77ae9a 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2230,6 +2230,12 @@ static void _intel_psr_post_plane_update(const struct intel_atomic_state *state,
 		if (crtc_state->crc_enabled && psr->enabled)
 			psr_force_hw_tracking_exit(intel_dp);
 
+		/*
+		 * Clear possible busy bits in case we have
+		 * invalidate -> flip -> flush sequence.
+		 */
+		intel_dp->psr.busy_frontbuffer_bits = 0;
+
 		mutex_unlock(&psr->lock);
 	}
 }
-- 
2.34.1

