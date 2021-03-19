Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E902F3419BA
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Mar 2021 11:17:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35ED46E9E5;
	Fri, 19 Mar 2021 10:17:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B46DB6E9E5
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Mar 2021 10:17:19 +0000 (UTC)
IronPort-SDR: q+wJsraDkzYmM4YSuc4iHQXOs2DCS0e0aDJ0A33n+QoWmLimpiw22xq1fD5n68h7+nhUZKdyAl
 AUBM5RH3HwDA==
X-IronPort-AV: E=McAfee;i="6000,8403,9927"; a="274935047"
X-IronPort-AV: E=Sophos;i="5.81,261,1610438400"; d="scan'208";a="274935047"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2021 03:17:19 -0700
IronPort-SDR: VnHLkHnqhYzlrj1iMnpr9mt+ctCGWTgx3YFQ6V3MgALHLG75VtdjF66K8IKm/KKhEmQyTfWL/0
 yoTBtLPUG5Qw==
X-IronPort-AV: E=Sophos;i="5.81,261,1610438400"; d="scan'208";a="374911311"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.179])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2021 03:17:17 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 19 Mar 2021 15:32:08 +0530
Message-Id: <20210319100208.5886-4-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210319100208.5886-1-anshuman.gupta@intel.com>
References: <20210319100208.5886-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 3/3] drm/i915/hdcp: return correct error code
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
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 9a70c164c377..21d6c73784b3 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -1896,7 +1896,8 @@ static int hdcp2_authenticate_and_encrypt(struct intel_connector *connector)
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
