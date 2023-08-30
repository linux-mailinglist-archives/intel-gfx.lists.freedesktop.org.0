Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D863078D3A7
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Aug 2023 09:37:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63B8C10E4C9;
	Wed, 30 Aug 2023 07:37:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E863F10E4C9
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Aug 2023 07:37:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693381020; x=1724917020;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ASDzbtG/O7y4+zncOtJFF/ks9D8FmxgiXQPeXRe9mqc=;
 b=RNRGijHWlMir/uThal2EmcdTRJknVcWQlGwl+zXtM2zrQC01fyHvpXDp
 jph4g2WmBiOWdmbQNPppz+0wNWVS1VYXE5n0RxZy+pb23LXl4zL3FXVfa
 5SO1iNYfzRFGvYe0PsdXhgF4mOCvELCDDc2YEpsMU27NRFMTkqELT6u9m
 6zZM0tsgOurlUQ869y7gEUwyKv2G9x3g/U+g3d9QEGqxBhBOKe8NcU5vq
 FWQKQcdBfYkM4gMD+efNuJXSQTdrfCAJc6ra2VIlOjcCcLU6IfzpkxG3M
 WVd9OcwWt/XCeZuwqhtUlyxxHqJeaUSH+hVvTsz679icET1+q5yjY2qDJ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10817"; a="379326143"
X-IronPort-AV: E=Sophos;i="6.02,212,1688454000"; d="scan'208";a="379326143"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2023 00:37:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10817"; a="912692489"
X-IronPort-AV: E=Sophos;i="6.02,212,1688454000"; d="scan'208";a="912692489"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga005.jf.intel.com with ESMTP; 30 Aug 2023 00:36:58 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Aug 2023 13:04:38 +0530
Message-Id: <20230830073437.666263-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230830073437.666263-1-suraj.kandpal@intel.com>
References: <20230830073437.666263-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/hdcp: Use correct aux for
 capability check scenario
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

Send the correct aux rather than the one derived
from intel_digital_port so that the HDCP version of both monitors
are fetched rather than just the primary one's

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index 3b579887bb99..3a595cd433d4 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -651,12 +651,14 @@ static
 int intel_dp_hdcp2_capable(struct intel_connector *connector,
 			   bool *capable)
 {
-	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
+	struct drm_dp_aux *aux;
 	u8 rx_caps[3];
 	int ret;
 
+	aux = intel_dp_hdcp_get_aux(connector);
+
 	*capable = false;
-	ret = drm_dp_dpcd_read(&dig_port->dp.aux,
+	ret = drm_dp_dpcd_read(aux,
 			       DP_HDCP_2_2_REG_RX_CAPS_OFFSET,
 			       rx_caps, HDCP_2_2_RXCAPS_LEN);
 	if (ret != HDCP_2_2_RXCAPS_LEN)
-- 
2.25.1

