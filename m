Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1390B669801
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Jan 2023 14:06:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12B8B10E1EE;
	Fri, 13 Jan 2023 13:06:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B032710E9FD
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Jan 2023 13:06:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673615204; x=1705151204;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QO302Xjtg9IzWt6SE/8L1uUUy1kF4GCw9AxKXXBU99s=;
 b=FwFyrRB8UkWXXAzIw4IY/6lWNyyMxXCB3M5CD6Rta1D9YTGIbdXg7Yvo
 KeUzQ27GMYNZkXYnN71K5yams5irDZUJBY71h/13mG42Lf6fFfYItkB6z
 N7VLcfPJ4u5FSQxxNACcDjsMaTywm0NWK67VZrRN+LktBPHjW/NrqFadL
 mnMqdB2RRaDPT7zxMxjNMTR7m56FR8u2PNbYAXDZQO6YNU/FcLTjQ8Q5n
 6rYO6tS+e8boW4l4dazQheRkMIH8BmeDTZJJxE6SPDdAxg5nIeIa4nzd5
 S6hUtuQ0Y9QMmNlTkA5UL7G6zAS3GTr/Rta3T/6bVKfWSk0U3OVNIkUrf Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="386333498"
X-IronPort-AV: E=Sophos;i="5.97,214,1669104000"; d="scan'208";a="386333498"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2023 05:06:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="832063548"
X-IronPort-AV: E=Sophos;i="5.97,214,1669104000"; d="scan'208";a="832063548"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orsmga005.jf.intel.com with ESMTP; 13 Jan 2023 05:06:29 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Jan 2023 15:06:28 +0200
Message-Id: <20230113130628.19772-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Implement UHBR bandwidth check
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

According to spec, we should check if output_bpp * pixel_rate is less
than DDI clock * 72, if UHBR is used.

HSDES: 1406899791
BSPEC: 49259

v2: - Removed wrong comment(Rodrigo Vivi)
    - Added HSDES to the commit msg(Rodrigo Vivi)
    - Moved UHBR check to the MST specific code

v3: - Changed commit subject(Rodrigo Vivi)
    - Fixed the error message if check fails(Rodrigo Vivi)

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 8b0e4defa3f1..36e368995bef 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -339,10 +339,20 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 		ret = intel_dp_dsc_compute_config(intel_dp, pipe_config,
 						  conn_state, &limits,
 						  pipe_config->dp_m_n.tu, false);
-	}
+		if (ret < 0)
+			return ret;
 
-	if (ret)
-		return ret;
+		if (intel_dp_is_uhbr(pipe_config)) {
+			int output_bpp = pipe_config->dsc.compressed_bpp;
+
+			if (output_bpp * adjusted_mode->crtc_clock >=
+			    pipe_config->port_clock * 72) {
+				drm_dbg_kms(&dev_priv->drm, "UHBR check failed(required bw %d available %d)\n",
+					    output_bpp * adjusted_mode->crtc_clock, pipe_config->port_clock * 72);
+				return -EINVAL;
+			}
+		}
+	}
 
 	ret = intel_dp_mst_update_slots(encoder, pipe_config, conn_state);
 	if (ret)
-- 
2.37.3

