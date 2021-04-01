Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67E86351711
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Apr 2021 19:03:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91B826E145;
	Thu,  1 Apr 2021 17:02:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A927D6E145
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Apr 2021 17:02:56 +0000 (UTC)
IronPort-SDR: FwoABhemVbcS36j5YRGQFnI53toO6zEFA/dm61Duq8OHL+O/OEfSMtTEY9h+HZENS606TF3Mzg
 WBvqUuho5PAg==
X-IronPort-AV: E=McAfee;i="6000,8403,9941"; a="191768695"
X-IronPort-AV: E=Sophos;i="5.81,296,1610438400"; d="scan'208";a="191768695"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2021 10:02:55 -0700
IronPort-SDR: JcGu5xp3FqkMREHNwbCU9ozJ/ydxgnkIgftZfUb6vaeHhmOO4cflFPEBJgJ3ff0oa6Apy38AIw
 T1FZje3uTkkg==
X-IronPort-AV: E=Sophos;i="5.81,296,1610438400"; d="scan'208";a="419284224"
Received: from dsmahang-mobl2.ger.corp.intel.com (HELO helsinki.intel.com)
 ([10.249.47.220])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2021 10:02:54 -0700
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  1 Apr 2021 20:02:37 +0300
Message-Id: <20210401170237.40472-1-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/display/psr: Disable DC3CO when the
 PSR2 is used.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Due to the changed sequence of activating/deactivating DC3CO, disable
DC3CO until the changed dc3co activating/deactivating sequence is applied.

References: https://gitlab.freedesktop.org/drm/intel/-/issues/3134
Signed-off-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 1d561812fcad..32d3d56259c2 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -654,6 +654,13 @@ tgl_dc3co_exitline_compute_config(struct intel_dp *intel_dp,
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	u32 exit_scanlines;
 
+	/*
+	 * FIXME: Due to the changed sequence of activating/deactivating DC3CO,
+	 * disable DC3CO until the changed dc3co activating/deactivating sequence
+	 * is applied. B.Specs:49196
+	 */
+	return;
+
 	/*
 	 * DMC's DC3CO exit mechanism has an issue with Selective Fecth
 	 * TODO: when the issue is addressed, this restriction should be removed.
-- 
2.30.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
