Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3B947A0E4E
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Sep 2023 21:27:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46B3110E588;
	Thu, 14 Sep 2023 19:27:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBC2510E59D
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Sep 2023 19:27:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694719636; x=1726255636;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=495xA9ZNTEeSyA/fuKjRDRmVqQUe+zuNFal39we4Cos=;
 b=SiA03d0oI/u/kiU2Dh35FaIddWdAls4hNk7J9TbThBjRhMeGJeM5fN2I
 NvDiZL4245hVShAdbWB4pvRGa4XZaI5vUov1mHP1JkAnoigRjE98pK01Y
 JkFudc0joZZFUS9kYNI4+AB0wV6iXmXcmU95NCh60segJt0L7P73MpaKn
 Fci//6C0S46QOY8I1x1GJAaQ2Q4vtxIZ2QLSdJ1I7SVTpSKJ38lLfltHV
 WmAFz10a7rOpymNvvnN5GobMAGaeffpqqPs5voUqPIz+CrZP4kOkpq897
 haeUFyUBwtbhz6pPxxPVaaFGSzOICX2Z9dGQyflG+oqYIyGlwBb0x4iuh w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="465421795"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="465421795"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 12:27:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="779790637"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="779790637"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 12:27:14 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Sep 2023 22:26:59 +0300
Message-Id: <20230914192659.757475-26-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230914192659.757475-1-imre.deak@intel.com>
References: <20230914192659.757475-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 25/25] drm/i915/dp_mst: Check BW limitations
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
index bcfd5f19d994f..64867289174d9 100644
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

