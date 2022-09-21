Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CC4A05BF63C
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Sep 2022 08:24:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F17D610E84A;
	Wed, 21 Sep 2022 06:24:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0E0C10E84B
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Sep 2022 06:24:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663741480; x=1695277480;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=oBXZq6D7Nkh9+3r+GZadXuMB9uogOs55AVH5MLSWvqw=;
 b=L43MjUAZlUw4pyRCChW2yV8cn2QXCQyjiVxXUtamVIFp+G7DkjfyADCh
 chF8ihcksX4e5HzOm5WHi8chSL0tzDZ3nklZBq7ytgW+knd/gHk371UKw
 7gnudFRoICfUPobYc/0gt4vkA2JBjhWGr1gEBvA94EtIdZKFTvjgPTmGE
 SXghITEiixBJ/uzFn0BcRFjkwMgOIgl3rNFuAT74NWyqlgvxYG7GFmuj7
 dCrgmK0zYSNdYOS/ZeWMz1PZG/Zbcgt0z5TElJjxkq2gkwn9VUl23aXrq
 plRZn0tbfNoDTgz+XuyJRSJDB48pQyOOCg5xcf05DzK7uCrxgoKh6MSok g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10476"; a="326226399"
X-IronPort-AV: E=Sophos;i="5.93,332,1654585200"; d="scan'208";a="326226399"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2022 23:24:40 -0700
X-IronPort-AV: E=Sophos;i="5.93,332,1654585200"; d="scan'208";a="761621838"
Received: from nsedoc-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.252.32.93])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2022 23:24:38 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Sep 2022 09:24:00 +0300
Message-Id: <20220921062400.50603-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/psr: Fix PSR_IMR/IIR field handling
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

Current PSR code is assuming TRANSCODER_EDP == 0. This is not the case
and all fields in PSR_IMR and PSR_IIR are shifted incorrectly if
DISPLAY_VER >= 12.

Fix this by using TRANSCODER_EDP definition instead of 0.

Cc: Mika Kahola <mika.kahola@intel.com>
Cc: José Roberto de Souza <jose.souza@intel.com>

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 9def8d9fade6..9ecf1a9a1120 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -129,7 +129,7 @@ static void psr_irq_control(struct intel_dp *intel_dp)
 	 * 0 shift in bit definition
 	 */
 	if (DISPLAY_VER(dev_priv) >= 12) {
-		trans_shift = 0;
+		trans_shift = TRANSCODER_EDP;
 		imr_reg = TRANS_PSR_IMR(intel_dp->psr.transcoder);
 	} else {
 		trans_shift = intel_dp->psr.transcoder;
@@ -195,7 +195,7 @@ void intel_psr_irq_handler(struct intel_dp *intel_dp, u32 psr_iir)
 	i915_reg_t imr_reg;
 
 	if (DISPLAY_VER(dev_priv) >= 12) {
-		trans_shift = 0;
+		trans_shift = TRANSCODER_EDP;
 		imr_reg = TRANS_PSR_IMR(intel_dp->psr.transcoder);
 	} else {
 		trans_shift = intel_dp->psr.transcoder;
@@ -1197,7 +1197,7 @@ static bool psr_interrupt_error_check(struct intel_dp *intel_dp)
 	if (DISPLAY_VER(dev_priv) >= 12) {
 		val = intel_de_read(dev_priv,
 				    TRANS_PSR_IIR(intel_dp->psr.transcoder));
-		val &= EDP_PSR_ERROR(0);
+		val &= EDP_PSR_ERROR(TRANSCODER_EDP);
 	} else {
 		val = intel_de_read(dev_priv, EDP_PSR_IIR);
 		val &= EDP_PSR_ERROR(intel_dp->psr.transcoder);
-- 
2.34.1

