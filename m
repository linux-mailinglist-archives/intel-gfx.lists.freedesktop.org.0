Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B840F848E69
	for <lists+intel-gfx@lfdr.de>; Sun,  4 Feb 2024 15:27:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01F5E1121D4;
	Sun,  4 Feb 2024 14:27:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mOKYgmwA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 990B8112042
 for <intel-gfx@lists.freedesktop.org>; Sun,  4 Feb 2024 14:27:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707056829; x=1738592829;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=l6QzlcssIDhR7EgvE62NsNE59R16jlfPcjBP0HfBrzU=;
 b=mOKYgmwAKqJry+BDwBEFLSjm/jOmsjboc2hauEDpoHClBQMj62WZNvYA
 KBDau/fdxINulCc1HX9sIRDKYEH75ORYMYRhHxCI2iQpZ1/TDWIaBZC9T
 npxr3aIZINn05qprE/2+jYHPU2fC8Mu/oR/IIswNz2W3vD4r3r2zZCsTb
 B1mmiU/C74EmbD0oyXOg7bozKoJGaG8r/JF8GfvhCrlkLpuMn90pN6CA7
 vEVpWCTsWxhsVDvqfLR8sMNLfx/RsVVongItJ2N5b0XB3HqEYCH5Xyf2u
 DgfhAEsJYn5eex0pbHUSnHsi5DWgwEV5lCb/ccCKpZHfRQkPc9ZNjloPA w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10973"; a="17920766"
X-IronPort-AV: E=Sophos;i="6.05,242,1701158400"; d="scan'208";a="17920766"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2024 06:27:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,242,1701158400"; d="scan'208";a="31605263"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa001.fm.intel.com with ESMTP; 04 Feb 2024 06:27:08 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, ankit.k.nautiyal@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 03/11] drm/i915/hdcp: Refactor intel_dp_hdcp2_capable
Date: Sun,  4 Feb 2024 19:54:57 +0530
Message-Id: <20240204142505.1157146-4-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240204142505.1157146-1-suraj.kandpal@intel.com>
References: <20240204142505.1157146-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Break intel_dp_hdcp2_capable so that the common the code can be
reused for the remote capability check.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index defc90936317..9aeee6b49b3d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -636,8 +636,8 @@ int intel_dp_hdcp2_check_link(struct intel_digital_port *dig_port,
 }
 
 static
-int intel_dp_hdcp2_capable(struct intel_connector *connector,
-			   bool *capable)
+int _intel_dp_hdcp2_capable(struct drm_dp_aux *aux,
+			    bool *capable)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct drm_dp_aux *aux = &dig_port->dp.aux;
@@ -658,6 +658,16 @@ int intel_dp_hdcp2_capable(struct intel_connector *connector,
 	return 0;
 }
 
+static
+int intel_dp_hdcp2_capable(struct intel_connector *connector,
+			   bool *capable)
+{
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
+	struct drm_dp_aux *aux = &dig_port->dp.aux;
+
+	return _intel_dp_hdcp2_capable(aux, capable);
+}
+
 static const struct intel_hdcp_shim intel_dp_hdcp_shim = {
 	.write_an_aksv = intel_dp_hdcp_write_an_aksv,
 	.read_bksv = intel_dp_hdcp_read_bksv,
-- 
2.25.1

