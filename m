Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B0658CA0D9
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2024 18:48:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B90F10E11F;
	Mon, 20 May 2024 16:48:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RqPCd5xC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A70B10E11F
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2024 16:48:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716223700; x=1747759700;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KBz7N8w8WeBAepTa8g9HO2MuxgiHrKJJ3uws0tJZ4qI=;
 b=RqPCd5xCLJaDLAhB+96qDmIqcqmqEz153yAhZHwFy3Ymz2j6lLrODqn9
 zmXRNGmlPFqZmiEZUBrQJvzsMRQJIoCQxIdPKTZd8pnzkSiYo7vLSszX2
 8pDlSZ97rhAfNLMGlvhQoS3Yo0LL1sudRhcA9BCT/kONjZKCEnZ6MjFPw
 /fKG4xkgOkm+xdJIF0xMvMuhInzPPzD5gQKpZvw+82UEO3EohiY37LbQF
 vOho7Z9VYwhC4qaq3ReQyXvhvV0VzvbLqUdd2DC3KQHSgHpGufPAbtM94
 XyBAQGn9064soQ68RVhmsWgPrCSzqbCnEnm9ZOaXSsdI0mLd8MtEaQW3b A==;
X-CSE-ConnectionGUID: gvsAAU9MQ4u9Fbxu3renCw==
X-CSE-MsgGUID: oNxCsDjcQTmWfT7RFNSgJw==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="29884355"
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="29884355"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 09:47:35 -0700
X-CSE-ConnectionGUID: AiMjzlC7SaSpGL8J3gSVoQ==
X-CSE-MsgGUID: Gz/eW0zZTtWQVuYkeE/fEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="32581413"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 20 May 2024 09:47:34 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 May 2024 19:47:32 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2] drm/i915: Bump max TMDS bitrate to 6 Gbps on
 ADL-S/ADL-P/DG2+
Date: Mon, 20 May 2024 19:47:32 +0300
Message-ID: <20240520164732.3682-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.1
In-Reply-To: <20240516182715.27119-1-ville.syrjala@linux.intel.com>
References: <20240516182715.27119-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Bspec lists the mas TMDS bitrate as 6 Gbps on ADL-S/ADL-P/DG2.
Bump our limit to match.

v2: Bump for ADL-S as well (Jani)

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 0faf2afa1c09..9ac670a40bc1 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -1784,7 +1784,9 @@ static int intel_hdmi_source_max_tmds_clock(struct intel_encoder *encoder)
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	int max_tmds_clock, vbt_max_tmds_clock;
 
-	if (DISPLAY_VER(dev_priv) >= 10)
+	if (DISPLAY_VER(dev_priv) >= 13 || IS_ALDERLAKE_S(dev_priv))
+		max_tmds_clock = 600000;
+	else if (DISPLAY_VER(dev_priv) >= 10)
 		max_tmds_clock = 594000;
 	else if (DISPLAY_VER(dev_priv) >= 8 || IS_HASWELL(dev_priv))
 		max_tmds_clock = 300000;
-- 
2.44.1

