Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 185B25E5CC6
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Sep 2022 10:00:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AEE410EA6E;
	Thu, 22 Sep 2022 08:00:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95E9510EA6A
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Sep 2022 08:00:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663833605; x=1695369605;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ccUTpzxgMjsBTcV/GpVqBfYnIuIQCc20QoTUcSS3Qqc=;
 b=Gxyxs041BYOD+vZGh2kha3pcTVs/DPSFy8hV2Dfdr9Q2+LY9cDi7f/bi
 gZzaN+vnKghZdLCf9Dwt4G/pb5BUMbXH60BtgMJfqKSexeb+6mnFKjP6L
 5+kTxqFyZekPnPYjeJz9DUjd/n3ipE0bcDEdMOd8tk5ht9mAfWi50xK03
 yL/yFKK1N432cwOF1c0SOlkbH8/9SJ5uFb7+bxhzfONtItVFm3HCACzsl
 6ASuOColJ4rtvkSIBf1WtoHDd6HlGXehNcnLPw3QiXiZjh7HriEYNLIQ6
 lLgFI5tT5w9xH7C+zhoiA2UWAOt3q4G98GFf8vkrPo66wZJmlHmN3rOdv g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10477"; a="364210160"
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="364210160"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 01:00:04 -0700
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="615114334"
Received: from aarcesan-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.249.46.251])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 01:00:04 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 22 Sep 2022 10:59:48 +0300
Message-Id: <20220922075948.111558-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/psr: Fix PSR_IMR/IIR field handling
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

Current PSR code is supposed to use TRANSCODER_EDP to force 0 shift for
bits in PSR_IMR/IIR registers:

/*
 * gen12+ has registers relative to transcoder and one per transcoder
 * using the same bit definition: handle it as TRANSCODER_EDP to force
 * 0 shift in bit definition
 */

At the time of writing the code assumption "TRANSCODER_EDP == 0" was made.
This is not the case and all fields in PSR_IMR and PSR_IIR are shifted
incorrectly if DISPLAY_VER >= 12.

Fix this by using TRANSCODER_EDP definition instead of 0. Even thought
TRANSCODER_EDP doesn't exist in display_ver >= 12 doing it this way keeps
code clean and readable.

v2: Improve commit message (José)

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

