Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14A47666743
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jan 2023 00:56:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35D1910E170;
	Wed, 11 Jan 2023 23:56:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3695010E170
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Jan 2023 23:56:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673481375; x=1705017375;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nNq5VdyZ6gdn8uc6W6TeHGITiRXB8zfC8f6es86Wlqw=;
 b=Lc1jUsQb/XQucC3jKB4xwaFWG1VqOmpeIIfkKpGVbFLMKC5vQsScJp77
 n+O3TESvmpZuPWYm0ZzqhzohJzXS0I3eFmjB57KBFlfa0D94b4+Wo/aUB
 yIGOJtw4vA6oL+JAvsRx5XIm5NsQDzRTiEYymd7NP1a2uCQUcNyBTngmp
 DQvxGuCXDaL5OvQ5erJCyFZCu2tuo9+nh/eNhyLtygKHJf3V3uW5Fs7Gy
 EtcE9bJL+r9SUPHG8hhdH1eGpOiyySxxNY9EnqoSfc65RJpn3nc6mtdqu
 olMZ/DIdl5c5OD4JL5l8XyX2UWGBeOJ3jV9GwUg3nSzW2IQdJHwc5EbEe Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="307090893"
X-IronPort-AV: E=Sophos;i="5.96,318,1665471600"; d="scan'208";a="307090893"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2023 15:56:14 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="831486369"
X-IronPort-AV: E=Sophos;i="5.96,318,1665471600"; d="scan'208";a="831486369"
Received: from invictus.jf.intel.com ([10.165.21.134])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2023 15:56:14 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Jan 2023 15:55:24 -0800
Message-Id: <20230111235531.3353815-3-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230111235531.3353815-1-radhakrishna.sripada@intel.com>
References: <20230111235531.3353815-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH dii-client 2/9] drm/i915/mtl: Initialize empty
 clockgating hooks for MTL
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

Clock gating hooks to be initialized for MTL are yet to be implemented.
Use a nop till we identify relevant WA's here.

Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 73c88b1c9545..41046ceca9db 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -4819,7 +4819,9 @@ CG_FUNCS(nop);
  */
 void intel_init_clock_gating_hooks(struct drm_i915_private *dev_priv)
 {
-	if (IS_PONTEVECCHIO(dev_priv))
+	if (IS_METEORLAKE(dev_priv))
+		dev_priv->clock_gating_funcs = &nop_clock_gating_funcs;
+	else if (IS_PONTEVECCHIO(dev_priv))
 		dev_priv->clock_gating_funcs = &pvc_clock_gating_funcs;
 	else if (IS_DG2(dev_priv))
 		dev_priv->clock_gating_funcs = &dg2_clock_gating_funcs;
-- 
2.34.1

