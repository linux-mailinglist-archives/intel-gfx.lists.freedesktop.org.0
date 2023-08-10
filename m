Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 69C587771FC
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Aug 2023 09:56:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6A7D10E4ED;
	Thu, 10 Aug 2023 07:56:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0C7E10E4ED
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Aug 2023 07:56:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691654196; x=1723190196;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rm3Nagm4rudnMNQzqSaw0T20AOF4MNvzd02ynT+yzg8=;
 b=U0bDAItTkn4lOzI8DF5rOu8nmERkIylzItgDKZbyUs+/QmAJUt/u+kVM
 xZ1qolvgll5eVXb7ImZAodpwtfmREHWyQjOVlyE+OqOfvUdLZffBjd7mR
 Ec6r9Cnp0GGmWtri/uaF1Q5jsnicFBXBt3pAZyf5FXG1CeCsAmPMuUhZF
 r2sJ0xJhldSAxPFnir0/WBPKjfLKjpT5JceRIOCw9SXjqV2PSSMJ8whXR
 P48Pq8uueXxOa2vNtJtqhBVGNMhewx/MD7ReGuO0xdqUt1oGp4FucCi1l
 U/B2BQYFft0HhaZlW0hk7CqcbKNzFL6/nic8pjbBuxn44BuCVUtK/bQEl w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10797"; a="351629100"
X-IronPort-AV: E=Sophos;i="6.01,161,1684825200"; d="scan'208";a="351629100"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2023 00:49:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10797"; a="735307949"
X-IronPort-AV: E=Sophos;i="6.01,161,1684825200"; d="scan'208";a="735307949"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga007.fm.intel.com with ESMTP; 10 Aug 2023 00:49:56 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Aug 2023 13:17:58 +0530
Message-Id: <20230810074758.154968-4-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230810074758.154968-1-suraj.kandpal@intel.com>
References: <20230810074758.154968-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/4] drm/i915/hdcp: Send the correct aux for
 DPMST HDCP scenario
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
Cc: uma.shakar@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Up until now we were sending the base aux stored in dig_port which
is not correct as this causes an issue when monitor is connected via
a DPMST hub causing it to be remote hence we end up seeing AUX
failures so let's send the remote aux in case of DPMST.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index 5304aa73b23f..2a37a43243a3 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -452,7 +452,10 @@ int intel_dp_hdcp2_write_msg(struct intel_connector *connector,
 
 	offset = hdcp2_msg_data->offset;
 
-	aux = &dig_port->dp.aux;
+	if (intel_encoder_is_mst(connector->encoder))
+		aux = &connector->port->aux;
+	else
+		aux = &dig_port->dp.aux;
 
 	/* No msg_id in DP HDCP2.2 msgs */
 	bytes_to_write = size - 1;
@@ -518,7 +521,10 @@ int intel_dp_hdcp2_read_msg(struct intel_connector *connector,
 		return -EINVAL;
 	offset = hdcp2_msg_data->offset;
 
-	aux = &dp->aux;
+	if (intel_encoder_is_mst(connector->encoder))
+		aux = &connector->port->aux;
+	else
+		aux = &dp->aux;
 
 	ret = intel_dp_hdcp2_wait_for_msg(i915, aux, hdcp, hdcp2_msg_data);
 	if (ret < 0)
-- 
2.25.1

