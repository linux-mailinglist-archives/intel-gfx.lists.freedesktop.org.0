Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47C04416605
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Sep 2021 21:40:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B84B6E10B;
	Thu, 23 Sep 2021 19:40:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5D6E6E10B
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Sep 2021 19:40:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10116"; a="223970610"
X-IronPort-AV: E=Sophos;i="5.85,317,1624345200"; d="scan'208";a="223970610"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2021 12:40:43 -0700
X-IronPort-AV: E=Sophos;i="5.85,317,1624345200"; d="scan'208";a="455236742"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-mobl2.intel.com)
 ([10.24.14.60])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2021 12:40:43 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Date: Thu, 23 Sep 2021 12:46:12 -0700
Message-Id: <20210923194617.69136-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210923194617.69136-1-jose.souza@intel.com>
References: <20210923194617.69136-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/7] drm/i915/display: Handle frontbuffer
 rendering when PSR2 selective fetch is enabled
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

CURSURFLIVE writes has no affect when PSR2 selective fetch is enabled,
the right thing to do here would be calculate the damaged area and
program PSR2 selective fetch registers properly during vblank but
we can't do that due to performance reasons.

So for now we can workaround and offer proper rendering by disabling
PSR2 and enabling in the worker a few miliseconds later if there is
no other frontbuffer rendering.

This approach will eat some of the PSR2 power savings when userspace
makes use of frontbuffer rendering but that is the solution that we
can offer to enable PSR2 selective fetch right now while we work in
the proper solution for frontbuffer rendering and PSR2.

Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index a2e4ef42be60a..ba2da689920f9 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1413,6 +1413,12 @@ static void psr_force_hw_tracking_exit(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 
+	/* CURSURFLIVE has no effect when Selective fetch is enabled */
+	if (intel_dp->psr.psr2_sel_fetch_enabled) {
+		intel_psr_exit(intel_dp);
+		return;
+	}
+
 	/*
 	 * Display WA #0884: skl+
 	 * This documented WA for bxt can be safely applied
-- 
2.33.0

