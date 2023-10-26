Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1BD47D8257
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Oct 2023 14:13:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3876B10E11D;
	Thu, 26 Oct 2023 12:13:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D38F10E11A
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Oct 2023 12:13:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698322417; x=1729858417;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=y3XxzPVcM0mKIhEtsGun1koeqOFyRDkRPEyMBzRIx+M=;
 b=ZlvK+uakXSO98+5uCZt2CsRTiePMZdP/ZLotC0yVDJ1hHwUXNB6faU2P
 7KuM7hSL1VAmwKb7xnJ0WF08KtSi1o2tYIJnguuWqOz4bB7bK/IJRWF5c
 F+qnOp5uVJlqlWDKQ07E52Y93RazKQ58QiV9eZhvfiGc/mMv3H5f+I9DJ
 7cpFtG8a5Zo1+UMAGkaHlrOz6jUuFWyuxkRsb3gf7GyWY0nOtFQqxjeOj
 2mHMRV9yd6WnEeSq5uMpEcdrqhu2JHHd43ncRsbjPytJi6hx0E0UKJ4/0
 vdNDzIZPz6K65eo2c/SrXq3QVPD9f+Fp9B5mboJn1Ux9vxxb2frcku/05 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="387354584"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; d="scan'208";a="387354584"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 05:13:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="762809216"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; d="scan'208";a="762809216"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga007.fm.intel.com with ESMTP; 26 Oct 2023 05:13:35 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Oct 2023 17:41:38 +0530
Message-Id: <20231026121139.987437-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231026121139.987437-1-suraj.kandpal@intel.com>
References: <20231026121139.987437-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/hdcp: Rename HCDP 1.4 enablement
 function
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rename hdcp 1.4 enablement function from _intel_hdcp_enable to
intel_hdcp1_enable to better represent what version of hdcp is
being enabled

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index c89da3568ebd..7c0cfcb48521 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -923,7 +923,7 @@ static int _intel_hdcp_disable(struct intel_connector *connector)
 	return 0;
 }
 
-static int _intel_hdcp_enable(struct intel_connector *connector)
+static int intel_hdcp1_enable(struct intel_connector *connector)
 {
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_hdcp *hdcp = &connector->hdcp;
@@ -1058,7 +1058,7 @@ static int intel_hdcp_check_link(struct intel_connector *connector)
 		goto out;
 	}
 
-	ret = _intel_hdcp_enable(connector);
+	ret = intel_hdcp1_enable(connector);
 	if (ret) {
 		drm_err(&i915->drm, "Failed to enable hdcp (%d)\n", ret);
 		intel_hdcp_update_value(connector,
@@ -2388,7 +2388,7 @@ int intel_hdcp_enable(struct intel_atomic_state *state,
 	 */
 	if (ret && intel_hdcp_capable(connector) &&
 	    hdcp->content_type != DRM_MODE_HDCP_CONTENT_TYPE1) {
-		ret = _intel_hdcp_enable(connector);
+		ret = intel_hdcp1_enable(connector);
 	}
 
 	if (!ret) {
-- 
2.25.1

