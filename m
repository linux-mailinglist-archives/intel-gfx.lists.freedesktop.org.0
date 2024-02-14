Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54DD7854331
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Feb 2024 08:03:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC87210E3FE;
	Wed, 14 Feb 2024 07:03:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jblLWsn2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A52FD10E491
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Feb 2024 07:03:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707894213; x=1739430213;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1YOjAvIZuN+Xkw5BYlpD3/qGTGy/sxi+KwmRgKG7YIg=;
 b=jblLWsn2bd7S/ggGQzGMMKyUC7RFMu77Kbvfp8PgVEZ/OjvCTfNQLFRL
 dXCbzulyIA0pyZ1oz4GOoL0Q8mBpyO58/PMsbGAGmlhXnlE1tIbZuNmR6
 A1ltfTzIAsrFM5E4w7XaxYX4UApp9N2KD3aeeQnXv2I66B0NB8wyypw0y
 Y4/CkWIi30fdBtCJRakz9GAd4V2kfVeWzeK0gZLbVY99sqIahOOlaaqLI
 GCa7t9CRQpJsjFmnUew+3Gt1XsRR8SNBAw8KexjxnNpQpG08g7HaVW7d9
 y0u4TcncG0NZ25+AqFNrHW2+MsJIIcBpG/evJbSlPe0zbOKlgVh9zzolT A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="12647060"
X-IronPort-AV: E=Sophos;i="6.06,159,1705392000"; d="scan'208";a="12647060"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2024 23:03:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,159,1705392000"; 
   d="scan'208";a="3430505"
Received: from rvodapal-desk.iind.intel.com ([10.145.162.163])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2024 23:03:26 -0800
From: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: matthew.d.roper@intel.com, balasubramani.vivekanandan@intel.com,
 lucas.demarchi@intel.com, clinton.a.taylor@intel.com,
 haridhar.kalvala@intel.com, radhakrishna.sripada@intel.com,
 matthew.s.atwood@intel.com, dnyaneshwar.bhadane@intel.com
Subject: [PATCH] drm/i915/display: update pll values in sync with Bspec for MTL
Date: Wed, 14 Feb 2024 12:37:13 +0530
Message-Id: <20240214070713.1028297-1-ravi.kumar.vodapalli@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

DP/eDP and HDMI C20 PHY PLL values were updated for MTL platform

