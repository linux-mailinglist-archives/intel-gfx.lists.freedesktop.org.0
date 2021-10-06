Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6CFA42483F
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Oct 2021 22:49:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF37B6EE81;
	Wed,  6 Oct 2021 20:49:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 102156EE7C
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Oct 2021 20:49:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10129"; a="226411743"
X-IronPort-AV: E=Sophos;i="5.85,352,1624345200"; d="scan'208";a="226411743"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2021 13:49:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,352,1624345200"; d="scan'208";a="484264400"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga007.fm.intel.com with SMTP; 06 Oct 2021 13:49:51 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 06 Oct 2021 23:49:51 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  6 Oct 2021 23:49:24 +0300
Message-Id: <20211006204937.30774-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211006204937.30774-1-ville.syrjala@linux.intel.com>
References: <20211006204937.30774-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 03/16] drm/i915: Use standard form terminating
 condition for lane for loops
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Use <4 instead of <=3 as the terminating condition for the
loops over the 4 lanes.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index d85d731e37fb..b0bd50383d57 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -1067,7 +1067,7 @@ static void icl_ddi_combo_vswing_program(struct intel_encoder *encoder,
 
 	/* Program PORT_TX_DW4 */
 	/* We cannot write to GRP. It would overwrite individual loadgen. */
-	for (ln = 0; ln <= 3; ln++) {
+	for (ln = 0; ln < 4; ln++) {
 		val = intel_de_read(dev_priv, ICL_PORT_TX_DW4_LN(ln, phy));
 		val &= ~(POST_CURSOR_1_MASK | POST_CURSOR_2_MASK |
 			 CURSOR_COEFF_MASK);
@@ -1114,7 +1114,7 @@ static void icl_combo_phy_set_signal_levels(struct intel_encoder *encoder,
 	 * <= 6 GHz and 1,2 lanes (LN0=0, LN1=1, LN2=1, LN3=0)
 	 * > 6 GHz (LN0=0, LN1=0, LN2=0, LN3=0)
 	 */
-	for (ln = 0; ln <= 3; ln++) {
+	for (ln = 0; ln < 4; ln++) {
 		val = intel_de_read(dev_priv, ICL_PORT_TX_DW4_LN(ln, phy));
 		val &= ~LOADGEN_SELECT;
 
-- 
2.32.0

