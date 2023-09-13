Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1106079E8CC
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Sep 2023 15:11:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B2C710E4BD;
	Wed, 13 Sep 2023 13:11:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F49E10E4BA
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Sep 2023 13:11:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694610680; x=1726146680;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3OujoEKXa+nIRAyFtItrsoA3ffwHfCTcHPYCdjnzvTk=;
 b=Yo8zyTccsgefJmsTALNLsQiqMPRytQ24Rhs4Va7nOEmzsM8UtUKqN4jX
 fFyYTYhzIms5HjGcwT1ngbWA4Q00sWckeo220Plp/QekWN/riEl5rM32q
 T6fYKe61oxrZj1KxnyUFwaQ5lwwgwhgRHZDqAk87BSDB7Yq9xfrk6Z1wJ
 je6KrvCuIxKf85VN8u463Lm3/T3PG2oi+TbmGDUJphPanZk9PR/4BBV/B
 /nUVhUB3hGnbrdH5/MXeGNt/wbA3YEBsSbVG1z2DLwvch2RxzaSMqj62k
 Yy8/wpZjzWRVDcn2hS4lIsmk0Zqy2+BroTVRNvdffZghVuTn1TSTf0hwA A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="382461155"
X-IronPort-AV: E=Sophos;i="6.02,143,1688454000"; d="scan'208";a="382461155"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2023 06:09:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="747303668"
X-IronPort-AV: E=Sophos;i="6.02,143,1688454000"; d="scan'208";a="747303668"
Received: from nirmoyda-desk.igk.intel.com ([10.102.138.190])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2023 06:09:57 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 Sep 2023 15:09:35 +0200
Message-ID: <20230913130935.27707-9-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230913130935.27707-1-nirmoy.das@intel.com>
References: <20230913130935.27707-1-nirmoy.das@intel.com>
MIME-Version: 1.0
Organization: Intel Deutschland GmbH, Registered Address: Am Campeon 10,
 85579 Neubiberg, Germany,
 Commercial Register: Amtsgericht Muenchen HRB 186928 
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 7/7] drm/i915: Enable GGTT updates with binder
 in MTL
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
Cc: andi.shyti@intel.com, chris.p.wilson@linux.intel.com,
 matthew.d.roper@intel.com, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

MTL can hang because of a HW bug while parallel reading/writing
from/to LMEM/GTTMMADR BAR so try to reduce GGTT update
related pci transactions with blitter command as recommended
for Wa_13010847436 and Wa_14019519902.

Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gtt.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
index 4c89eb8d9af7..4fbed27ef0ec 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
@@ -23,7 +23,8 @@
 
 bool i915_ggtt_require_binder(struct drm_i915_private *i915)
 {
-	return false;
+	/* Wa_13010847436 & Wa_14019519902 */
+	return MEDIA_VER_FULL(i915) == IP_VER(13, 0);
 }
 
 static bool intel_ggtt_update_needs_vtd_wa(struct drm_i915_private *i915)
-- 
2.41.0

