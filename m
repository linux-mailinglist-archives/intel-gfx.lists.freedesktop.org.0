Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 004DE77FBD2
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Aug 2023 18:16:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A56410E51F;
	Thu, 17 Aug 2023 16:16:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 112E610E522
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Aug 2023 16:16:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692288980; x=1723824980;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ZmL3KrheKKy2MRK7aHQdiPvQQRVMi2EcKgo6TL7/v9Y=;
 b=CR2ufxELvj2hz9Xc5X+W2Q8PoVMn/0qGSOgKY7CbBUpu072meRZwVhwq
 1CSuIOwWS8aiAsh+DJiU/uFIcgumvSbh0jG6j3XERn8uoaYQxq4/oJxp8
 Qwbr5JtbGJYWJbu/6KLS0VLY1YvdlEScpqik+0+asIVW5J+uqoiKAAWcU
 Fep1WEyyGUea1u00uS79BxTbuGNI6R4G2OH3Yy8yuXrViSUbUxMoR3sVd
 tGlZipFfSbQt74vR4RRpBotJwaDTiTgwbZ2c3V3+WFiYeo/0XaGEdCmL6
 0aOkHpAmrXNz7nFgZ0jic+gPknoJBEcRuhMyWV06X50BxQl4mqbecmrTK w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="357826764"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="357826764"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 09:15:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="711601369"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="711601369"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 09:15:03 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Aug 2023 19:14:56 +0300
Message-Id: <20230817161456.3857111-18-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230817161456.3857111-1-imre.deak@intel.com>
References: <20230817161456.3857111-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 17/17] drm/i915/dp_mst: Check BW limitations
 only when all streams are computed
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
index 686ce61e16f8d..35a9bccd68d9b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -120,15 +120,8 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
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

