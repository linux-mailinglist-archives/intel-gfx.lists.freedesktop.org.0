Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED7E69B3134
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 14:00:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F93310E4A6;
	Mon, 28 Oct 2024 13:00:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LbE+A+fh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB3DD10E032;
 Mon, 28 Oct 2024 13:00:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730120444; x=1761656444;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Nm01YQiVJWvzNHKGuj+YJlZDd5QcuSs1YzfKZJhtLAc=;
 b=LbE+A+fh2fbKZgcoZQ9uipoEO9d/Enwe+8+oUDvmFa6hdNvfVcdg3l2j
 JpFmybqhB1ca8/ekRO9pWVedxxkWpMEYQb1tLcG4VCFu+HArBFjCQTUFp
 lnDgD6/+vAWd0gCUvVBC3hFj5gWgW1MvL8u8HoQfa2/myMJqEaXZKXOrN
 zRCWc1XtqD1SSsLKMGhtWt0hM63Lkdqzm459vI1df75qgvygZ36W+E5eP
 EJ+aHrRyLox1yGd8UyDCRJj0WAp7Q4K71ComLlE6kITu/gTvOcPmsuNsi
 cR6uSwbvFkiGKR04vOtfXYkp15KsmScF3y9I7D+N/gHmtAB0s3WGPZIdV w==;
X-CSE-ConnectionGUID: p0CPr85GSt2dNXTQyl0RAg==
X-CSE-MsgGUID: M/jQJKOeQOuweQo1xP/W0Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11238"; a="29172856"
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="29172856"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 06:00:43 -0700
X-CSE-ConnectionGUID: jlsyf8dARfCMQxmchQUU2w==
X-CSE-MsgGUID: +umz3WZvR9y+kT2okct/hQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="86223322"
Received: from unknown (HELO kandpal-X299-UD4-Pro.iind.intel.com)
 ([10.190.239.10])
 by fmviesa004.fm.intel.com with ESMTP; 28 Oct 2024 06:00:38 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 2/3] drm/i915/psr: Change psr size limits check
Date: Mon, 28 Oct 2024 18:30:13 +0530
Message-Id: <20241028130012.199090-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241028074333.182041-3-suraj.kandpal@intel.com>
References: <20241028074333.182041-3-suraj.kandpal@intel.com>
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

Change the check to only check for psr size limits till Pre-Xe2
since after that the psr size is equal to maximum pipe size anyways.

--v2
-Check only size limit until pre-Xe2 [Matt]

--v3
-Make sure psr_max_{h,v} and max_bpp are equal to crtc_{h,v}_display
and pipe_bpp [Ankit]

Bspec: 69885, 68858
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 4176163ec19a..880ea845207f 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1453,11 +1453,15 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 		return false;
 	}
 
-	if (DISPLAY_VER(display) >= 12) {
+	if (DISPLAY_VER(display) >= 20) {
+		psr_max_h = crtc_hdisplay;
+		psr_max_v = crtc_vdisplay;
+		max_bpp = crtc_state->pipe_bpp;
+	} else if (IS_DISPLAY_VER(display, 12, 14)) {
 		psr_max_h = 5120;
 		psr_max_v = 3200;
 		max_bpp = 30;
-	} else if (DISPLAY_VER(display) >= 10) {
+	} else if (IS_DISPLAY_VER(display, 10, 11)) {
 		psr_max_h = 4096;
 		psr_max_v = 2304;
 		max_bpp = 24;
-- 
2.34.1

