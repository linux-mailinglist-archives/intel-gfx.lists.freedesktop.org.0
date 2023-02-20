Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0E8D69D23F
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Feb 2023 18:45:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1675C10E752;
	Mon, 20 Feb 2023 17:45:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3F8A10E749
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Feb 2023 17:45:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676915127; x=1708451127;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=gHQsCYtz4E4vevZC4JpoIrbH63VDa1plkC40zZRcX5k=;
 b=M9Tbo7wNpEEWzrQub+Ko4oKR89F5Cnw8U24AeZOtaazCvFOdPBs17BCm
 li2OQngvhktspy9zhZuT/dNP14m0seLMX0PdDgwmWy0KFabj65QqFVCdE
 qRsOcO4yHyY57lR5kmhjVXktdiHWFKP5nTqoKBWakLWMMNvbO5jY0hwTr
 w2YTX47HupQy1fCzeAg278xbw0uq9RU+JhKczFavOxMA5plaog1LQ2G2q
 jPu+OJh+6vkCsxPUY7+UXuHH3DNeXWqWIcQwZwOOEjBob4PjBbWE0Wvp8
 /sNtpjJj/DGa2GqDRffCLjgclKjAsTL6wJwfJq4DzxilnAIbLdrHuENBl A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="312085400"
X-IronPort-AV: E=Sophos;i="5.97,313,1669104000"; d="scan'208";a="312085400"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2023 09:45:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="701745365"
X-IronPort-AV: E=Sophos;i="5.97,313,1669104000"; d="scan'208";a="701745365"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga008.jf.intel.com with SMTP; 20 Feb 2023 09:45:25 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 Feb 2023 19:45:24 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Feb 2023 19:44:43 +0200
Message-Id: <20230220174448.7611-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230220174448.7611-1-ville.syrjala@linux.intel.com>
References: <20230220174448.7611-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 12/17] drm/i915: Assert that device info
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

