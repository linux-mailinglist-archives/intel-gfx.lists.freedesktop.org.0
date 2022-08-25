Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C43855A1C33
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Aug 2022 00:23:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5859410E45E;
	Thu, 25 Aug 2022 22:23:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E8D610E45E
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Aug 2022 22:23:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661466201; x=1693002201;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=SDrdVMWltYjFRRFjn280JB0mDUab4rgzNaEH4GgLR9E=;
 b=mVfwAKl10Pv3p+1c4Yc62TaSDgqPwklnXiEhSaAB0UIioVNLE7tRaS6T
 vvN1hW6YU+1DNJfrkTlEPgZI3EfG7yCSNaHbkrpJ/O61W/fVqGmt/0e4E
 UD0+x26wk1pH/KjL+CDHpIET3dAzTtfpn/UQYKOcRUHRI3Vgzbb7gclmI
 Jfv+3lLixelWRCY4LwiyuvPPAEe2cJbI7NsGYWlN3VquhNg96FX3zCtRo
 cryOToNHdmJs2AHbxoV1F0S//AZRpLsgHnlX4K08bpQYrR7WJLSR0P3Hr
 wcfuGBd3aE7DD0+2KnofKJLtzPTrfAAvGNHUkXPGyqUMa7N5y5NgqaPn1 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10450"; a="358338021"
X-IronPort-AV: E=Sophos;i="5.93,264,1654585200"; d="scan'208";a="358338021"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2022 15:23:19 -0700
X-IronPort-AV: E=Sophos;i="5.93,264,1654585200"; d="scan'208";a="639795608"
Received: from swoodal-mobl.amr.corp.intel.com (HELO rdvivi-mobl4.intel.com)
 ([10.255.36.162])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2022 15:23:16 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 25 Aug 2022 18:23:15 -0400
Message-Id: <20220825222315.58696-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.37.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/slpc: Set rps' min and max frequencies
 even with SLPC.
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
Cc: Sushma Venkatesh Reddy <sushma.venkatesh.reddy@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We need to inform PCODE of a desired ring frequencies so PCODE update
the memory frequencies to us. rps->min_freq and rps->max_freq are the
frequencies used in that request. However they were unset when SLPC was
enabled and PCODE never updated the memory freq.

Let's at least for now get these freq set up so we can inform PCODE.

Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
Tested-by: Sushma Venkatesh Reddy <sushma.venkatesh.reddy@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_rps.c | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 8c289a032103..58a82978d5df 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -1128,6 +1128,20 @@ void gen6_rps_get_freq_caps(struct intel_rps *rps, struct intel_rps_freq_caps *c
 	}
 }
 
+static void rps_basic_init_for_slpc(struct intel_rps *rps)
+{
+	struct intel_rps_freq_caps caps;
+
+	/*
+	 * Even with SLPC we need to initialize at least a basic min and max
+	 * frequency so we can inform pcode a desired IA ring frequency in
+	 * gen6_update_ring_freq
+	 */
+	gen6_rps_get_freq_caps(rps, &caps);
+	rps->min_freq = caps.min_freq;
+	rps->max_freq = caps.rp0_freq;
+}
+
 static void gen6_rps_init(struct intel_rps *rps)
 {
 	struct drm_i915_private *i915 = rps_to_i915(rps);
@@ -1970,8 +1984,10 @@ void intel_rps_init(struct intel_rps *rps)
 {
 	struct drm_i915_private *i915 = rps_to_i915(rps);
 
-	if (rps_uses_slpc(rps))
+	if (rps_uses_slpc(rps)) {
+		rps_basic_init_for_slpc(rps);
 		return;
+	}
 
 	if (IS_CHERRYVIEW(i915))
 		chv_rps_init(rps);
-- 
2.37.1

