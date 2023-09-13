Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88DD079F509
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Sep 2023 00:32:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6215410E175;
	Wed, 13 Sep 2023 22:32:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91D3010E171
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Sep 2023 22:32:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694644324; x=1726180324;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=n3KlZQ0R7Z6GzVu0GEmTVZtB+MzksjkMgFcJy5S6jSQ=;
 b=N7OPmbIqVU6f1LZFbs1R7eNmANNkwXQcSg15LaSdvtQH2M4iOT0Nyo2S
 TLkIC78HauNgRZdq/6RGc7KY8l4LDUqhPMbspggq+1kniX7Itf26h78TS
 6WnauIMjI9kaYtZTKnFWQvyus5Qm/wrPNY4K9yNcd8WyQEPtiqN8PxiaV
 jdvsAFLJDHmgZTPbwPCcKJWrRsSVrxcRjuAJoPgnx8uKC/jDxNVLooiKH
 HsgxoywIRJ191g2ISYYU6P06zV+rXqz2cOo2xpT2miH2AKRp2cmRDUgE/
 rWefBB1DhTOCNaokz/RMOvH5WvdPJvpEeZob7HOeORavktWHNYRc7NYps w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="442828879"
X-IronPort-AV: E=Sophos;i="6.02,144,1688454000"; d="scan'208";a="442828879"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2023 15:32:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="991138947"
X-IronPort-AV: E=Sophos;i="6.02,144,1688454000"; d="scan'208";a="991138947"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2023 15:32:03 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Sep 2023 01:32:18 +0300
Message-Id: <20230913223218.540365-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230913223218.540365-1-imre.deak@intel.com>
References: <20230913223218.540365-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/4] drm/i915/dp_mst: Tune down error message
 during payload addition
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

If a sink is removed in the middle of payload addition
drm_dp_add_payload_part1() will fail as expected, either not finding the
payload's MST port or failing the payload-add AUX transaction.

Based on the above tune the error message down to a debug messge.

Cc: Lyude Paul <lyude@redhat.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 1c7f0b6afe475..ff3accebf0a89 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -726,8 +726,8 @@ static void intel_mst_pre_enable_dp(struct intel_atomic_state *state,
 	ret = drm_dp_add_payload_part1(&intel_dp->mst_mgr, mst_state,
 				       drm_atomic_get_mst_payload_state(mst_state, connector->port));
 	if (ret < 0)
-		drm_err(&dev_priv->drm, "Failed to create MST payload for %s: %d\n",
-			connector->base.name, ret);
+		drm_dbg_kms(&dev_priv->drm, "Failed to create MST payload for %s: %d\n",
+			    connector->base.name, ret);
 
 	/*
 	 * Before Gen 12 this is not done as part of
-- 
2.37.2

