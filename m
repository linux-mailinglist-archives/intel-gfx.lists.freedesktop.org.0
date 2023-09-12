Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A56C79CF4D
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Sep 2023 13:07:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 958C910E3FC;
	Tue, 12 Sep 2023 11:07:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F8A110E3FA;
 Tue, 12 Sep 2023 11:07:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694516838; x=1726052838;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QPPrA1DX+ybTJvpF7T3jUhdM5bUC5xH0nSGJzaqscIQ=;
 b=bTbiLZWnMFHnT/oIlINdkPB85zUk3xdLYvuxJJ9qDjk3d8vniFbREoI+
 CGoqJ/7vr5yugdReUQYe858xFiVnnnC4u/0YWkybJ9omo4YwQ6pWGowoX
 07pFz1lN4fHv4Z7ET187yjenZ4+kMnLLIayo+AUSKNM9MY2cCu42tE9d8
 YmD7y7Ec+NCGsxRwfsg6k051F+3cbWabpz4Y2JqpX9VrQzQ4ZZfdAFqn+
 h5IWwc49L6LdP/RHczOeTXgURryoVzZiOs0PsZ9mR1gzySQ5/9hv5bx2i
 WXXlusqCipHdjWOcQiegn3Pzu8zimIEKZ1cGWvH9otkCKKATdmhRfx+Er A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="409295323"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="409295323"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 04:07:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="743688060"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="743688060"
Received: from kscholl-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.63.206])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 04:07:16 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 12 Sep 2023 14:06:32 +0300
Message-Id: <7c10d8c4a2a628cba17b3b0f89b657dfbc91eaa9.1694514689.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1694514689.git.jani.nikula@intel.com>
References: <cover.1694514689.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 05/19] drm/i915/display: add I915 conditional
 build to intel_lpe_audio.h
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
Cc: jani.nikula@intel.com, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add stubs for !I915.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lpe_audio.h | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_lpe_audio.h b/drivers/gpu/drm/i915/display/intel_lpe_audio.h
index 0beecac267ae..2c5fcb6e1fd0 100644
--- a/drivers/gpu/drm/i915/display/intel_lpe_audio.h
+++ b/drivers/gpu/drm/i915/display/intel_lpe_audio.h
@@ -12,11 +12,29 @@ enum port;
 enum transcoder;
 struct drm_i915_private;
 
+#ifdef I915
 int  intel_lpe_audio_init(struct drm_i915_private *dev_priv);
 void intel_lpe_audio_teardown(struct drm_i915_private *dev_priv);
 void intel_lpe_audio_irq_handler(struct drm_i915_private *dev_priv);
 void intel_lpe_audio_notify(struct drm_i915_private *dev_priv,
 			    enum transcoder cpu_transcoder, enum port port,
 			    const void *eld, int ls_clock, bool dp_output);
+#else
+static inline int intel_lpe_audio_init(struct drm_i915_private *dev_priv)
+{
+	return -ENODEV;
+}
+static inline void intel_lpe_audio_teardown(struct drm_i915_private *dev_priv)
+{
+}
+static inline void intel_lpe_audio_irq_handler(struct drm_i915_private *dev_priv)
+{
+}
+static inline void intel_lpe_audio_notify(struct drm_i915_private *dev_priv,
+					  enum transcoder cpu_transcoder, enum port port,
+					  const void *eld, int ls_clock, bool dp_output)
+{
+}
+#endif
 
 #endif /* __INTEL_LPE_AUDIO_H__ */
-- 
2.39.2

