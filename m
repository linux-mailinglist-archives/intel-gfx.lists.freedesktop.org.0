Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B225786971
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 10:05:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6040B10E4F7;
	Thu, 24 Aug 2023 08:05:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D2B210E4F9
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 08:05:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692864329; x=1724400329;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=4OpeodefDWzI8YvUEefqmEu9/Pn1R3XYKqn6kDI4eQ8=;
 b=cqnWR/AKrTJDIUMcozmQTrXevB2wPaRcm3XWwqHLMkCobDNbko+hesRV
 FiLHjiT1WgR57duGz5wq7Va/smBeDG6NAw8NPbeMOX7w9+m+VNNwkJUbp
 kKdAe/mHSEUz6fJa+0gp/0avpeyYmc1/AWVXfiC1H8C5Dl4WdSAYTin7Z
 FIjShxN2UhilC+B0K6xrgF301U/tSqV3bqnr5GNQg8/qq5Jgs5yN7Nuh4
 gLcsYE46pIdkiJi2LESqh4SD5mAKMzMYS3giZcJptSVHCtZX/NT7nQU5C
 j1vI36hfPg1Yy+Az8ToE8iCK8H3HQ837SKQEg5Q0ZFgrNpkTgQkqDePMY A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="374345913"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="374345913"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 01:05:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="880710366"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 01:05:33 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Aug 2023 11:05:17 +0300
Message-Id: <20230824080517.693621-23-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230824080517.693621-1-imre.deak@intel.com>
References: <20230824080517.693621-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 22/22] drm/i915/dp_mst: Check BW limitations
 only after all streams are computed
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

After the previous patch the BW limits on the whole MST topology will be
checked after computing the state for all the streams in the topology.
Accordingly remove the check during the stream's encoder compute config
step, to prevent failing an atomic commit due to a BW limit, if this can
be resolved only by reducing the BW of other streams on the same MST
link.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 11 ++---------
 1 file changed, 2 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 3c9b3a2ac88a2..1d6d0fe6c3047 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -121,15 +121,8 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
 		if (slots == -EDEADLK)
 			return slots;
 
-		if (slots >= 0) {
-			ret = drm_dp_mst_atomic_check(state);
-			/*
-			 * If we got slots >= 0 and we can fit those based on check
-			 * then we can exit the loop. Otherwise keep trying.
-			 */
-			if (!ret)
-				break;
-		}
+		if (slots >= 0)
+			break;
 	}
 
 	/* We failed to find a proper bpp/timeslots, return error */
-- 
2.37.2

