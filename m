Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D3D885E6AB
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Feb 2024 19:52:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F101B10E110;
	Wed, 21 Feb 2024 18:52:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XCKyK7pz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71D1710E110
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Feb 2024 18:52:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708541526; x=1740077526;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=FBFv9gMFwK0j+LNdrzCiqMqFW2vyrF9MGvTfJHRPIuc=;
 b=XCKyK7pzYbaO8cndvSdpKnw6oYrh73+3g9C0dDMxo6RL67gyeYUGLocT
 0ktS1K3at+8IlHxc2s8tt4AeAZaS1ueUldx0jAqkRonhPFHJHCMg4UhXC
 Q7ksMxdukNwJSboakK9+aIizS11bJdJ/4a1WTI0x4ms8korGTWznZuVb/
 MYCLC9fKmICIG2CzZWsyDAPCFZi/nD6eoXt4S3aGaFS44v1AMZUsc0lrg
 7Oa4nlRJ8gRwKNROuz/j0bX939+VC3ALRAwmNJBe4M9xpVj0JhHE/C/Ca
 0sHqLWYOSeeQgW1Rmalqj+P8Fvcs+zD2mjaHo7W+AYQzVCz48oqpreLCU w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10991"; a="5675518"
X-IronPort-AV: E=Sophos;i="6.06,176,1705392000"; 
   d="scan'208";a="5675518"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2024 10:52:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,176,1705392000"; 
   d="scan'208";a="9885387"
Received: from hrshah-mobl1.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.125.128.19])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2024 10:52:05 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
Subject: [PATCH v2] drm/i915/cdclk: Document CDCLK components
Date: Wed, 21 Feb 2024 15:51:32 -0300
Message-ID: <20240221185131.287302-2-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Improve documentation by giving an overview of the components involved
in the generation of the CDCLK.

v2: Fix htmldoc error because of missing blank line at the start of
    bulleted list.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 26 ++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 30dae4fef6cb..7330131ed6a8 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -63,6 +63,32 @@
  * DMC will not change the active CDCLK frequency however, so that part
  * will still be performed by the driver directly.
  *
+ * There are multiple components involved in the generation of the CDCLK
+ * frequency:
+ *
+ * - We have the CDCLK PLL, which generates an output clock based on a
+ *   reference clock and a ratio parameter.
+ * - The CD2X Divider, which divides the output of the PLL based on a
+ *   divisor selected from a set of pre-defined choices.
+ * - The CD2X Squasher, which further divides the output based on a
+ *   waveform represented as a sequence of bits where each zero
+ *   "squashes out" a clock cycle.
+ * - And, finally, a fixed divider that divides the output frequency by 2.
+ *
+ * As such, the resulting CDCLK frequency can be calculated with the
+ * following formula:
+ *
+ *     cdclk = vco / cd2x_div / (sq_len / sq_div) / 2
+ *
+ * , where vco is the frequency generated by the PLL; cd2x_div
+ * represents the CD2X Divider; sq_len and sq_div are the bit length
+ * and the number of high bits for the CD2X Squasher waveform, respectively;
+ * and 2 represents the fixed divider.
+ *
+ * Note that some older platforms do not contain the CD2X Divider
+ * and/or CD2X Squasher, in which case we can ignore their respective
+ * factors in the formula above.
+ *
  * Several methods exist to change the CDCLK frequency, which ones are
  * supported depends on the platform:
  * - Full PLL disable + re-enable with new VCO frequency. Pipes must be inactive.
-- 
2.43.0

