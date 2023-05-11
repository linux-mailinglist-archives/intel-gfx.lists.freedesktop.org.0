Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 90DB96FF7D0
	for <lists+intel-gfx@lfdr.de>; Thu, 11 May 2023 18:55:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F20110E576;
	Thu, 11 May 2023 16:55:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C009110E52A
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 May 2023 16:55:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683824146; x=1715360146;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=sb+kGwebVjrA7dPjhiGPz5tYFQ09MkFvCJKGU+EFahc=;
 b=l7anjUkuDWOF28hVmpYae5pZyC1hkB2gtJ2AX3/Mo/FyXlKZQxbo+0a3
 z1L/hColHGUizWxjI3mviA17ruw2Uvy1ehqm1L00I8Wa654PwVgZuebQu
 WTFbQB6A6rBJvR8vEXcUaxdh7Ro0WXjYbnHWWM/KCXg4nUgU3DuQjC1UH
 FO58+Jcs7o8kIEVuhey0I9TK6fAqCffJQmKLFiWR4LYrMlFIYadKmzwTe
 jYhe2pJYk5OjQwz53vXCcfhjKRNfbxmdZG+SivIde4QFQIbgagyWIcJfh
 xZsXgQfnVdcHjzR6jBeMaeldIXLa3hZa+mXsgvF6LIyF1eNU8L87uFHaB g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="352796192"
X-IronPort-AV: E=Sophos;i="5.99,268,1677571200"; d="scan'208";a="352796192"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2023 09:55:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="677319540"
X-IronPort-AV: E=Sophos;i="5.99,268,1677571200"; d="scan'208";a="677319540"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga006.jf.intel.com with SMTP; 11 May 2023 09:55:44 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 11 May 2023 19:55:43 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 May 2023 19:55:30 +0300
Message-Id: <20230511165534.10266-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230511165534.10266-1-ville.syrjala@linux.intel.com>
References: <20230511165534.10266-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/7] drm/i915: Assert that device info bitmasks
 have enough bits
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
index bb10e8e78a94..ce257446b712 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -414,6 +414,10 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 	struct intel_runtime_info *runtime = RUNTIME_INFO(dev_priv);
 	enum pipe pipe;
 
+	BUILD_BUG_ON(BITS_PER_TYPE(runtime->pipe_mask) < I915_MAX_PIPES);
+	BUILD_BUG_ON(BITS_PER_TYPE(runtime->cpu_transcoder_mask) < I915_MAX_TRANSCODERS);
+	BUILD_BUG_ON(BITS_PER_TYPE(runtime->port_mask) < I915_MAX_PORTS);
+
 	/* Wa_14011765242: adl-s A0,A1 */
 	if (IS_ADLS_DISPLAY_STEP(dev_priv, STEP_A0, STEP_A2))
 		for_each_pipe(dev_priv, pipe)
-- 
2.39.3

