Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32BD68CF8B8
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2024 07:26:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA89310F8A9;
	Mon, 27 May 2024 05:26:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WulTNo9I";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD3E410F8A9
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2024 05:26:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716787606; x=1748323606;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=RA8FDgpicZWp1eJkq5WorteqXEnZzC3pmNfmMd3urNQ=;
 b=WulTNo9IGfnHKP5CzdXh5nIzJ3CgrbtF6B0sBCeFPvPU7vcOEriD6gEQ
 u2Q7xAYh3nnf1vwCSgT8jY8S8Jf/rocNotN9XCoq9vzzRKhCEZoDbH08o
 Kg30fqeHApLK/vrNbrbCF0EluZvNYWidWSOg7zntHaloZnXrLI0+tTEGu
 K2Y2ZDuHF4+xZJF3dXq4FCd3etEQo/92QzUow+BBhlH2VvGCc+/lF1PX/
 xIly+1o70IhIP/sZZa0+wV0h9UX9krvrZfO8GojaJi4uF8scGE+Ymqs82
 UfvD8gp0W5fzmB8igJrxbwWGyD27w5ZQtEwnz5GhC6QBN0jWux3aDLKc/ g==;
X-CSE-ConnectionGUID: YydqkO3wR3SqZLRZttbS2Q==
X-CSE-MsgGUID: EX60fd7LT2WTpiIBIdzhUg==
X-IronPort-AV: E=McAfee;i="6600,9927,11084"; a="38470154"
X-IronPort-AV: E=Sophos;i="6.08,191,1712646000"; d="scan'208";a="38470154"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2024 22:26:45 -0700
X-CSE-ConnectionGUID: wmQ7nL7TQHeZJ2L9cwbwrQ==
X-CSE-MsgGUID: 2TpdlbwDQFGP4xExF/KrzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,191,1712646000"; d="scan'208";a="34720050"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa010.fm.intel.com with ESMTP; 26 May 2024 22:26:44 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: chaitanya.kumar.borah@intel.com, matthew.d.roper@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/hdcp: Fix IS_METEORLAKE usage for HDCP line rekeying
Date: Mon, 27 May 2024 10:51:19 +0530
Message-ID: <20240527052118.1624216-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
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

Replace IS_METEORLAKE usage with a more appropriate macro. While
we are at it also add the stepping restrictions for other platforms.

Fixes: 6a3691ca4799 ("drm/i915/hdcp: Disable HDCP Line Rekeying for HDCP2.2 on HDMI")
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 02cbbbfd8e25..5767070248bb 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -42,10 +42,11 @@ intel_hdcp_disable_hdcp_line_rekeying(struct intel_encoder *encoder,
 		return;
 
 	if (DISPLAY_VER(dev_priv) >= 14) {
-		if (IS_METEORLAKE(dev_priv))
+		if (IS_DISPLAY_IP_STEP(dev_priv, IP_VER(14, 0), STEP_D0, STEP_FOREVER))
 			intel_de_rmw(dev_priv, MTL_CHICKEN_TRANS(hdcp->cpu_transcoder),
 				     0, HDCP_LINE_REKEY_DISABLE);
-		else
+		else if (IS_DISPLAY_IP_STEP(dev_priv, IP_VER(14, 1), STEP_B0, STEP_FOREVER) ||
+			 IS_DISPLAY_IP_STEP(dev_priv, IP_VER(20, 0), STEP_B0, STEP_FOREVER))
 			intel_de_rmw(dev_priv, TRANS_DDI_FUNC_CTL(hdcp->cpu_transcoder),
 				     0, TRANS_DDI_HDCP_LINE_REKEY_DISABLE);
 	}
-- 
2.43.2

