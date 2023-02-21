Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 094E769EADF
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Feb 2023 00:03:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E94C10E6C8;
	Tue, 21 Feb 2023 23:03:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A12710E6C8
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Feb 2023 23:03:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677020589; x=1708556589;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=gHQsCYtz4E4vevZC4JpoIrbH63VDa1plkC40zZRcX5k=;
 b=lMmjldERwYM0Sn7UBih7rpafGd2orSp3+aSSjOak6L8WPgULfyUaLmAt
 2Cv2LotJ/3XbRNdh15m/MWDO5Fn/W4YF+eXx7tqUc82/Mgy/CO72fEX35
 oUJ5tJdQBWCrPe7iI+EDCROkMcShFSBjZc9l8fKYKCwss6zA5g1vuIQJG
 yNbBYLya8zPaCU5HBNPpzm77Oa6SwueZN7+oORZ+Y489qHqQdwlvXVM6i
 mOG0FC2wKWfOlT6sWLkLhiHgNNdIB3CGIl1/2QKmhriuwUqlF9SmwAQux
 8m3r1Z3N/qOpl+QXEcr7H2avoWoMsOjAqBEE6DKYRdeZoZtzAaScDGDZS w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="330501831"
X-IronPort-AV: E=Sophos;i="5.97,317,1669104000"; d="scan'208";a="330501831"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 15:03:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="814690168"
X-IronPort-AV: E=Sophos;i="5.97,317,1669104000"; d="scan'208";a="814690168"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga001.fm.intel.com with SMTP; 21 Feb 2023 15:03:06 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 22 Feb 2023 01:03:05 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Feb 2023 01:02:18 +0200
Message-Id: <20230221230227.6244-14-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230221230227.6244-1-ville.syrjala@linux.intel.com>
References: <20230221230227.6244-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 13/22] drm/i915: Assert that device info
 bitmasks have enough bits
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

Sprinkle in some BUILD_BUG_ON()s to make sure some of
the bitmasks used in the device info have enough bits.

Do we have a better place for this sort of stuff?

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/intel_device_info.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 4ef7dd1d3bbe..70846e5d9a33 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -406,8 +406,12 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 	struct intel_device_info *info = mkwrite_device_info(dev_priv);
 	struct intel_runtime_info *runtime = RUNTIME_INFO(dev_priv);
 	enum pipe pipe;
 
+	BUILD_BUG_ON(BITS_PER_TYPE(runtime->pipe_mask) < I915_MAX_PIPES);
+	BUILD_BUG_ON(BITS_PER_TYPE(runtime->cpu_transcoder_mask) < I915_MAX_TRANSCODERS);
+	BUILD_BUG_ON(BITS_PER_TYPE(runtime->port_mask) < I915_MAX_PORTS);
+
 	/* Wa_14011765242: adl-s A0,A1 */
 	if (IS_ADLS_DISPLAY_STEP(dev_priv, STEP_A0, STEP_A2))
 		for_each_pipe(dev_priv, pipe)
 			runtime->num_scalers[pipe] = 0;
-- 
2.39.2

