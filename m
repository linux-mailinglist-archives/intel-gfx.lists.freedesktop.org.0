Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E6AE9B44EC
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 09:53:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A33A810E5DA;
	Tue, 29 Oct 2024 08:53:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nEclGLg5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEA6610E5D6;
 Tue, 29 Oct 2024 08:53:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730192004; x=1761728004;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=cufBhkI7dNe+gGsAo0uL49cWsIt/FKJ9B2tOJ3MvCQM=;
 b=nEclGLg5WZ0J2EQ5WX/36HvswDdSVLr2IPADFOLVxCD84xs1pISlUB5m
 vwTJiOLGRftH8eKmN+p44xlYoHPccQeA1BY5//G6sXX40WSJEUBGRF3gN
 S8eXVwFPxOXjiLV5MUOke6gy4VfTyxsMSox7aPppOQeZi4ciBxJgwBxJ7
 U+kgMlHY374fGPJrEVqzeKh5wkf2ndtV1rzshyFAk4oQ1hBHeLIGJ5MNE
 brjpoJZdX4kqVJ1+Eck4EKNJ2rgEmy2bNK4v9Z29avkDxsR3QELzWazxO
 14v2qx280SzDhh8eZ5tXm7UdQ+68W2iiMaxLLEsWn6goCw5/abPSWQJu9 Q==;
X-CSE-ConnectionGUID: taLUjiJSTjOvlqDix0Q3IA==
X-CSE-MsgGUID: qQ7+86F7Sk2eJvYoUuKiXQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11239"; a="41180755"
X-IronPort-AV: E=Sophos;i="6.11,241,1725346800"; d="scan'208";a="41180755"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 01:53:20 -0700
X-CSE-ConnectionGUID: 3R32riUzSmeV7uKYu2XSyw==
X-CSE-MsgGUID: uSR7P5CkSOKytAWPjK3aUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,241,1725346800"; d="scan'208";a="86500272"
Received: from unknown (HELO kandpal-X299-UD4-Pro.iind.intel.com)
 ([10.190.239.10])
 by fmviesa004.fm.intel.com with ESMTP; 29 Oct 2024 01:53:18 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: chaitanya.kumar.borah@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/hdcp: Add the loop only for DP encoders
Date: Tue, 29 Oct 2024 14:23:04 +0530
Message-Id: <20241029085304.219168-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
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

Add the loop on the first read and write only for DP/DPMST encoders
as this issue is only observed here no need to burden other
encoders with extra retries.

Fixes: 9d5a05f86d2f ("drm/i915/hdcp: Retry first read and writes to downstream")
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index ed6aa87403e2..fcfb5a9f303a 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -1503,6 +1503,8 @@ static int hdcp2_deauthenticate_port(struct intel_connector *connector)
 static int hdcp2_authentication_key_exchange(struct intel_connector *connector)
 {
 	struct intel_display *display = to_intel_display(connector);
+	struct intel_digital_port *dig_port =
+		intel_attached_dig_port(connector);
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	union {
 		struct hdcp2_ake_init ake_init;
@@ -1513,12 +1515,18 @@ static int hdcp2_authentication_key_exchange(struct intel_connector *connector)
 	} msgs;
 	const struct intel_hdcp_shim *shim = hdcp->shim;
 	size_t size;
-	int ret, i;
+	int ret, i, max_retries;
 
 	/* Init for seq_num */
 	hdcp->seq_num_v = 0;
 	hdcp->seq_num_m = 0;
 
+	if (intel_encoder_is_dp(&dig_port->base) ||
+	    intel_encoder_is_mst(&dig_port->base))
+		max_retries = 10;
+	else
+		max_retries = 1;
+
 	ret = hdcp2_prepare_ake_init(connector, &msgs.ake_init);
 	if (ret < 0)
 		return ret;
@@ -1536,7 +1544,7 @@ static int hdcp2_authentication_key_exchange(struct intel_connector *connector)
 	 * authentication. The values of 10 and delay of 50ms was decided based
 	 * on multiple trial and errors.
 	 */
-	for (i = 0; i < 10; i++) {
+	for (i = 0; i < max_retries; i++) {
 		if (!intel_hdcp2_get_capability(connector)) {
 			msleep(50);
 			continue;
-- 
2.34.1

