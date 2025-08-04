Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A13A5B1A382
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Aug 2025 15:38:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 944C310E527;
	Mon,  4 Aug 2025 13:38:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jWZl0uo1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A39510E362;
 Mon,  4 Aug 2025 13:38:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754314724; x=1785850724;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dsnbq3xX3tTvRuivHas6XDP6OhdcpBeWY4pFIx0yxRk=;
 b=jWZl0uo1gx4eRRIUU+uBjLPcKii+BeeFqVUhHsuPCQ9gQ7YB/ZATUlGp
 InyaG0NyR34sireJwzvaIh+geQbUoLXF7f/gEhguyei3t3mYv3Tcd30vf
 sXKuvXZl39nrTlR+aGZXiJ6yYgtmF52bMxHCPQwtLbVaqQtYdp0wivcpY
 VjG4ZQZEdcI5tZ3++06K/3ECtoXXR2ns/6a3pBjT/GW8rVwEUZ0X3w+ep
 GX503+DXNk5Ad8Wrg6l58RnrXajUiRGymo6wX+PqxsZBUwYBDxCtYocSF
 Zx5/m7xCf+B3bpR1anQSAR9yImXoJyhgYOcMzbi1GfO86a0bI1B8haNoj Q==;
X-CSE-ConnectionGUID: aSakXJisT+eGXz6rG77idQ==
X-CSE-MsgGUID: OBACn+GGRMWn02IIeFwCYA==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="56447374"
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="56447374"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 06:38:43 -0700
X-CSE-ConnectionGUID: dJiVadfESSeY0/UvXNBJZg==
X-CSE-MsgGUID: xABgucNLTp6vnke/CfUGrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="163430636"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 06:38:42 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 02/15] drm/i915/skl_watermark: Add bounds check for scaler
 array access
Date: Mon,  4 Aug 2025 18:54:27 +0530
Message-ID: <20250804132441.990441-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250804132441.990441-1-ankit.k.nautiyal@intel.com>
References: <20250804132441.990441-1-ankit.k.nautiyal@intel.com>
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

Ensure num_scaler_users does not exceed the size of scaler_state->scalers[]
before accessing scaler parameters in dsc_prefill_latency.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 5a120c1f66f4..9d52727b81b1 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2191,7 +2191,8 @@ dsc_prefill_latency(const struct intel_crtc_state *crtc_state)
 
 	if (!crtc_state->dsc.compression_enable ||
 	    !num_scaler_users ||
-	    num_scaler_users > crtc->num_scalers)
+	    num_scaler_users > crtc->num_scalers ||
+	    num_scaler_users > ARRAY_SIZE(scaler_state->scalers))
 		return dsc_prefill_latency;
 
 	dsc_prefill_latency = DIV_ROUND_UP(15 * linetime * chroma_downscaling_factor, 10);
-- 
2.45.2

