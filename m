Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5094AE02A7
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Jun 2025 12:28:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81C3110E9F9;
	Thu, 19 Jun 2025 10:28:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FpN8UsLE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A53D710E9F9;
 Thu, 19 Jun 2025 10:28:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750328919; x=1781864919;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lsmrE1s19cF28Rp4GdxkKIS+ZuFL5bt1GGmC+CkGIc0=;
 b=FpN8UsLEg2evabgogXhg+1oKrH+Ht7IVTJUkosMlTNBGKvMZklBKFq3h
 oZFw3KII1Li+XyknR22BZcrPZnLbDkq3n7ylQZcI9d7UMjIthf/kktzX5
 LoUE1dtDPz6egF/kOZhTLymDgRH8+1joOKBpim+LhHvDkr6r/zuRSJF83
 sk/bqKB15gTxo21vD45Mnu8GW2iuCPxfSe4Gm0r9tXg7AOw4ir0DcBaW4
 QNqUH7KU4HoYYtQ6Q+su4h59xrpsgZs5IGBXK1YYK9ArxJqndxs+o3IC2
 AcpAlGfF1tV8WPC/fdcJU/bkJV9nZ9parIK8mb8Vgt4HIz5tacnsMcPS0 A==;
X-CSE-ConnectionGUID: H6uCV0x4SduvF6DXqWOgtQ==
X-CSE-MsgGUID: JnKkQQsdR3mq8KIEtTCDbw==
X-IronPort-AV: E=McAfee;i="6800,10657,11468"; a="63939562"
X-IronPort-AV: E=Sophos;i="6.16,248,1744095600"; d="scan'208";a="63939562"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2025 03:28:39 -0700
X-CSE-ConnectionGUID: fA67xniRRBiNZqbO0XKmJw==
X-CSE-MsgGUID: 8cEKy2+rR32fklDnTYwl7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,248,1744095600"; d="scan'208";a="154986366"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa003.jf.intel.com with ESMTP; 19 Jun 2025 03:28:38 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, jani.nikula@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 1/2] drm/i915/hdcp: Do not use inline intel_de_read
Date: Thu, 19 Jun 2025 15:58:03 +0530
Message-Id: <20250619102804.3377807-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250619102804.3377807-1-suraj.kandpal@intel.com>
References: <20250619102804.3377807-1-suraj.kandpal@intel.com>
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

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index 7bd775fb65a0..3620f7853c8f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -805,10 +805,13 @@ intel_dp_mst_hdcp2_stream_encryption(struct intel_connector *connector,
 	enum pipe pipe = (enum pipe)cpu_transcoder;
 	enum port port = dig_port->base.port;
 	int ret;
+	u32 val;
+	u8 stream_type;
 
+	val = intel_de_read(display, HDCP2_AUTH_STREAM(display, cpu_transcoder, port));
+	stream_type = REG_FIELD_GET8(AUTH_STREAM_TYPE, val);
 	drm_WARN_ON(display->drm, enable &&
-		    !!(intel_de_read(display, HDCP2_AUTH_STREAM(display, cpu_transcoder, port))
-		    & AUTH_STREAM_TYPE) != data->streams[0].stream_type);
+		    stream_type == data->streams[0].stream_type);
 
 	ret = intel_dp_mst_toggle_hdcp_stream_select(connector, enable);
 	if (ret)
-- 
2.34.1

