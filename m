Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BD235446B9F
	for <lists+intel-gfx@lfdr.de>; Sat,  6 Nov 2021 01:37:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E164B6ED02;
	Sat,  6 Nov 2021 00:37:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D9426ED02
 for <intel-gfx@lists.freedesktop.org>; Sat,  6 Nov 2021 00:37:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10159"; a="229472189"
X-IronPort-AV: E=Sophos;i="5.87,212,1631602800"; d="scan'208";a="229472189"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2021 17:37:21 -0700
X-IronPort-AV: E=Sophos;i="5.87,212,1631602800"; d="scan'208";a="498647264"
Received: from invictus.jf.intel.com ([10.165.21.205])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2021 17:37:21 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  5 Nov 2021 17:37:14 -0700
Message-Id: <20211106003714.17894-1-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Fix Memory BW formulae for ADL-P
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

The earlier update to BW formulae broke ADL-P. Include
GEN13 to use TGL path for BW parameters.

Fixes: c64a9a7c05be drm/i915: Update memory bandwidth formulae
Cc: Matt Roper <matthew.d.roper@intel.com>
Reported-by: José Roberto de Souza <jose.souza@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 15c006194c85..abec394f6869 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -147,7 +147,7 @@ static int icl_get_qgv_points(struct drm_i915_private *dev_priv,
 	qi->num_points = dram_info->num_qgv_points;
 	qi->num_psf_points = dram_info->num_psf_gv_points;
 
-	if (DISPLAY_VER(dev_priv) == 12)
+	if (DISPLAY_VER(dev_priv) >= 12)
 		switch (dram_info->type) {
 		case INTEL_DRAM_DDR4:
 			qi->t_bl = is_y_tile ? 8 : 4;
-- 
2.20.1

