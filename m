Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DCD9E66408D
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Jan 2023 13:33:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9A3510E064;
	Tue, 10 Jan 2023 12:33:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3698910E064
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Jan 2023 12:33:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673354022; x=1704890022;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1i3LbwulTjIHk2SHr5kfCX1anOXxvYuABdjQShR62c0=;
 b=E6iGHbENkOnYcsJwR7YP4yict29ujiZNnjLqrfB4pk5tk5jg9/RV1xRT
 tU8/GNPrv9B6HrofKuFhje7jQNcFRTaKsCPhwHrzZhLqevrb3iocU/Iv5
 7tOJ3u0yOZrVBAIg6KaP5N7kwykpu314hCtHduwjDqw0s/r0jtLGYTvTC
 Hbkd2rz5bBHm4BcIvdVFH0PXaFZPKciKkJE3QiPd2Eq0AS8TR5eqil7SB
 LhlukXP0Syj6U9HKOSELoGFTJaUaulX98l9lra4zYsvz36IhPAicxLCit
 Fjv942FpiKRRclzR4STXFwAkCekh2QW1Ur/u5tvy2Khmd4I6cDInE3IZK w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10585"; a="321833735"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="321833735"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2023 04:33:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10585"; a="720322418"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="720322418"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by fmsmga008.fm.intel.com with ESMTP; 10 Jan 2023 04:33:40 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Jan 2023 14:33:38 +0200
Message-Id: <20230110123338.20196-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Implement workaround for DP2 UHBR
 bandwidth check
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

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 8b0e4defa3f1..1f1f7f5f6501 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -339,10 +339,19 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
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
+				drm_dbg_kms(&dev_priv->drm, "DP2 UHBR check failed\n");
+				return -EINVAL;
+			}
+		}
+	}
 
 	ret = intel_dp_mst_update_slots(encoder, pipe_config, conn_state);
 	if (ret)
-- 
2.37.3

