Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AB2636CEC6F
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 17:11:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0147F10EB09;
	Wed, 29 Mar 2023 15:11:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F72610EB09
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 15:11:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680102667; x=1711638667;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=E3MxHmggTumlTIgLzmBnxWGg8GqqriU6T/dEDBKr+pc=;
 b=TjLS4u0TQZ3HW2EJW4WhIeC4DRdRBl2dfaspKI+YRYApfZxFVTo0fwGR
 hKi0VdJWlyw4QNuGW0hEHTGGaR73UnlRGE1VwT/IGDTK95boDHDhsjTax
 yOHUlymqXrdGgozGxk9jqrhqlHuDGJrNGlH3BtNdpEFisEOHSUOYBWq9P
 WeA98UZpVTE0iMzTcT3pj6dsu9FixzUtOD3JAnK5CAKzryxWR8QxOcnun
 T2yQEv6iwJtleFBn9mL0UW0UQ7/dKIztI+bJUOsPPwK6Jb6ImhIPHKed9
 9upMGMLFPDH010dnS+jbTZUXUyPk0c0ztTHTvUnz7qdmilAF4A8SWicXH g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="368672863"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="368672863"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 08:07:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="753625981"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="753625981"
Received: from pgarraul-mobl2.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.251.223.204])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 08:07:41 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Mar 2023 18:06:58 +0300
Message-Id: <20230329150703.432072-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230329150703.432072-1-jouni.hogander@intel.com>
References: <20230329150703.432072-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v7 1/6] drm/i915/psr: Unify pre/post hooks
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

