Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA93C53F77B
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jun 2022 09:44:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16FC010EFB1;
	Tue,  7 Jun 2022 07:44:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from farmhouse.coelho.fi (paleale.coelho.fi [176.9.41.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01BC210EFB1
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jun 2022 07:44:37 +0000 (UTC)
Received: from 91-156-6-107.elisa-laajakaista.fi ([91.156.6.107]
 helo=kveik.ger.corp.intel.com)
 by farmhouse.coelho.fi with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <luca@coelho.fi>) id 1nyTtC-001L0b-Gq;
 Tue, 07 Jun 2022 10:44:36 +0300
From: Luca Coelho <luca@coelho.fi>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Jun 2022 10:44:33 +0300
Message-Id: <20220607074433.1202917-1-luca@coelho.fi>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=3.4.6
Subject: [Intel-gfx] [PATCH] drm/i915: remove noisy logs in
 intel_dp_dsc_get_output_bpp()
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

From: Luca Coelho <luciano.coelho@intel.com>

The intel_dp_dsc_get_output_bpp() function outputs two lines of
unconditional logs, which was okay when it was called only once.  But
now, we also call this function from intel_dp_mode_valid(), which is
in turn called for every mode we need to validate.  This causes a lot
of useless noise.

Remove the unconditional prints to avoid spamming the logs.  Also
remove one more print that is not unconditional, but is related.

Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index b8e2d3cd4d68..e198c6d7e3b5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -658,7 +658,6 @@ static u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
 	 */
 	bits_per_pixel = (link_clock * lane_count * 8) /
 			 intel_dp_mode_to_fec_clock(mode_clock);
-	drm_dbg_kms(&i915->drm, "Max link bpp: %u\n", bits_per_pixel);
 
 	/* Small Joiner Check: output bpp <= joiner RAM (bits) / Horiz. width */
 	max_bpp_small_joiner_ram = small_joiner_ram_size_bits(i915) /
@@ -667,9 +666,6 @@ static u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
 	if (bigjoiner)
 		max_bpp_small_joiner_ram *= 2;
 
-	drm_dbg_kms(&i915->drm, "Max small joiner bpp: %u\n",
-		    max_bpp_small_joiner_ram);
-
 	/*
 	 * Greatest allowed DSC BPP = MIN (output BPP from available Link BW
 	 * check, output bpp from small joiner RAM check)
@@ -681,7 +677,6 @@ static u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
 			i915->max_cdclk_freq * 48 /
 			intel_dp_mode_to_fec_clock(mode_clock);
 
-		drm_dbg_kms(&i915->drm, "Max big joiner bpp: %u\n", max_bpp_bigjoiner);
 		bits_per_pixel = min(bits_per_pixel, max_bpp_bigjoiner);
 	}
 
-- 
2.36.1

