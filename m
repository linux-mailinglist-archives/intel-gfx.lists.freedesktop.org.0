Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 38FB173D760
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jun 2023 07:56:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFCBE10E0CF;
	Mon, 26 Jun 2023 05:55:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E58DD10E05F
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Jun 2023 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687758953; x=1719294953;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=W0gDzfz8w7JwEE/DoSJCcgz9O/S07z7ERQ4LrKmvo7c=;
 b=bbdwhl9GtBrZU18Vc7aCsRwNJYF2d9pvZHKb+3m0GheWu4xFJgzlt/QN
 jJvHODX6NMrg8qnpaOMD/6v6x5J+3LiLYVxgkSxNcRS1dWB5FbwKFQVcI
 Nf3TakVM6n2EUmhd/bXmYiHY34i/ttbd9X8BtNaVE92jotMHV/G/vo3HL
 tHDcZI+Uci4WnV3l/jg6rh9lvh6GOfmPCWrujK9uz5OSriw1pgf1+rJJi
 i1SCNBAj2HvW818netH1l7B4M+7IT/QjhpNV98kUs6bUspJD2pKDO679x
 l4V7QDSkx+y9swhIu2q/5TEvTMLTXi422YpbpvXrj5Qw+XK1UU8A9FXcP Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10752"; a="345934241"
X-IronPort-AV: E=Sophos;i="6.01,158,1684825200"; d="scan'208";a="345934241"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2023 22:55:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10752"; a="781287495"
X-IronPort-AV: E=Sophos;i="6.01,158,1684825200"; d="scan'208";a="781287495"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmsmga008.fm.intel.com with ESMTP; 25 Jun 2023 22:55:51 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 26 Jun 2023 11:24:44 +0530
Message-Id: <20230626055444.1113796-3-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230626055444.1113796-1-chaitanya.kumar.borah@intel.com>
References: <20230626055444.1113796-1-chaitanya.kumar.borah@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/color: For MTL convert 24 bit lut
 values to 16 bit
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

For MTL and beyond, convert back the 24 bit lut values
read from HW to 16 bit values to maintain parity with
userspace values. This way we avoid pipe config mismatch
for pre-csc lut values.

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 25c73e2e6fa3..856191640e71 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -3477,6 +3477,14 @@ static struct drm_property_blob *glk_read_degamma_lut(struct intel_crtc *crtc)
 	for (i = 0; i < lut_size; i++) {
 		u32 val = intel_de_read_fw(dev_priv, PRE_CSC_GAMC_DATA(pipe));
 
+		/*
+		 * For MTL and beyond, convert back the 24 bit lut values
+		 * read from HW to 16 bit values to maintain parity with
+		 * userspace values
+		 */
+		if (DISPLAY_VER(dev_priv) >= 14)
+			val = mul_u32_u32(val, (1 << 16)) / (1 << 24);
+
 		lut[i].red = val;
 		lut[i].green = val;
 		lut[i].blue = val;
-- 
2.25.1

