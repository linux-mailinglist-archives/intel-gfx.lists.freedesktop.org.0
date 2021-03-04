Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CF2A32CF4E
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Mar 2021 10:11:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C04636EA06;
	Thu,  4 Mar 2021 09:11:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63A886EA11
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Mar 2021 09:11:47 +0000 (UTC)
IronPort-SDR: OKnqzA2qKE+NqGp9wiDXyRWIVZ3p8wFTBde2Sn064fAgS3w2FxsL2+zNGoI6aMuHgTGv9nkKn1
 16NKUiwzt5zQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9912"; a="184966393"
X-IronPort-AV: E=Sophos;i="5.81,222,1610438400"; d="scan'208";a="184966393"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2021 01:11:47 -0800
IronPort-SDR: bp2F4jd8WizWUP+ANmY7//ggeNqY5YW+6XkLxHK4oj2+R3wVnGsWkwbRNCdQihxoxOf3zlqiCM
 VD/Sb+oTNnww==
X-IronPort-AV: E=Sophos;i="5.81,222,1610438400"; d="scan'208";a="400512691"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.179])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2021 01:11:39 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 Mar 2021 14:26:08 +0530
Message-Id: <20210304085608.21372-4-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210304085608.21372-1-anshuman.gupta@intel.com>
References: <20210304085608.21372-1-anshuman.gupta@intel.com>
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
