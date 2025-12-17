Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13B5BCC8704
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Dec 2025 16:29:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 946D210E8CC;
	Wed, 17 Dec 2025 15:29:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m33SSApA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8DA410EC72;
 Wed, 17 Dec 2025 15:28:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765985332; x=1797521332;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=132rghubcHvWNxgbYrBd+2EsK9XfvkJsb3Y2S90wEic=;
 b=m33SSApAwI6sWkVMok8R6PQ3OyQtlq5JSYiUwt9CsAI+XyboQwSLl4K9
 22LnkcIm1nY6AjU6+z7lQZHpZGlztpXo+2W1wpgIDoE+H2XCPeW893ni7
 GW7OVgh9i2su0DDbpglAVKB0I837pW9MtAm085JPQzuP757JlU6nkMPND
 7bySXLSaayYiVGVDO/H2MWmvrCmuGlQ4uG8Q+k/OgXwLp+9qMVt18qzTY
 HdQdCz4UjLjAUHq5UnRfl4Lyo9aekOooLsnVaY4EF/aApULIktJDJV5Ps
 rX0pDK/+DgiKP3ykK9kLv6g3Sl9DswX766QDMGkkk8GMpKI6v5rPcZtsl A==;
X-CSE-ConnectionGUID: TPlDX8uJQOuMsn5ZJjos5Q==
X-CSE-MsgGUID: LorPC000SbGvrOLKGvJRoQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11645"; a="71781456"
X-IronPort-AV: E=Sophos;i="6.21,156,1763452800"; d="scan'208";a="71781456"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2025 07:28:52 -0800
X-CSE-ConnectionGUID: PX3sXvRdQwyBRgABe5Bv1g==
X-CSE-MsgGUID: VXU9lRyiRFOAIvXEXRxRuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,156,1763452800"; d="scan'208";a="198097312"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa009.jf.intel.com with ESMTP; 17 Dec 2025 07:28:50 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH v2 09/15] drm/i915/cx0: Fix HDMI FRL clock rates
Date: Wed, 17 Dec 2025 17:19:49 +0200
Message-Id: <20251217151955.1690202-10-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251217151955.1690202-1-mika.kahola@intel.com>
References: <20251217151955.1690202-1-mika.kahola@intel.com>
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

HDMI FRL clock rates are incorrectly defined. Fix these
rates.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 4d006c14c049..0f28d02b7a69 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -1923,7 +1923,7 @@ static const struct intel_c20pll_state mtl_c20_hdmi_594 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_hdmi_300 = {
-	.clock = 3000000,
+	.clock = 300000,
 	.tx = {  0xbe98, /* tx cfg0 */
 		  0x8800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
@@ -1948,7 +1948,7 @@ static const struct intel_c20pll_state mtl_c20_hdmi_300 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_hdmi_600 = {
-	.clock = 6000000,
+	.clock = 600000,
 	.tx = {  0xbe98, /* tx cfg0 */
 		  0x8800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
@@ -1973,7 +1973,7 @@ static const struct intel_c20pll_state mtl_c20_hdmi_600 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_hdmi_800 = {
-	.clock = 8000000,
+	.clock = 800000,
 	.tx = {  0xbe98, /* tx cfg0 */
 		  0x8800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
@@ -1998,7 +1998,7 @@ static const struct intel_c20pll_state mtl_c20_hdmi_800 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_hdmi_1000 = {
-	.clock = 10000000,
+	.clock = 1000000,
 	.tx = {  0xbe98, /* tx cfg0 */
 		  0x8800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
@@ -2023,7 +2023,7 @@ static const struct intel_c20pll_state mtl_c20_hdmi_1000 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_hdmi_1200 = {
-	.clock = 12000000,
+	.clock = 1200000,
 	.tx = {  0xbe98, /* tx cfg0 */
 		  0x8800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
-- 
2.34.1

