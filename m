Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 022C16B1D10
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Mar 2023 08:55:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B3CE10E7AF;
	Thu,  9 Mar 2023 07:55:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8900810E7AC
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Mar 2023 07:55:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678348528; x=1709884528;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QTHLoRgHvBxU0CHY1a2H7zfGXIX+VJNO6glJZE4ya/Y=;
 b=f1GcnGQmgsW7OTKgPmpnvT6K+KacJjbRAmEt92haKeBhn+iYen6CRpRW
 Yw2zzrcqzfvAv5ixwwVKRa6kjShxg+o0Qt7ANmySWuplai7GdkdLyqOhf
 BClI2FkTMZzPL4hudOwzBlv/4FRIXkklIM8jn67p7zzIDrG1Dh4N8cCCU
 pH8aIP9qq0oSdzTudxLDd9aU7m6AZZteCxtZRFTbb3KtUKXcnc1Ckocal
 eIbuIzhs9qXowKElskyQYH35Ubbnk0+0UVQqvEKJ+pqQ4S8OA/YQFdP4K
 9YzqNv6CQor5oWqpKX9IvtBUhS6pzT0Byxl1XjdhLQwDY89peiQ4mHnAO w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="398960458"
X-IronPort-AV: E=Sophos;i="5.98,245,1673942400"; d="scan'208";a="398960458"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 23:55:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="707510436"
X-IronPort-AV: E=Sophos;i="5.98,245,1673942400"; d="scan'208";a="707510436"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga008.jf.intel.com with ESMTP; 08 Mar 2023 23:55:26 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Mar 2023 13:24:20 +0530
Message-Id: <20230309075423.409402-4-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230309075423.409402-1-suraj.kandpal@intel.com>
References: <20230309075423.409402-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v12 3/6] drm/i915/hdcp: HDCP2.x Refactoring to
 agnostic hdcp
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tomas Winkler <tomas.winkler@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

As now we have more then one type of content protection
secrity firmware.
%s/_mei_/_

--v3
-Changing names to drop cp_fw to make naming more agnostic[Jani]

--v4
-remove header reference in intel_display_core.h [Uma]
-fix commit message and prefix drm [Uma]

Cc: Tomas Winkler <tomas.winkler@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 1ae0882dc1d4..3b9bdc4a764d 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -1409,7 +1409,7 @@ static int hdcp2_authenticate_port(struct intel_connector *connector)
 	return ret;
 }
 
-static int hdcp2_close_mei_session(struct intel_connector *connector)
+static int hdcp2_close_session(struct intel_connector *connector)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
@@ -1433,7 +1433,7 @@ static int hdcp2_close_mei_session(struct intel_connector *connector)
 
 static int hdcp2_deauthenticate_port(struct intel_connector *connector)
 {
-	return hdcp2_close_mei_session(connector);
+	return hdcp2_close_session(connector);
 }
 
 /* Authentication flow starts from here */
-- 
2.25.1

