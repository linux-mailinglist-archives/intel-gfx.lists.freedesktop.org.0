Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00D266C47BB
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Mar 2023 11:34:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8938210E901;
	Wed, 22 Mar 2023 10:34:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D09610E8E8
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Mar 2023 10:34:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679481282; x=1711017282;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=E3MxHmggTumlTIgLzmBnxWGg8GqqriU6T/dEDBKr+pc=;
 b=PPF4t2mA33NrWVhpEsy/mt0lzg9eO3RA8yeIY84AaoN480olI3h6aHem
 UJmwoqgbjJ3dYYNKLZ+XcGyGhifDV+hadHjgwN/zOt5c55UUwqTQcRH55
 9L08uFMlQ/bFSXuQzhmMZyM4YilAfPa8WOEKTJHz2fm3lCM9fcrJaSsTF
 0bw/xxztF9dtvYLE5+nqaL82FpEGy9tTjZkQvb83i81QTnHPfyizz3mam
 XPXm2hFptmctz+MoKrTAbTCBHMmw3JasnWOHblBMvtGi5bsX9DEq7Cj4t
 MpNLt0wxZEOhAuETjucMWBEjyC17GSaRl7FKKwjhtIa78XUM3qWuWEsa3 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="340716634"
X-IronPort-AV: E=Sophos;i="5.98,281,1673942400"; d="scan'208";a="340716634"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 03:34:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="746249852"
X-IronPort-AV: E=Sophos;i="5.98,281,1673942400"; d="scan'208";a="746249852"
Received: from swcompto-mobl1.amr.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.252.63.36])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 03:34:35 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Mar 2023 12:34:07 +0200
Message-Id: <20230322103412.123943-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230322103412.123943-1-jouni.hogander@intel.com>
References: <20230322103412.123943-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 1/6] drm/i915/psr: Unify pre/post hooks
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

pre/post hooks are doing things differently. Unify them.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 31084d95711d..8dbf452d63c2 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1954,23 +1954,22 @@ static void _intel_psr_post_plane_update(const struct intel_atomic_state *state,
 					     crtc_state->uapi.encoder_mask) {
 		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 		struct intel_psr *psr = &intel_dp->psr;
+		bool keep_disabled = false;
 
 		mutex_lock(&psr->lock);
 
-		if (psr->sink_not_reliable)
-			goto exit;
-
 		drm_WARN_ON(&dev_priv->drm, psr->enabled && !crtc_state->active_planes);
 
-		/* Only enable if there is active planes */
-		if (!psr->enabled && crtc_state->active_planes)
+		keep_disabled |= psr->sink_not_reliable;
+		keep_disabled |= !crtc_state->active_planes;
+
+		if (!psr->enabled && !keep_disabled)
 			intel_psr_enable_locked(intel_dp, crtc_state);
 
 		/* Force a PSR exit when enabling CRC to avoid CRC timeouts */
 		if (crtc_state->crc_enabled && psr->enabled)
 			psr_force_hw_tracking_exit(intel_dp);
 
-exit:
 		mutex_unlock(&psr->lock);
 	}
 }
-- 
2.34.1

