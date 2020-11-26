Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABB3F2C4FCF
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Nov 2020 08:52:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E502E6E856;
	Thu, 26 Nov 2020 07:51:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDB946E85C;
 Thu, 26 Nov 2020 07:51:55 +0000 (UTC)
IronPort-SDR: dGPiBXyTyp8OSIWNlLw6/BEz39SxjiPqA2AzoMoZZVEpkd41hNxOPyyMjoyMkWToMcLhxkfZxZ
 OJdDEDVuYDoQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9816"; a="152084962"
X-IronPort-AV: E=Sophos;i="5.78,371,1599548400"; d="scan'208";a="152084962"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2020 23:51:55 -0800
IronPort-SDR: Iypwh2pV78VEpIbLOZCQfYV934KxwxWN2k0FW1ELSqUrIG3v6yNN4QP/bhkkQPc3HBjATjbXfR
 TgOsT9XCzLCA==
X-IronPort-AV: E=Sophos;i="5.78,371,1599548400"; d="scan'208";a="535652556"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.178])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2020 23:51:52 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 26 Nov 2020 13:07:16 +0530
Message-Id: <20201126073722.19107-13-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201126073722.19107-1-anshuman.gupta@intel.com>
References: <20201126073722.19107-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 12/18] misc/mei/hdcp: Fix AUTH_STREAM_REQ cmd
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
- hdcp_cmd_header size annotation nitpick. [Tomas]

Cc: Tomas Winkler <tomas.winkler@intel.com>
Cc: Ramalingam C <ramalingam.c@intel.com>
Acked-by: Tomas Winkler <tomas.winkler@intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Reviewed-by: Ramalingam C <ramalingam.c@intel.com>
Tested-by: Karthik B S <karthik.b.s@intel.com>
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
