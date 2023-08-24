Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EAEED786965
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 10:05:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0411010E4E7;
	Thu, 24 Aug 2023 08:05:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40F1710E4C9
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 08:05:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692864321; x=1724400321;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=E2mqhFuGTWuWcE1uJqCicelusok0devOew2XWAVndjk=;
 b=c/LeWNoWmghqmNmwYhT1HHeIWuDsfKMyefO88Yp5hnJV9fszJ6gfHkLf
 maSD5pX6I3iToN5vRXh7dGWTJ3ySeIpdfOqv3JR+KZjsOBZT3ti+reDH5
 twvbPHcJ7gTBkCmno0tu3DaDfSEgAufUk4zMH0T7rl5YkRyW+hbZP4Mhr
 36huTu2jEVj9IXhL9E5w/vLXTBre+fXQZzAKrhxC6sbAdEO71ZElFFig8
 mBa1MdNNkEzeqL1pOw6EOW1a4BQs+NddJfL/KCSeDXAREF5Pep5xQ/g6I
 FqZn/K0nY4ZELV3gq+DoYAETLTHRxqCz0j/i8ePlHLIwsAUcvBAIUVEWc g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="374345883"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="374345883"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 01:05:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="880710338"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 01:05:25 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Aug 2023 11:05:09 +0300
Message-Id: <20230824080517.693621-15-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230824080517.693621-1-imre.deak@intel.com>
References: <20230824080517.693621-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 14/22] drm/i915/dp_mst: Fix PBN calculation
 with FEC overhead
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

On 8b/10b MST links the PBN value for DSC streams must be calculated
accounting for the FEC overhead. The same applies to 8b/10b non-DSC
streams if there is another DSC stream on the same link. Fix up the PBN
calculation accordingly.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 6eeb7dbf5ba67..930e16b870734 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -111,7 +111,8 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
 		crtc_state->pbn = drm_dp_calc_pbn_mode(adjusted_mode->crtc_clock,
 						       dsc ? bpp << 4 : bpp,
 						       dsc,
-						       false);
+						       (dsc || crtc_state->fec_enable) &&
+							!intel_dp_is_uhbr(crtc_state));
 
 		slots = drm_dp_atomic_find_time_slots(state, &intel_dp->mst_mgr,
 						      connector->port,
-- 
2.37.2

