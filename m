Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ADE17013EB
	for <lists+intel-gfx@lfdr.de>; Sat, 13 May 2023 04:16:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C044410E094;
	Sat, 13 May 2023 02:15:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13AAE10E091
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 May 2023 02:15:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683944157; x=1715480157;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=6sRvISOa4GseH8i9QawTk3mLohyTOcDv3i8uDsk+sEc=;
 b=fCZIaH9ixbHlRLPNon64FD2ymF8kS0GQ9lIUce3+MbIMINCj0o2bDc5N
 9UvZPjPWIeuavpCGkbowkHS0F4LKnaQ30fPM2KydPjFD6YPrnUTmIJIM4
 8E+KuZBca56j2BnYbgqi468zdsKr+PkZBW7r6b/JDYp+rIpSE7rURj5y0
 eQfLNAqcN6bKAntRVwk93VbKRg5jcRm/8ITQ45GFF+3ajCrjnj7j0jVIz
 gy83wN1m74u2FZXrQMwCxn1hCKE2FzCNh/mbyhJbvkFjn00UiJ+r+FdMP
 A0yqzDn4RROQ2ul0ZDiF3W0xz0BbKkADNXZrNSwF4wzphiTmnuSAjem1K A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="416557894"
X-IronPort-AV: E=Sophos;i="5.99,271,1677571200"; d="scan'208";a="416557894"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 19:15:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="733250936"
X-IronPort-AV: E=Sophos;i="5.99,271,1677571200"; d="scan'208";a="733250936"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 19:15:56 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 12 May 2023 19:14:37 -0700
Message-Id: <20230513021438.185352-1-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/2] drm/i915/mtl: Extend Wa_16014892111 to
 MTL A-step
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
Cc: Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The dg2 workaround which is used for performance tuning
is needed for Meteorlake A-step.

v2: Limit the WA for A-step

Bspec: 68331
Cc: Haridhar Kalvala <haridhar.kalvala@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 81a96c52a92b..9c1007c44298 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1370,7 +1370,9 @@ gen12_emit_indirect_ctx_rcs(const struct intel_context *ce, u32 *cs)
 					      cs, GEN12_GFX_CCS_AUX_NV);
 
 	/* Wa_16014892111 */
-	if (IS_DG2(ce->engine->i915))
+	if (IS_DG2(ce->engine->i915) ||
+	    IS_MTL_GRAPHICS_STEP(ce->engine->i915, M, STEP_A0, STEP_B0) ||
+	    IS_MTL_GRAPHICS_STEP(ce->engine->i915, P, STEP_A0, STEP_B0))
 		cs = dg2_emit_draw_watermark_setting(cs);
 
 	return cs;
-- 
2.34.1

