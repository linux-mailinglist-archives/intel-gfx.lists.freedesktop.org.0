Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8D6F6AA742
	for <lists+intel-gfx@lfdr.de>; Sat,  4 Mar 2023 02:27:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1D8E10E78F;
	Sat,  4 Mar 2023 01:27:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EBB010E16E;
 Sat,  4 Mar 2023 01:27:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677893230; x=1709429230;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cf8qTsQL9n+9ZW3V0b2dzTWUXXWsNNH1jbgz1VYPlzw=;
 b=Fe2OI7WxI4+k3G0K9sdL9BbiNqwdMPgbNbvB2wDTBhZ2isLSaTiMXve+
 h5yyXU4Up6WhLRBJCm2xA9gf6T2kq3czhbnXugtWwuXaMnwr8NCXT1UgB
 2oU8UwHnBV12gsVrG/TLRKbpVRFZwI1ofgdpzrv53NQx0D0ze+QxR5KzB
 HAaCkhUqrY2PVUnuOWTEwpaXmB43U45+2HlIdJQy8QxPLTJC4Ulm4purt
 zyAhGTJ60aaTfYqaqoohP+3AXMw0r9GObmksA69bOJMuHziwe5l07jVsK
 ShUGFP8ke5sGNIm7RjsGhBQgA+Vr51/K1jskaXTW0ydNKCIzv9nhpd/hu A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10638"; a="323504928"
X-IronPort-AV: E=Sophos;i="5.98,232,1673942400"; d="scan'208";a="323504928"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2023 17:27:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10638"; a="849684690"
X-IronPort-AV: E=Sophos;i="5.98,232,1673942400"; d="scan'208";a="849684690"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2023 17:27:09 -0800
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  3 Mar 2023 17:27:04 -0800
Message-Id: <20230304012705.70003-2-ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.38.0
In-Reply-To: <20230304012705.70003-1-ashutosh.dixit@intel.com>
References: <20230304012705.70003-1-ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/pmu: Use only freq bits for
 falling back to requested freq
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On newer generations, the GEN12_RPSTAT1 register contains more than freq
information, e.g. see GEN12_VOLTAGE_MASK. Therefore use only the freq bits
to decide whether to fall back to requested freq.

Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/i915_pmu.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index 52531ab28c5f..f0a1e36915b8 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -393,10 +393,8 @@ frequency_sample(struct intel_gt *gt, unsigned int period_ns)
 		 * case we assume the system is running at the intended
 		 * frequency. Fortunately, the read should rarely fail!
 		 */
-		val = intel_rps_read_rpstat_fw(rps);
-		if (val)
-			val = intel_rps_get_cagf(rps, val);
-		else
+		val = intel_rps_get_cagf(rps, intel_rps_read_rpstat_fw(rps));
+		if (!val)
 			val = rps->cur_freq;
 
 		add_sample_mult(&pmu->sample[__I915_SAMPLE_FREQ_ACT],
-- 
2.38.0

