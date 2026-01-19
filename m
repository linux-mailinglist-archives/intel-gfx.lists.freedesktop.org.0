Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 166EBD3A333
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Jan 2026 10:38:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9738910E3A7;
	Mon, 19 Jan 2026 09:38:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HW/t7WCg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2479E10E3DE;
 Mon, 19 Jan 2026 09:38:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768815494; x=1800351494;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QXuWubNVP9EZNPqBOzE5ek9HvrcSDP5/nTCQO+UcwRo=;
 b=HW/t7WCge8+GLIfR3FhiqWs9ntKOFU13GTI8ywdL6RsUznljG776b9Fg
 bz3Ss887Fvr7bO7yx75IfDUBl17Ij8o8iQ5bJijOWJT51tDFMMDDp1nQF
 +z0fyWFWBz/UPq2Iu5Sm7BIrz1HqaQhCrEeIKtK2b24xt6CyfH75XXcVq
 BB0VIMOGZ4DnC4ASoCmxhntkmp9iDVlmONkfEVBGFJyu1g4pSH2RM4ymM
 pWvPlSMhSBm1EUVVEUe4saBSpBXpInefljHr8qhlyU+AY/iIIbQlf266F
 pAPVx8iUnK+mBKbKgKmdpZsl4i2ezXT1cMO+mBECoD9O+61BIt3DqL0xv A==;
X-CSE-ConnectionGUID: UYU3c4WzTAKB3xLKcaeEzQ==
X-CSE-MsgGUID: XcMwmjQES1+asbuF8jIrbQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11675"; a="69224303"
X-IronPort-AV: E=Sophos;i="6.21,237,1763452800"; d="scan'208";a="69224303"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2026 01:38:13 -0800
X-CSE-ConnectionGUID: X/BnV4oUQP2uDMH0xK54rg==
X-CSE-MsgGUID: cYUwsiYwQIChtZqvNFLoIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,237,1763452800"; d="scan'208";a="210838430"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa005.jf.intel.com with ESMTP; 19 Jan 2026 01:38:13 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [CI 09/15] drm/i915/cx0: Fix HDMI FRL clock rates
Date: Mon, 19 Jan 2026 09:37:50 +0000
Message-ID: <20260119093757.2850233-10-mika.kahola@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260119093757.2850233-1-mika.kahola@intel.com>
References: <20260119093757.2850233-1-mika.kahola@intel.com>
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
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 26d3d41d41a7..eda0e176b8be 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -1924,7 +1924,7 @@ static const struct intel_c20pll_state mtl_c20_hdmi_594 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_hdmi_300 = {
-	.clock = 3000000,
+	.clock = 300000,
 	.tx = {  0xbe98, /* tx cfg0 */
 		  0x8800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
@@ -1949,7 +1949,7 @@ static const struct intel_c20pll_state mtl_c20_hdmi_300 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_hdmi_600 = {
-	.clock = 6000000,
+	.clock = 600000,
 	.tx = {  0xbe98, /* tx cfg0 */
 		  0x8800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
@@ -1974,7 +1974,7 @@ static const struct intel_c20pll_state mtl_c20_hdmi_600 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_hdmi_800 = {
-	.clock = 8000000,
+	.clock = 800000,
 	.tx = {  0xbe98, /* tx cfg0 */
 		  0x8800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
@@ -1999,7 +1999,7 @@ static const struct intel_c20pll_state mtl_c20_hdmi_800 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_hdmi_1000 = {
-	.clock = 10000000,
+	.clock = 1000000,
 	.tx = {  0xbe98, /* tx cfg0 */
 		  0x8800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
@@ -2024,7 +2024,7 @@ static const struct intel_c20pll_state mtl_c20_hdmi_1000 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_hdmi_1200 = {
-	.clock = 12000000,
+	.clock = 1200000,
 	.tx = {  0xbe98, /* tx cfg0 */
 		  0x8800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
-- 
2.43.0

