Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE015CC1A17
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Dec 2025 09:46:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4962B10E796;
	Tue, 16 Dec 2025 08:46:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PUxL8pEc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6835210E78D;
 Tue, 16 Dec 2025 08:46:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765874805; x=1797410805;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=APuntLp9m5+xIgaMkgN0IZF+4wuqWBJ7BXay3A9vI70=;
 b=PUxL8pEcljCNyv4KpyrX1tdPMIbjIKiWUvHiTVgcKlNzoR3bN/lM1pfR
 NbHrYcTW03p6Y7XpHitqfrxYr1Ep/S2Q6UI9FT7qHj2YdpdD3CPPF/Xbu
 pSZtOkCfNYGORBgCiyIlzjCI0E2Tf6GEjyX0TYm8fhoW6G23ITL+a/fWp
 8m/alzzzwk400fK2IFi6Ag/6+bjaTHicFBxetksiPiEUet6Y7Qwcnp2zr
 tnUUlAbnw/AnNFdXIaMeMyrqg2QsGU055xysAlYcuxauvZ3AESKLQ9yDX
 kmTfvYRUQpusreK+g6Eu1U4knj5jLrTGCDez4Ksafep5k2y1nZlTG909x Q==;
X-CSE-ConnectionGUID: VdoMkj69QEKAqByYrE9m1w==
X-CSE-MsgGUID: 5ZBmYdZARKKOpmbZFOKRfA==
X-IronPort-AV: E=McAfee;i="6800,10657,11643"; a="71642301"
X-IronPort-AV: E=Sophos;i="6.21,152,1763452800"; d="scan'208";a="71642301"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2025 00:46:45 -0800
X-CSE-ConnectionGUID: u+XCEjy1TYaYEodomXwrYg==
X-CSE-MsgGUID: Qbi8kNOzSlmeAZVsvsZuQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,152,1763452800"; d="scan'208";a="198448771"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa009.fm.intel.com with ESMTP; 16 Dec 2025 00:46:44 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
	Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH 04/13] drm/i915/cx0: Fix HDMI FRL clock rates
Date: Tue, 16 Dec 2025 10:37:50 +0200
Message-Id: <20251216083759.383163-5-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251216083759.383163-1-mika.kahola@intel.com>
References: <20251216083759.383163-1-mika.kahola@intel.com>
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
index 4cf4b49d1cab..363df72fd01d 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -1890,7 +1890,7 @@ static const struct intel_c20pll_state mtl_c20_hdmi_594 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_hdmi_300 = {
-	.clock = 3000000,
+	.clock = 300000,
 	.tx = {  0xbe98, /* tx cfg0 */
 		  0x8800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
@@ -1915,7 +1915,7 @@ static const struct intel_c20pll_state mtl_c20_hdmi_300 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_hdmi_600 = {
-	.clock = 6000000,
+	.clock = 600000,
 	.tx = {  0xbe98, /* tx cfg0 */
 		  0x8800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
@@ -1940,7 +1940,7 @@ static const struct intel_c20pll_state mtl_c20_hdmi_600 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_hdmi_800 = {
-	.clock = 8000000,
+	.clock = 800000,
 	.tx = {  0xbe98, /* tx cfg0 */
 		  0x8800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
@@ -1965,7 +1965,7 @@ static const struct intel_c20pll_state mtl_c20_hdmi_800 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_hdmi_1000 = {
-	.clock = 10000000,
+	.clock = 1000000,
 	.tx = {  0xbe98, /* tx cfg0 */
 		  0x8800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
@@ -1990,7 +1990,7 @@ static const struct intel_c20pll_state mtl_c20_hdmi_1000 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_hdmi_1200 = {
-	.clock = 12000000,
+	.clock = 1200000,
 	.tx = {  0xbe98, /* tx cfg0 */
 		  0x8800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
-- 
2.34.1

