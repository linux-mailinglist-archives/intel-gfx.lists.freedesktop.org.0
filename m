Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DF2E7645A5
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jul 2023 07:35:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62FA710E0DC;
	Thu, 27 Jul 2023 05:35:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1251A10E0D6
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jul 2023 05:35:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690436146; x=1721972146;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=s8YsLJg5dDLHw28kMnal3GDUP6BkhS5B2OJXZ1LDav0=;
 b=RxAiHXhMRxY+/xQ0gVD6W4KGdcvbn2vHJjJt/uDSk14eR4RkbxajILuc
 tr+8fhfaS4l9QIAXHARiOL0foGVfJBzc2bH2xy/cnV2M6A6WoCz94raqA
 uAc9GMwuxFveBT91s+DEe2x1tz7ohoMy5Dko0o9K9521HaLiYF92aIwZd
 WtmlAw7Cze6wCakH8ybEWjsYVp/SM9Vv2Fz9Jb6qbNoWbepVSYgTYE0DW
 cvyMTQSjvlReZsuHKMNa44AH2Gsg4wy95epLEFxzsAdKvd3OYiXLaXf4m
 qj7fTESrXsM7DFJUNsjel1idkD6dxKbILBMwmjfy4KIM3IBMbw6WHHko+ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="368227207"
X-IronPort-AV: E=Sophos;i="6.01,234,1684825200"; d="scan'208";a="368227207"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2023 22:35:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="676978335"
X-IronPort-AV: E=Sophos;i="6.01,234,1684825200"; d="scan'208";a="676978335"
Received: from vgrigo2x-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.252.35.8])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2023 22:35:44 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Jul 2023 08:35:16 +0300
Message-Id: <20230727053518.709345-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230727053518.709345-1-jouni.hogander@intel.com>
References: <20230727053518.709345-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/4] drm/i915/psr: Clear frontbuffer busy
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
index 04ab034a8d57..3a18334665fa 100644
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

