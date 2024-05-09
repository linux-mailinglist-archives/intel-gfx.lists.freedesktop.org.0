Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46BB58C0C3F
	for <lists+intel-gfx@lfdr.de>; Thu,  9 May 2024 10:04:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8512510E463;
	Thu,  9 May 2024 08:04:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lzFwsA+i";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D447510E463
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 May 2024 08:04:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715241873; x=1746777873;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=I2mFuoiwgH9k/3EyytpbrY6aCC0hbCodgv/T9LL7a7Y=;
 b=lzFwsA+iKb4nxGJkjnNdSNHj06Jay6/5ImGPMBRnc22B2xwQn3rOwhZg
 jsB3A/Hss53piVGDyR8iLHp77GE7elX8cKwFt3QYtevlxmC9VXCW5gj8S
 YtP6WIldyhxq+VjZz4fS8YELWDPw7C/tVGM+rp4Wf1+H2Dc7XCde+5RWp
 UOhc7g9aQVkzetj1m+zv+AR8NvTSp65NX0CDHi3yluudi6Ftbhis7o5ll
 0C1+pHCta5rSy5Fn6lvlCffV4sAQIHX3a73z8v3okTJL2cA+nAmnSBJvs
 uZBvTjdJjzaloq8ug2r9r9uOdsigZ6NmhbRe7oZO0vJeeeXAnZfKXy8+N A==;
X-CSE-ConnectionGUID: PNvFhgLbSWGzSLjvEkuMsw==
X-CSE-MsgGUID: 9GYeCH6YThCBFVsO8TnPuA==
X-IronPort-AV: E=McAfee;i="6600,9927,11067"; a="33656122"
X-IronPort-AV: E=Sophos;i="6.08,147,1712646000"; d="scan'208";a="33656122"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2024 01:04:33 -0700
X-CSE-ConnectionGUID: eFlBYuZ9QMmGi+w6ODgUoA==
X-CSE-MsgGUID: 6pl0IBHqQKStjEXoDeh5AQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,147,1712646000"; d="scan'208";a="29043548"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa010.jf.intel.com with ESMTP; 09 May 2024 01:04:32 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com,
	jani.nikula@intel.com
Subject: [PATCH v8 5/7] drm/i915/display: Add support for pack and unpack
Date: Thu,  9 May 2024 13:28:31 +0530
Message-Id: <20240509075833.1858363-6-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240509075833.1858363-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20240509075833.1858363-1-mitulkumar.ajitkumar.golani@intel.com>
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

Add support of pack and unpack for target_rr_divider.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 486361eb0070..523956193fbf 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4228,7 +4228,7 @@ static ssize_t intel_dp_as_sdp_pack(const struct drm_dp_as_sdp *as_sdp,
 	sdp->db[1] = as_sdp->vtotal & 0xFF;
 	sdp->db[2] = (as_sdp->vtotal >> 8) & 0xFF;
 	sdp->db[3] = as_sdp->target_rr & 0xFF;
-	sdp->db[4] = (as_sdp->target_rr >> 8) & 0x3;
+	sdp->db[4] = (as_sdp->target_rr >> 8) & 0x23;
 
 	return length;
 }
@@ -4410,6 +4410,7 @@ int intel_dp_as_sdp_unpack(struct drm_dp_as_sdp *as_sdp,
 	as_sdp->mode = sdp->db[0] & DP_ADAPTIVE_SYNC_SDP_OPERATION_MODE;
 	as_sdp->vtotal = (sdp->db[2] << 8) | sdp->db[1];
 	as_sdp->target_rr = (u64)sdp->db[3] | ((u64)sdp->db[4] & 0x3);
+	as_sdp->target_rr_divider = sdp->db[4] & 0x20;
 
 	return 0;
 }
-- 
2.25.1

