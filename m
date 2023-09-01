Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE66478FAEF
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Sep 2023 11:35:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6CE810E750;
	Fri,  1 Sep 2023 09:35:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 113D110E758
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Sep 2023 09:35:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693560915; x=1725096915;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Q4XCbBkOzmtZI5hSA1MefQIMGAKm3yjx7dotr/V18Gk=;
 b=OmHp5BsYSdyFD/8PBZL4OJT2VcSJTTXDPKZ2k+rKDlOltjDEjizB4DHh
 ugq1aEYx+VLTeRIGaabVZpd97uPUOO5qU/Z3c/T/QNHPqu3L2mF8AJLV6
 6AukrRgJ6+UO+UZ4U5v83l7IbdYB3ut6V/nta43pA5jvHGMpXSCqoiZV4
 zLpBXTfNwUvtQ901ID0QLk8vNdSr3jo6alc7vbkDWjiw761KcC2zsYs9C
 yObTon9zj1HblAJcrjswPZnPAUpPcezegrii3lzuBEYBjl+CaVNkdJAI2
 GAXuC9ZMslk3CN0LcpeypggTvDDFNRIrIUOP8fQgpF8puEjP+MugIbklS A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="378906680"
X-IronPort-AV: E=Sophos;i="6.02,219,1688454000"; d="scan'208";a="378906680"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2023 02:35:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="689709245"
X-IronPort-AV: E=Sophos;i="6.02,219,1688454000"; d="scan'208";a="689709245"
Received: from haslam-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.252.58.201])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2023 02:35:13 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  1 Sep 2023 12:34:58 +0300
Message-Id: <20230901093500.3463046-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230901093500.3463046-1-jouni.hogander@intel.com>
References: <20230901093500.3463046-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 2/4] drm/i915/psr: Clear frontbuffer busy
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
index 79e57a5e1738..b9e38acc5132 100644
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

