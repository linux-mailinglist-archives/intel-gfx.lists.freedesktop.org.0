Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBB6B93890E
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jul 2024 08:47:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F37AF10E37C;
	Mon, 22 Jul 2024 06:47:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RHW+RHx8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 166B310E377;
 Mon, 22 Jul 2024 06:47:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721630840; x=1753166840;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5nj+a1tSiQsBdzAxyRX/1/yfha2zxl6FT84/M0QrWbs=;
 b=RHW+RHx8FEaqr/zVnczPGstSvwrAzHYGmsJtTDmzb4Cka33o+Bz5hLls
 Kte1Zftcn08Ww1UAGBNXkxwaWhq6OYikkxK7shvV48B4ffJIw4kKdYDu9
 lVn3/yCHS/3GmMAt9sXL4cmlOyOyjBT36YdpaEEHpUzfpj5TS1bXWFLLx
 roqfTZkNXuMd7YKA6Lk/MDrHENcqHjGwmZubrjJDQfkBVthAnB3zIdGLF
 auWfe7sY10jkD0sJF9vEb4b294kCMX6aDH1hBpMQ0dYzIFphqeA/eHwA7
 +aC6C07r+YXn9QjY12kjT0/51KFNjEvmoltNeHOzlrhaq6nDU/IOSSWGJ A==;
X-CSE-ConnectionGUID: zgvlg4WnRFWzojCODLzjuQ==
X-CSE-MsgGUID: IPGoCdaGS0+XLLSkI2M5IA==
X-IronPort-AV: E=McAfee;i="6700,10204,11140"; a="18798181"
X-IronPort-AV: E=Sophos;i="6.09,227,1716274800"; d="scan'208";a="18798181"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2024 23:47:20 -0700
X-CSE-ConnectionGUID: vQRgBcHZTnipxN6B4RDe1A==
X-CSE-MsgGUID: QHaSgpkySSiq1856GcLo2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,227,1716274800"; d="scan'208";a="51670544"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa008.fm.intel.com with ESMTP; 21 Jul 2024 23:47:18 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 1/3] drm/i915/hdcp: Add encoder check in
 intel_hdcp_get_capability
Date: Mon, 22 Jul 2024 12:14:49 +0530
Message-ID: <20240722064451.3610512-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240722064451.3610512-1-suraj.kandpal@intel.com>
References: <20240722064451.3610512-1-suraj.kandpal@intel.com>
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

Sometimes during hotplug scenario or suspend/resume scenario encoder is
not always initialized when intel_hdcp_get_capability add
a check to avoid kernel null pointer dereference.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 3ebe035f382e..05402ae6b569 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -203,11 +203,16 @@ int intel_hdcp_read_valid_bksv(struct intel_digital_port *dig_port,
 /* Is HDCP1.4 capable on Platform and Sink */
 bool intel_hdcp_get_capability(struct intel_connector *connector)
 {
-	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
+	struct intel_digital_port *dig_port;
 	const struct intel_hdcp_shim *shim = connector->hdcp.shim;
 	bool capable = false;
 	u8 bksv[5];
 
+	if (!intel_attached_encoder(connector))
+		return capable;
+
+	dig_port = intel_attached_dig_port(connector);
+
 	if (!shim)
 		return capable;
 
-- 
2.43.2

