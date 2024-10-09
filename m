Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D694995FC2
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 08:27:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DF5010E64F;
	Wed,  9 Oct 2024 06:27:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AD8nZpvJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A6F610E64F;
 Wed,  9 Oct 2024 06:27:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728455244; x=1759991244;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=I+RfwyRBtJKNPf0ybmF31MAlnNnRXn6NqvsXNJVdpQc=;
 b=AD8nZpvJakE+2obCEtvQP3G1BrileUlsWGGExMTP/2c5h0Xugt7w526Z
 i7JmkSfNtu9g336BzjBBjFLanYiScT23TqEYhnRtLYRUbagPs0mKuXMit
 fh57ILKqZdQ8B4rVYzgQUA5kMt1p1l5I5vFnEHvp56IeLGhwnW+wXPIHY
 x7KhEhbve+oJswPfN4Y/JSZNaDYmrdstyBennUPHJOOqEsrkXdrSk4jec
 rbMWp0/mIylmTF1DQrhpfYgFi68bu3lQrFcUBC8SuFCh3EXbMN8/l3uVA
 KqNdGv0CoxRpy4y/DTQbyS9rEyZBb5O9hso7DFZ/3LptYluTXiQ1E7axu A==;
X-CSE-ConnectionGUID: I0I0zDRLT0iFDxLRGNjscQ==
X-CSE-MsgGUID: UopXgdfrSB+6YMIxJey7bw==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="45199557"
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="45199557"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 23:27:23 -0700
X-CSE-ConnectionGUID: 2usxZ3VaT02yPge28gT5kw==
X-CSE-MsgGUID: nUSlFnbfQhKFplPazzi0VA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="81165227"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa004.jf.intel.com with ESMTP; 08 Oct 2024 23:27:21 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/hdcp: Move dig_port assignment lower in the sequence
Date: Wed,  9 Oct 2024 11:54:55 +0530
Message-ID: <20241009062455.1796615-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
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

Move dig_port assignment much lower in the sequence to avoid NULL
pointer deference in case encoder is not present.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index ed6aa87403e2..ea8d56b25f6e 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -2404,7 +2404,7 @@ static int _intel_hdcp_enable(struct intel_atomic_state *state,
 	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
-	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
+	struct intel_digital_port *dig_port;
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	unsigned long check_link_interval = DRM_HDCP_CHECK_PERIOD_MS;
 	int ret = -EINVAL;
@@ -2418,6 +2418,8 @@ static int _intel_hdcp_enable(struct intel_atomic_state *state,
 		return -ENODEV;
 	}
 
+	dig_port = intel_attached_dig_port(connector);
+
 	mutex_lock(&hdcp->mutex);
 	mutex_lock(&dig_port->hdcp_mutex);
 	drm_WARN_ON(display->drm,
-- 
2.43.2

