Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 407C5CAFC68
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 12:31:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4C3610E528;
	Tue,  9 Dec 2025 11:31:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Bc2tIcip";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 178DE10E525;
 Tue,  9 Dec 2025 11:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765279865; x=1796815865;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=J4AgvHTJcf9CRYuN2bhMbbZ9MlzooIsH2dMM5Yz8H0g=;
 b=Bc2tIcip8bqRJU3Zwixkme+oBSrgaiAqxEOT0DoqzfJ3gluVbcnBExvO
 kg1wrZWz2yTE5VpM7GnFtV2b2SVgOhAg3xc4exySihCWO6BLPoPYVzK/i
 OCtLBO5szJnNCq7UgTJOtVr9dt/igE5zEzLAkQt9fj3PAhIpxhDf5+B5h
 CkGuWfPpiJE/5uNKQK1aLpS9rwQGiNWfFRSdecNAHmSfXetaAIHnSjEe9
 3xfvH49FXGBWLDC0/gFbhGmbLmD/SN6KtRj/kHjaYF6In5+o1S3gKAj14
 gxSS/fMP4WX+aaUc+ayGEp//5MJNBPKpkum2cX0YQTjcE93JbrJkgMQai Q==;
X-CSE-ConnectionGUID: KTzarJT3SsOSR6EtzSiSIw==
X-CSE-MsgGUID: z9aE3nFvRDeH2ZKvEfPMUA==
X-IronPort-AV: E=McAfee;i="6800,10657,11636"; a="78699664"
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="78699664"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 03:31:05 -0800
X-CSE-ConnectionGUID: BUjcQKfuQ6+SrDp5XN3ZmQ==
X-CSE-MsgGUID: DXJYOGnhQPunHeQlqX9KSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="196213438"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 03:31:03 -0800
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: animesh.manna@intel.com, uma.shankar@intel.com, imre.deak@intel.com,
 jouni.hogander@intel.com
Subject: [PATCH 7/9] drm/i915/display: psr enable DC3CO support
Date: Tue,  9 Dec 2025 17:03:30 +0530
Message-ID: <20251209113332.2770263-8-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251209113332.2770263-1-dibin.moolakadan.subrahmanian@intel.com>
References: <20251209113332.2770263-1-dibin.moolakadan.subrahmanian@intel.com>
MIME-Version: 1.0
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

if DC3CO allowed and psr2 is enabled, update dc3co_source

Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 9c616f449ad6..d4c5dc6dcc82 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3007,6 +3007,12 @@ void intel_psr_post_plane_update(struct intel_atomic_state *state,
 		if (crtc_state->crc_enabled && psr->enabled)
 			intel_psr_force_update(intel_dp);
 
+		if (psr->enabled &&
+		    psr->sel_update_enabled &&
+		    intel_dc3co_allowed(display)) {
+			intel_dc3co_source_set(display, DC3CO_SOURCE_PSR2);
+		}
+
 		/*
 		 * Clear possible busy bits in case we have
 		 * invalidate -> flip -> flush sequence.
-- 
2.43.0

