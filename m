Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE248AE03C0
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Jun 2025 13:34:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BCDA10E9F6;
	Thu, 19 Jun 2025 11:34:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GnhpiyfI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38C3710E9FC;
 Thu, 19 Jun 2025 11:34:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750332886; x=1781868886;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VH8pjQjdv+FUIl8wvVPCY9RhgIcJm3pFTMC8yH7yHl8=;
 b=GnhpiyfIVQeeqgQV+6CfocB/XCtnrwaE+uAoaSg0ECdtgs3XjG6Bawwp
 dPP+w+4t/i3HWTlgTbZv1BKLmbUvcDI6XSTLiWr7y9xlmohvhKJZaHpVq
 mXKaCumPMWfso8Bss3QkEWZiRSZkX2F1x9UTkYzJHnfEYWGVdIetglu/W
 Fxs4NrJiBMGUBUTJbtB4ubmpeKBoXGDUpcfqNJS1mqNqd724eWqdFLqMi
 hsURq58bXsDwm7hXi1zE5X2Jr8t9Quy33elC6W4aBm5NNmNKOUN7lwp7b
 x9PmMTV/eGpSky+k5OdwVvrSDEpDqcTUzQ0tIaSrN62arPRF+gDn/s6wg Q==;
X-CSE-ConnectionGUID: TEz4Rai+QbqpHAy0CtWElw==
X-CSE-MsgGUID: fK9VJU90TUuKGNhGP5gOSw==
X-IronPort-AV: E=McAfee;i="6800,10657,11468"; a="52734559"
X-IronPort-AV: E=Sophos;i="6.16,248,1744095600"; d="scan'208";a="52734559"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2025 04:34:46 -0700
X-CSE-ConnectionGUID: N5hlfwZtStCq+57G3KRVDg==
X-CSE-MsgGUID: +TLmgH0xRqOvAJocay1O2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,248,1744095600"; d="scan'208";a="150847902"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa007.jf.intel.com with ESMTP; 19 Jun 2025 04:34:44 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, jani.nikula@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 1/2] drm/i915/hdcp: Do not use inline intel_de_read
Date: Thu, 19 Jun 2025 17:03:39 +0530
Message-Id: <20250619113340.3379200-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250619113340.3379200-1-suraj.kandpal@intel.com>
References: <20250619113340.3379200-1-suraj.kandpal@intel.com>
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

Do not use intel_de_read() inline in the WARN_ON functions.
While we are at it make the comparision for stream_type u8 to u8.

--v2
-Use REG_GENMASK() [Jani]
-USe REG_FIELD_GET() [Jani]
-Fix the WARN_ON() condition [Jani]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c   | 7 +++++--
 drivers/gpu/drm/i915/display/intel_hdcp_regs.h | 2 +-
 2 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index 7bd775fb65a0..70dafaa2afad 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -805,10 +805,13 @@ intel_dp_mst_hdcp2_stream_encryption(struct intel_connector *connector,
 	enum pipe pipe = (enum pipe)cpu_transcoder;
 	enum port port = dig_port->base.port;
 	int ret;
+	u32 val;
+	u8 stream_type;
 
+	val = intel_de_read(display, HDCP2_AUTH_STREAM(display, cpu_transcoder, port));
+	stream_type = REG_FIELD_GET(AUTH_STREAM_TYPE_MASK, val);
 	drm_WARN_ON(display->drm, enable &&
-		    !!(intel_de_read(display, HDCP2_AUTH_STREAM(display, cpu_transcoder, port))
-		    & AUTH_STREAM_TYPE) != data->streams[0].stream_type);
+		    stream_type != data->streams[0].stream_type);
 
 	ret = intel_dp_mst_toggle_hdcp_stream_select(connector, enable);
 	if (ret)
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_regs.h b/drivers/gpu/drm/i915/display/intel_hdcp_regs.h
index f590d7f48ba7..8b9b87910a9e 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_regs.h
@@ -263,7 +263,7 @@
 #define TRANS_HDCP2_AUTH_STREAM(trans)	_MMIO_TRANS(trans, \
 						    _TRANSA_HDCP2_AUTH_STREAM, \
 						    _TRANSB_HDCP2_AUTH_STREAM)
-#define   AUTH_STREAM_TYPE		REG_BIT(31)
+#define   AUTH_STREAM_TYPE_MASK		REG_GENMASK(31, 31)
 #define HDCP2_AUTH_STREAM(dev_priv, trans, port) \
 					(TRANS_HDCP(dev_priv) ? \
 					 TRANS_HDCP2_AUTH_STREAM(trans) : \
-- 
2.34.1

