Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE0682FCDDE
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Jan 2021 11:45:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 940036E041;
	Wed, 20 Jan 2021 10:45:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05FC36E041
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Jan 2021 10:45:13 +0000 (UTC)
IronPort-SDR: oBtimX69CXv8bwmKQxbZYU5P2hpuPLLOyWaZtKbeocyEFElNXaV3VuUn98UcGvj84w+tp2DRgY
 zplmH08ntpXg==
X-IronPort-AV: E=McAfee;i="6000,8403,9869"; a="263892609"
X-IronPort-AV: E=Sophos;i="5.79,360,1602572400"; d="scan'208";a="263892609"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2021 02:45:12 -0800
IronPort-SDR: apZQn976wjAjsTFn48JMrCARNFIT7iDIxW8DI3pL4SPGUnDtSz0mLXkPbkziomiCW1bBoQJwwM
 EeRPAH3u4Lhw==
X-IronPort-AV: E=Sophos;i="5.79,360,1602572400"; d="scan'208";a="391509803"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.179])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2021 02:45:09 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 20 Jan 2021 16:00:32 +0530
Message-Id: <20210120103032.15198-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210119064655.1605-3-anshuman.gupta@intel.com>
References: <20210119064655.1605-3-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 2/2] drm/i915/hdcp: Fix uninitialized symbol
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
Cc: Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move (num_hdcp_streams > 0) condition to stream_encryption()
code block, where it actually belongs.
This fixes the static analysis error of uninitialized symbol 'ret'.

v2:
- return 0 as the return value is already checked. [Ankit]

Cc: Ramalingam C <ramalingam.c@intel.com>
Reported-by: kernel test robot <lkp@intel.com>
Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 581ccb038b87..ae1371c36a32 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -878,15 +878,15 @@ static int _intel_hdcp_disable(struct intel_connector *connector)
 		}
 		drm_dbg_kms(&dev_priv->drm, "HDCP 1.4 transcoder: %s stream encryption disabled\n",
 			    transcoder_name(hdcp->stream_transcoder));
+		/*
+		 * If there are other connectors on this port using HDCP,
+		 * don't disable it until it disabled HDCP encryption for
+		 * all connectors in MST topology.
+		 */
+		if (dig_port->num_hdcp_streams > 0)
+			return 0;
 	}
 
-	/*
-	 * If there are other connectors on this port using HDCP, don't disable it
-	 * until it disabled HDCP encryption for all connectors in MST topology.
-	 */
-	if (dig_port->num_hdcp_streams > 0)
-		return ret;
-
 	hdcp->hdcp_encrypted = false;
 	intel_de_write(dev_priv, HDCP_CONF(dev_priv, cpu_transcoder, port), 0);
 	if (intel_de_wait_for_clear(dev_priv,
@@ -1947,10 +1947,10 @@ static int _intel_hdcp2_disable(struct intel_connector *connector)
 		}
 		drm_dbg_kms(&i915->drm, "HDCP 2.2 transcoder: %s stream encryption disabled\n",
 			    transcoder_name(hdcp->stream_transcoder));
-	}
 
-	if (dig_port->num_hdcp_streams > 0)
-		return ret;
+		if (dig_port->num_hdcp_streams > 0)
+			return 0;
+	}
 
 	ret = hdcp2_disable_encryption(connector);
 
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