Signed-off-by: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 32 ++++++++++----------
 1 file changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 288a00e083c8..64e0f820a789 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -848,10 +848,10 @@ static const struct intel_c20pll_state mtl_c20_dp_hbr3 = {
 static const struct intel_c20pll_state mtl_c20_dp_uhbr10 = {
 	.clock = 1000000, /* 10 Gbps */
 	.tx = {	0xbe21, /* tx cfg0 */
-		0x4800, /* tx cfg1 */
+		0xe800, /* tx cfg1 */
 		0x0000, /* tx cfg2 */
 		},
-	.cmn = {0x0500, /* cmn cfg0*/
+	.cmn = {0x0700, /* cmn cfg0*/
 		0x0005, /* cmn cfg1 */
 		0x0000, /* cmn cfg2 */
 		0x0000, /* cmn cfg3 */
@@ -1641,7 +1641,7 @@ static const struct intel_c20pll_state mtl_c20_hdmi_594 = {
 static const struct intel_c20pll_state mtl_c20_hdmi_300 = {
 	.clock = 3000000,
 	.tx = {  0xbe98, /* tx cfg0 */
-		  0x9800, /* tx cfg1 */
+		  0x8800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
 		},
 	.cmn = { 0x0500, /* cmn cfg0*/
@@ -1649,8 +1649,8 @@ static const struct intel_c20pll_state mtl_c20_hdmi_300 = {
 		  0x0000, /* cmn cfg2 */
 		  0x0000, /* cmn cfg3 */
 		},
-	.mpllb = { 0x209c,	/* mpllb cfg0 */
-		   0x7d10,	/* mpllb cfg1 */
+	.mpllb = { 0x309c,	/* mpllb cfg0 */
+		   0x2110,	/* mpllb cfg1 */
 		   0xca06,	/* mpllb cfg2 */
 		   0xbe40,	/* mpllb cfg3 */
 		   0x0000,	/* mpllb cfg4 */
@@ -1666,7 +1666,7 @@ static const struct intel_c20pll_state mtl_c20_hdmi_300 = {
 static const struct intel_c20pll_state mtl_c20_hdmi_600 = {
 	.clock = 6000000,
 	.tx = {  0xbe98, /* tx cfg0 */
-		  0x9800, /* tx cfg1 */
+		  0x8800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
 		},
 	.cmn = { 0x0500, /* cmn cfg0*/
@@ -1674,8 +1674,8 @@ static const struct intel_c20pll_state mtl_c20_hdmi_600 = {
 		  0x0000, /* cmn cfg2 */
 		  0x0000, /* cmn cfg3 */
 		},
-	.mpllb = { 0x009c,	/* mpllb cfg0 */
-		   0x7d08,	/* mpllb cfg1 */
+	.mpllb = { 0x109c,	/* mpllb cfg0 */
+		   0x2108,	/* mpllb cfg1 */
 		   0xca06,	/* mpllb cfg2 */
 		   0xbe40,	/* mpllb cfg3 */
 		   0x0000,	/* mpllb cfg4 */
@@ -1691,7 +1691,7 @@ static const struct intel_c20pll_state mtl_c20_hdmi_600 = {
 static const struct intel_c20pll_state mtl_c20_hdmi_800 = {
 	.clock = 8000000,
 	.tx = {  0xbe98, /* tx cfg0 */
-		  0x9800, /* tx cfg1 */
+		  0x8800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
 		},
 	.cmn = { 0x0500, /* cmn cfg0*/
@@ -1699,8 +1699,8 @@ static const struct intel_c20pll_state mtl_c20_hdmi_800 = {
 		  0x0000, /* cmn cfg2 */
 		  0x0000, /* cmn cfg3 */
 		},
-	.mpllb = { 0x00d0,	/* mpllb cfg0 */
-		   0x7d08,	/* mpllb cfg1 */
+	.mpllb = { 0x10d0,	/* mpllb cfg0 */
+		   0x2108,	/* mpllb cfg1 */
 		   0x4a06,	/* mpllb cfg2 */
 		   0xbe40,	/* mpllb cfg3 */
 		   0x0000,	/* mpllb cfg4 */
@@ -1716,7 +1716,7 @@ static const struct intel_c20pll_state mtl_c20_hdmi_800 = {
 static const struct intel_c20pll_state mtl_c20_hdmi_1000 = {
 	.clock = 10000000,
 	.tx = {  0xbe98, /* tx cfg0 */
-		  0x9800, /* tx cfg1 */
+		  0x8800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
 		},
 	.cmn = { 0x0500, /* cmn cfg0*/
@@ -1725,7 +1725,7 @@ static const struct intel_c20pll_state mtl_c20_hdmi_1000 = {
 		  0x0000, /* cmn cfg3 */
 		},
 	.mpllb = { 0x1104,	/* mpllb cfg0 */
-		   0x7d08,	/* mpllb cfg1 */
+		   0x2108,	/* mpllb cfg1 */
 		   0x0a06,	/* mpllb cfg2 */
 		   0xbe40,	/* mpllb cfg3 */
 		   0x0000,	/* mpllb cfg4 */
@@ -1741,7 +1741,7 @@ static const struct intel_c20pll_state mtl_c20_hdmi_1000 = {
 static const struct intel_c20pll_state mtl_c20_hdmi_1200 = {
 	.clock = 12000000,
 	.tx = {  0xbe98, /* tx cfg0 */
-		  0x9800, /* tx cfg1 */
+		  0x8800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
 		},
 	.cmn = { 0x0500, /* cmn cfg0*/
@@ -1749,8 +1749,8 @@ static const struct intel_c20pll_state mtl_c20_hdmi_1200 = {
 		  0x0000, /* cmn cfg2 */
 		  0x0000, /* cmn cfg3 */
 		},
-	.mpllb = { 0x0138,	/* mpllb cfg0 */
-		   0x7d08,	/* mpllb cfg1 */
+	.mpllb = { 0x1138,	/* mpllb cfg0 */
+		   0x2108,	/* mpllb cfg1 */
 		   0x5486,	/* mpllb cfg2 */
 		   0xfe40,	/* mpllb cfg3 */
 		   0x0000,	/* mpllb cfg4 */
-- 
2.25.1

