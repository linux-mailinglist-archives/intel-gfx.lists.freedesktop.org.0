Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BDA837771FD
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Aug 2023 09:56:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2685710E4EF;
	Thu, 10 Aug 2023 07:56:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82EF110E4EF
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Aug 2023 07:56:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691654204; x=1723190204;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=D1Wr3j99xyDKavzMHVKjxi5VxpsNwZemRLmLdZP6RfM=;
 b=jNXuiih83rBCim7iQqL0ydXeEJg+6nCeMOrgqNSSlVGIxg8CHlOAc/+8
 hiQW/3NQhMQG+ajw7QfqH14rG/M+mJVqxQPBQj0LJCaBifDOyUg0qz23k
 wmgbF0nf4ylOt6wZlH+UJZW1onxpAKLqGmxMLtfg6rerj9lqK0Br3dE/K
 fzJsSAgd6lTMwpavFodQEN7i90WZ+myusEFplF52stsjSq4WHQ+UVen+u
 PYuyZ44QXdcOLSojtvb9nJniRD3lyxTlT4AQi/183sdDDfJx3mQGL69ZH
 kGcYHebKksL7v01lijIMI+Hi4Pmd3g6GWnm0B9QXxg8FiKO5z47Mhlt6e A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10797"; a="351629147"
X-IronPort-AV: E=Sophos;i="6.01,161,1684825200"; d="scan'208";a="351629147"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2023 00:50:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10797"; a="735307956"
X-IronPort-AV: E=Sophos;i="6.01,161,1684825200"; d="scan'208";a="735307956"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga007.fm.intel.com with ESMTP; 10 Aug 2023 00:49:58 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Aug 2023 13:17:59 +0530
Message-Id: <20230810074758.154968-5-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230810074758.154968-1-suraj.kandpal@intel.com>
References: <20230810074758.154968-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/4] drm/i915/hdcp: Adjust timeout for read in
 DPMST Scenario
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

Ignore the timeout for dpmst hdcp scenario.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index 2a37a43243a3..e8cdc5721966 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -571,7 +571,7 @@ int intel_dp_hdcp2_read_msg(struct intel_connector *connector,
 		offset += ret;
 	}
 
-	if (hdcp2_msg_data->msg_read_timeout > 0) {
+	if (hdcp2_msg_data->msg_read_timeout > 0 && !aux->is_remote) {
 		msg_expired = ktime_after(ktime_get_raw(), msg_end);
 		if (msg_expired) {
 			drm_dbg_kms(&i915->drm, "msg_id %d, entire msg read timeout(mSec): %d\n",
-- 
2.25.1

