Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8018471832E
	for <lists+intel-gfx@lfdr.de>; Wed, 31 May 2023 15:48:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1082710E4DF;
	Wed, 31 May 2023 13:48:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60A0C10E4DD
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 May 2023 13:48:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685540899; x=1717076899;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ybMJfszxSgvqWYnLQaOt3BsEwJLP3O7/iwAXVp6dvN8=;
 b=TDiogfP/I7GFSTgC1THxt1MMmeQQHkATnPYjfEMi7R/+EA+sV0vmyk96
 ZzLEyIh7pG0dFMJI8Y3RY+ymvzNj6SLYyECsGakbm7AGnsL2Bmgd3sEqP
 KYMTE3nFpErnmutd3N55zGJtzFmFjzZJXPF+t/pCcoQN5My6HPi8HDYOP
 WLa9bHryuiQye0+8OXWffyXG1fAWzjSFaKpyTClHsGct3y4fM4lpyWZ7Z
 gSw3VbYX6X0VVH9PSyjRV3lNXBueqw7ucx3xo31Tt40UHtxTMuf6GC4Ck
 IRTPbIV0j9uOdlp9UfeJBU3uln6vx9qTgrlofwo+h+BPFJsxyB/0HUmmA A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="421008266"
X-IronPort-AV: E=Sophos;i="6.00,207,1681196400"; d="scan'208";a="421008266"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2023 06:48:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="736679949"
X-IronPort-AV: E=Sophos;i="6.00,207,1681196400"; d="scan'208";a="736679949"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga008.jf.intel.com with SMTP; 31 May 2023 06:48:16 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 31 May 2023 16:48:15 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 31 May 2023 16:48:02 +0300
Message-Id: <20230531134806.23065-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230531134806.23065-1-ville.syrjala@linux.intel.com>
References: <20230531134806.23065-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/7] drm/i915: Assert that device info
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
index f79142983f28..8a35005c46c0 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -419,6 +419,10 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 		DISPLAY_RUNTIME_INFO(dev_priv);
 	enum pipe pipe;
 
+	BUILD_BUG_ON(BITS_PER_TYPE(display_runtime->pipe_mask) < I915_MAX_PIPES);
+	BUILD_BUG_ON(BITS_PER_TYPE(display_runtime->cpu_transcoder_mask) < I915_MAX_TRANSCODERS);
+	BUILD_BUG_ON(BITS_PER_TYPE(display_runtime->port_mask) < I915_MAX_PORTS);
+
 	/* Wa_14011765242: adl-s A0,A1 */
 	if (IS_ADLS_DISPLAY_STEP(dev_priv, STEP_A0, STEP_A2))
 		for_each_pipe(dev_priv, pipe)
-- 
2.39.3

