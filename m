Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7573F18D115
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2020 15:37:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEC936EB50;
	Fri, 20 Mar 2020 14:37:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E525A6EB4E
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Mar 2020 14:37:18 +0000 (UTC)
IronPort-SDR: 5mnuVAh/AVqT5YEUdB8sD/X/l6b6ytj0qOcoRyZfkwuaBz1LszFj+kRFH81vvOZmp7nQLSD1hW
 FrmOwjKMhSNA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2020 07:37:18 -0700
IronPort-SDR: 6Rjz9mc7UXs712i6/WAgIXqL2hjEGqZgKAT7FR4s3295zF+4Q+sMAC9wXF1z8tS2WdhqaxbknB
 8eXKPdGkPo1w==
X-IronPort-AV: E=Sophos;i="5.72,284,1580803200"; d="scan'208";a="269109948"
Received: from rkamins1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.41.98])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2020 07:37:17 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Mar 2020 16:36:33 +0200
Message-Id: <bb70a05a2c20307ab67b89c4682f5afc5953fcaf.1584714939.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1584714939.git.jani.nikula@intel.com>
References: <cover.1584714939.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 08/13] drm/i915/connector: use MISSING_CASE
 instead of logging
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_connector.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_connector.c b/drivers/gpu/drm/i915/display/intel_connector.c
index 903e49659f56..98ec2ea86c7c 100644
--- a/drivers/gpu/drm/i915/display/intel_connector.c
+++ b/drivers/gpu/drm/i915/display/intel_connector.c
@@ -290,7 +290,7 @@ intel_attach_colorspace_property(struct drm_connector *connector)
 			return;
 		break;
 	default:
-		DRM_DEBUG_KMS("Colorspace property not supported\n");
+		MISSING_CASE(connector->connector_type);
 		return;
 	}
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
