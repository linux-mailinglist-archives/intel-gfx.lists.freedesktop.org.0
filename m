Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 514BD671692
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jan 2023 09:52:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8403D10E238;
	Wed, 18 Jan 2023 08:52:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCA8D10E238
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jan 2023 08:52:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674031965; x=1705567965;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MccpgKiLsu/EYYhWysA/Insjn/fpWIWo1Nbga8ILqLc=;
 b=GnXi4oa/N20g2grO8fcx45zC17aMa/EJcV+k4j0vrcI9iamD595jxQ79
 PJaU9j3ZJ0lCt7CDvgv7GmCwGW5EB7M3JnsAS0kxXA76ChjMFbKs/x9BN
 /fFmeRyPyQYi+o3lSjqfdojXdrEAYEEcuDaO+F68/dcN2GB7kFOHq2r5H
 Wykq2vFmm9yze0P4tU6Wqf3fTxpL6FIgVLMJXyZfrgK5ZLpvr5dSuLRdh
 zPFVt6gxEIRkkC00GTXhVZVeJTonzX7k3DHe+gZILWJSa9sPt0YKSZpef
 rV3qN5AemDYIlqC/zxBIN3wwI3lHksC+5FtILJHq6CknKds7e5g2ln7dO Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="387284470"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="387284470"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 00:52:45 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="637195684"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="637195684"
Received: from kleve-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.252.53.237])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 00:52:44 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Jan 2023 10:51:59 +0200
Message-Id: <20230118085200.1017626-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230118085200.1017626-1-jouni.hogander@intel.com>
References: <20230118085200.1017626-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/psr: Implement Wa_14014971492
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

Implement Wa_14014971492 and apply it for affected platforms.

Bspec: 52890, 54369, 55378, 66624

Cc: Mika Kahola <mika.kahola@intel.com>
Cc: José Roberto de Souza <jose.souza@intel.com>
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 7d4a15a283a0..24900a790508 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1842,6 +1842,11 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 	if (full_update)
 		goto skip_sel_fetch_set_loop;
 
+	/* Wa_14014971492 */
+	if ((IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
+	     IS_DISPLAY_VER(dev_priv, 12, 13)) && crtc_state->splitter.enable)
+		pipe_clip.y1 = 0;
+
 	ret = drm_atomic_add_affected_planes(&state->base, &crtc->base);
 	if (ret)
 		return ret;
-- 
2.34.1

