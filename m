Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C5B52AE915
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Nov 2020 07:35:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A38D89E57;
	Wed, 11 Nov 2020 06:35:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D81A89E3B;
 Wed, 11 Nov 2020 06:35:42 +0000 (UTC)
IronPort-SDR: ZXafRwboUgAv21n0yWabm4aGwDa3thp0Gi9eo/ku5vaytfL53VqhdXEP9YNpfO8P43vR8ePxcH
 KvLtX2OnFxYA==
X-IronPort-AV: E=McAfee;i="6000,8403,9801"; a="166593729"
X-IronPort-AV: E=Sophos;i="5.77,468,1596524400"; d="scan'208";a="166593729"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2020 22:35:41 -0800
IronPort-SDR: Pbrh1VmLMmXvQYDlCdp3tqmqAW96d7eeRf90D0+mSd+56Dcz3hYxy1ipOwzPa0/XpWu5gSCt99
 7RyGEGB/BeuA==
X-IronPort-AV: E=Sophos;i="5.77,468,1596524400"; d="scan'208";a="366139393"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.178])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2020 22:35:38 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Wed, 11 Nov 2020 11:50:45 +0530
Message-Id: <20201111062051.11529-12-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201111062051.11529-1-anshuman.gupta@intel.com>
References: <20201111062051.11529-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 11/17] misc/mei/hdcp: Fix AUTH_STREAM_REQ cmd
 buffer len
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
Cc: jani.nikula@intel.com, seanpaul@chromium.org,
 Tomas Winkler <tomas.winkler@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Fix the size of WIRED_REPEATER_AUTH_STREAM_REQ cmd buffer size.
It is based upon the actual number of MST streams and size
of wired_cmd_repeater_auth_stream_req_in.
Excluding the size of hdcp_cmd_header.

v2:
hdcp_cmd_header size annotation nitpick. [Tomas]

Cc: Tomas Winkler <tomas.winkler@intel.com>
Cc: Ramalingam C <ramalingam.c@intel.com>
Acked-by: Tomas Winkler <tomas.winkler@intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Reviewed-by: Ramalingam C <ramalingam.c@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/misc/mei/hdcp/mei_hdcp.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/misc/mei/hdcp/mei_hdcp.c b/drivers/misc/mei/hdcp/mei_hdcp.c
index 9ae9669e46ea..3506a3534294 100644
--- a/drivers/misc/mei/hdcp/mei_hdcp.c
+++ b/drivers/misc/mei/hdcp/mei_hdcp.c
@@ -569,8 +569,7 @@ static int mei_hdcp_verify_mprime(struct device *dev,
 	verify_mprime_in->header.api_version = HDCP_API_VERSION;
 	verify_mprime_in->header.command_id = WIRED_REPEATER_AUTH_STREAM_REQ;
 	verify_mprime_in->header.status = ME_HDCP_STATUS_SUCCESS;
-	verify_mprime_in->header.buffer_len =
-			WIRED_CMD_BUF_LEN_REPEATER_AUTH_STREAM_REQ_MIN_IN;
+	verify_mprime_in->header.buffer_len = cmd_size  - sizeof(verify_mprime_in->header);
 
 	verify_mprime_in->port.integrated_port_type = data->port_type;
 	verify_mprime_in->port.physical_port = (u8)data->fw_ddi;
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
