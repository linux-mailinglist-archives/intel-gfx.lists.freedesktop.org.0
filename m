Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95093AE02A8
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Jun 2025 12:28:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7156810EA00;
	Thu, 19 Jun 2025 10:28:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="REKolukl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADCC110E9FC;
 Thu, 19 Jun 2025 10:28:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750328921; x=1781864921;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Z6hL/JvaqDEqXMhBPFWfQ1UqFxDHGWtYnLzEb1Bat/M=;
 b=REKoluklGKhHcoOuCmKXZisUpF+bRCIv8uTXANgz2ikIb48l+cNLyOa6
 bBM61p2d1gQ47eJLg16UeV/5c3rBzZjxDktwfK/ZwseeMmkTF/MsCW0Yy
 BgHk+n1ClG2RnU+wLkq0g4vdZya8oqwnc6fI5k8e1KroZFZG9LGZH85T4
 GMEgCsDjykjMd9TSiwiWM8mFq6Pl9/0i7rzA4b1M12e7wzSuVav4SAhPz
 rpwP99Jf1fgnFy8SFGSS7g7KqPVW9yp9+leiIKqRjXiyhHz0bcnLvOqRZ
 uO+XVbau6mhpRv94C6UEyaicvwnlQDq1b/RLz5ygrMDuL4JrK3z4aU9KH A==;
X-CSE-ConnectionGUID: MfgihsTiSIKUtAM5bnpWAw==
X-CSE-MsgGUID: iB2oLNxpSpe++VVczxcPSg==
X-IronPort-AV: E=McAfee;i="6800,10657,11468"; a="63939565"
X-IronPort-AV: E=Sophos;i="6.16,248,1744095600"; d="scan'208,223";a="63939565"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2025 03:28:41 -0700
X-CSE-ConnectionGUID: EsSX0cXcSreQ3MXWMSvqDQ==
X-CSE-MsgGUID: R/yr3Hh0QMa7e0Om34V8hg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,248,1744095600"; 
 d="scan'208,223";a="154986374"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa003.jf.intel.com with ESMTP; 19 Jun 2025 03:28:40 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, jani.nikula@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 2/2] drm/i915/hdcp: Use HDCP2_STREAM_STATUS instead of
 HDCP2_AUTH_STREAM
Date: Thu, 19 Jun 2025 15:58:04 +0530
Message-Id: <20250619102804.3377807-3-suraj.kandpal@intel.com>
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

From PTL we need to move to using HDCP2_STREAM_STATUS as a WARN_ON
to see if written content type info is not the same since
HDCP2_AUTH_STREAM is inaccessible to us now.

--v2
-Fix commit message [Jani]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 19 +++++++++++++++----
 1 file changed, 15 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index 3620f7853c8f..a6fb201fea84 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -808,10 +808,13 @@ intel_dp_mst_hdcp2_stream_encryption(struct intel_connector *connector,
 	u32 val;
 	u8 stream_type;
 
-	val = intel_de_read(display, HDCP2_AUTH_STREAM(display, cpu_transcoder, port));
-	stream_type = REG_FIELD_GET8(AUTH_STREAM_TYPE, val);
-	drm_WARN_ON(display->drm, enable &&
-		    stream_type == data->streams[0].stream_type);
+	if (DISPLAY_VER(display) < 30) {
+		val = intel_de_read(display,
+				    HDCP2_AUTH_STREAM(display, cpu_transcoder, port));
+		stream_type = REG_FIELD_GET8(AUTH_STREAM_TYPE, val);
+		drm_WARN_ON(display->drm, enable &&
+			    stream_type == data->streams[0].stream_type);
+	}
 
 	ret = intel_dp_mst_toggle_hdcp_stream_select(connector, enable);
 	if (ret)
@@ -827,6 +830,14 @@ intel_dp_mst_hdcp2_stream_encryption(struct intel_connector *connector,
 		return -ETIMEDOUT;
 	}
 
+	if (DISPLAY_VER(display) >= 30) {
+		val = intel_de_read(display,
+				    HDCP2_STREAM_STATUS(display, cpu_transcoder, port));
+		stream_type = REG_FIELD_GET8(STREAM_TYPE_STATUS, val);
+		drm_WARN_ON(display->drm, enable &&
+			    stream_type != data->streams[0].stream_type);
+	}
+
 	return 0;
 }
 
-- 
2.34.1

