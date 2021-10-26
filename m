Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0513343AE45
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Oct 2021 10:42:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFC996E4F3;
	Tue, 26 Oct 2021 08:42:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DEC76E4F3
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Oct 2021 08:42:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10148"; a="293316962"
X-IronPort-AV: E=Sophos;i="5.87,182,1631602800"; d="scan'208";a="293316962"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2021 01:42:14 -0700
X-IronPort-AV: E=Sophos;i="5.87,182,1631602800"; d="scan'208";a="497223493"
Received: from flaboura-mobl.ger.corp.intel.com (HELO localhost)
 ([10.251.214.127])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2021 01:42:13 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, Manasi Navare <manasi.d.navare@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Date: Tue, 26 Oct 2021 11:42:07 +0300
Message-Id: <20211026084208.2574-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dp: fix integer overflow in 128b/132b
 data rate calculation
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

The intermediate value 1000000 * 10 * 9671 overflows 32 bits, so force
promotion to a bigger type.

From the logs:

[drm:intel_dp_compute_config [i915]] DP link rate required 3657063 available -580783288

Fixes: 48efd014f0ea ("drm/i915/dp: add max data rate calculation for UHBR rates")
Cc: Manasi Navare <manasi.d.navare@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index f5dc2126d140..9a0cd2e1ebea 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -352,7 +352,7 @@ intel_dp_max_data_rate(int max_link_rate, int max_lanes)
 		 */
 		int max_link_rate_kbps = max_link_rate * 10;
 
-		max_link_rate_kbps = DIV_ROUND_CLOSEST_ULL(max_link_rate_kbps * 9671, 10000);
+		max_link_rate_kbps = DIV_ROUND_CLOSEST_ULL(max_link_rate_kbps * 9671UL, 10000UL);
 		max_link_rate = max_link_rate_kbps / 8;
 	}
 
-- 
2.30.2

