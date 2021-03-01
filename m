Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EFAFC3278C3
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Mar 2021 08:58:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E8CF6E4FE;
	Mon,  1 Mar 2021 07:58:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 403F56E4FE
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Mar 2021 07:58:16 +0000 (UTC)
IronPort-SDR: ETxaTmjR+gU6AzTfWvGBqJMU06MYUHrwSD5jQ9JINYPhUZiUPt97+NdppMLXhnYDv2FCchCDeo
 D+bgEGdwcCGA==
X-IronPort-AV: E=McAfee;i="6000,8403,9909"; a="174022912"
X-IronPort-AV: E=Sophos;i="5.81,215,1610438400"; d="scan'208";a="174022912"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2021 23:58:16 -0800
IronPort-SDR: k4JPB8YAwjtjqHWzqq/GAuMAmwQ/1Ve2v0sDBkdsOgwdp7Xvlbp5uin6jJrR+lezvDg6zE/hmx
 SCCKDIk0RN7w==
X-IronPort-AV: E=Sophos;i="5.81,215,1610438400"; d="scan'208";a="366624074"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.179])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2021 23:58:14 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Mar 2021 13:12:34 +0530
Message-Id: <20210301074234.5332-4-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210301074234.5332-1-anshuman.gupta@intel.com>
References: <20210301074234.5332-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/hdcp: return correct error code
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

hdcp2_enable_stream_encryption shouldn't get called in case
of any port authentication or encryption error, though
hdcp2_enable_stream_encryption checks for link encryption
before enabling stream encryption and returns error but
this return error code won't be correct in case of any error
due to port authentication and encryption.

Cc: Ramalingam C <ramalingam.c@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 68ad7741cf60..28c22c361fc3 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -1905,7 +1905,8 @@ static int hdcp2_authenticate_and_encrypt(struct intel_connector *connector)
 		}
 	}
 
-	ret = hdcp2_enable_stream_encryption(connector);
+	if (!ret)
+		ret = hdcp2_enable_stream_encryption(connector);
 
 	return ret;
 }
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
