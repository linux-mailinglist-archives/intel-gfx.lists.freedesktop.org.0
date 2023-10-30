Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D02277DBD35
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Oct 2023 16:59:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05B7E10E32C;
	Mon, 30 Oct 2023 15:59:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50EBE10E32B
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Oct 2023 15:58:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698681539; x=1730217539;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=c7eXhRgLgeCDK1OVexypFMvjyYkAbkk6cMDfHnobfls=;
 b=GenpQgjDor7IUYaRH/vkoIlp+kv9zJ4dw5i52+mv501xDYr0tXmz7dGU
 StcSgZgunWYw3THeguPtCfad5ZjbewJynxLID/JblEYma3TdC5VEQ+ThN
 Bqau/Jh1AKTmGrIfEgun70w+MXrVLAiEEUtOawz/cZGtvT0WgNnWgd6iT
 AnU7uzibpoe05icR2KnW4IY0KV2JSSawlZRrA7jo5V5B9cHc1Q7slLFrl
 CPKgXuSjj+tDnGwjLiEMJuMJOBT8U/Rx5NiceSe/nON3opPXf8okwm0Do
 6x7Iv9Aa1vVS1BygOoIgmjNJdVCOfqEIZhr7D/nIp3qVQZRUEgit4p8f2 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="974539"
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; 
   d="scan'208";a="974539"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2023 08:58:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="789494068"
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; d="scan'208";a="789494068"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2023 08:58:57 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Oct 2023 17:58:42 +0200
Message-Id: <20231030155843.2251023-30-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231030155843.2251023-1-imre.deak@intel.com>
References: <20231030155843.2251023-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 29/30] drm/i915/dp_mst: Check BW limitations
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

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index c9447df2ea7c3..cf82832d6a951 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -203,13 +203,7 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
 		if (slots >= 0) {
 			drm_WARN_ON(&i915->drm, slots != remote_m_n.tu);
 
-			ret = drm_dp_mst_atomic_check(state);
-			/*
-			 * If we got slots >= 0 and we can fit those based on check
-			 * then we can exit the loop. Otherwise keep trying.
-			 */
-			if (!ret)
-				break;
+			break;
 		}
 	}
 
-- 
2.39.2

