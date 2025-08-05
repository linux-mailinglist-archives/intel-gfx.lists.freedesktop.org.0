Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2310B1B4F8
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Aug 2025 15:34:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6899A10E473;
	Tue,  5 Aug 2025 13:34:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KZ9lrunW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAD4210E455;
 Tue,  5 Aug 2025 13:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754400864; x=1785936864;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dsnbq3xX3tTvRuivHas6XDP6OhdcpBeWY4pFIx0yxRk=;
 b=KZ9lrunWdKr3qJpPCqj5C/+pwSBxm1uywGQz6MUlnf0IrdENROFcK+/V
 fzTOsMUq/aKfeO6YmYpThrHVgPSBoou4JLfhcg493Z/FPX7ywAu8I66AT
 a4hVrouVYV8mLoBIdPaWv7DE8AfZ+FNG8dqUeAVl9bNWufVDMse/ozEpy
 ktQamkz4u6YRw0GO1gVEFbQmiCkUot87tDZhA6UJvi6fI32pLy0QMriky
 NupbN3z/fz1WVucRUs/AQNr/Hd1xCcXPcojm7hO/ChBQgjSrtPRyEkYZg
 ymKEGqnWu3V98GO+jXlmNg/srVk9G6JNn/GIhP4sHue3SCQ7uCbAfsoHA g==;
X-CSE-ConnectionGUID: yGm0QmEsRSOWi4wDvGzRdg==
X-CSE-MsgGUID: PkVzOAwCTO6Awv4FGptr6A==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="67768930"
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="67768930"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 06:34:23 -0700
X-CSE-ConnectionGUID: RCAj95DtSaid/+m2LsRDUA==
X-CSE-MsgGUID: 9d8CWMk+Q2OAvPNi55CRvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="164915370"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 06:34:17 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 02/13] drm/i915/skl_watermark: Add bounds check for scaler
 array access
Date: Tue,  5 Aug 2025 18:50:05 +0530
Message-ID: <20250805132016.1250202-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250805132016.1250202-1-ankit.k.nautiyal@intel.com>
References: <20250805132016.1250202-1-ankit.k.nautiyal@intel.com>
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

