Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CF5A6BF71C
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Mar 2023 01:59:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 016B210E441;
	Sat, 18 Mar 2023 00:59:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AABD710E307
 for <intel-gfx@lists.freedesktop.org>; Sat, 18 Mar 2023 00:59:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679101171; x=1710637171;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=N0gT4mnlXzk4awzd5ALzlFzEx9H+mlophev97p00CNc=;
 b=E6usM+XHIgbnZ5eelGPfSgUOPXDi3xTpLIL+b657sTZZD5jsm1MUAeMu
 tpCTHzG2e/AeHHy9p2R3q2iGN+2OHIDFpFltP/bvOJWHSQdLGr5b8SBDL
 QMi1iylIb7pOFlcXaPiQ7UxVJjQCxPnyzLrbwd4jVGqyEoSeYRJuCBRSv
 YoJa5WlQ9ERzxh3kkr5dOdN8y+aguZhRkaTL63aBp2R6vHreM67rccqQO
 3Bt8bJA/QKE0+AOJjxwMXxYJtFBDGgjRPFcGAPbF+6s+2Ymd8p9OCCH0D
 lM/i1avJWNujHq13zHMoMs84iXaB6Rk2/hC9tKh38qSTTcADYrmUUIpba g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="400971055"
X-IronPort-AV: E=Sophos;i="5.98,270,1673942400"; d="scan'208";a="400971055"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 17:59:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="804301802"
X-IronPort-AV: E=Sophos;i="5.98,270,1673942400"; d="scan'208";a="804301802"
Received: from invictus.jf.intel.com ([10.165.21.134])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 17:59:31 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Mar 2023 17:58:52 -0700
Message-Id: <20230318005852.2303937-5-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230318005852.2303937-1-radhakrishna.sripada@intel.com>
References: <20230318005852.2303937-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/4] drm/i915/mtl: Skip pcode qgv restrictions
 for MTL
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

Communicating QGV points restriction to PUnit happens via PM Demand
instead of the Pcode mailbox in the previous platforms. GV point
restriction is handled by the PM demand code.

Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 87c20bf52123..c292e63bdcbb 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -150,6 +150,9 @@ int icl_pcode_restrict_qgv_points(struct drm_i915_private *dev_priv,
 {
 	int ret;
 
+	if (DISPLAY_VER(dev_priv) >= 14)
+		return 0;
+
 	/* bspec says to keep retrying for at least 1 ms */
 	ret = skl_pcode_request(&dev_priv->uncore, ICL_PCODE_SAGV_DE_MEM_SS_CONFIG,
 				points_mask,
-- 
2.34.1

