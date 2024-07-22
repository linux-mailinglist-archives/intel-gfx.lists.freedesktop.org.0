Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 619D89392CF
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jul 2024 18:55:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B41BC10E1F7;
	Mon, 22 Jul 2024 16:55:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gWr4wsD5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BA4710E1FD
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jul 2024 16:55:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721667306; x=1753203306;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=F/v/RYPyAZ3OtoFi2SCp0vtMC6r17mysIizevYNQVLI=;
 b=gWr4wsD5zfH5pVH4AOdUanCxZ034jBpGWGgGcOeB1BRCubKRHGY49PwO
 S6PqFxzEwQgHleosjoex/28NB1eHeoYdpfZyG6bVKEq8Oz0vFECUYsCQb
 8/UR6to4fFKPT/Wcd4+6X67AAshfMrZPiOWyv1aC44V+ZvppyyUucyxg6
 d9ANcDJNWBS4bqW8zGjE9aY0FpGYDTsbT1HJnFJDnwNrwt12l5XnYSrd/
 bDzXKDePR8/vJuSTcdqClOSjBF8Eb23OJIqVuvCedMiHceCzQmJSzuko+
 8KsBosomxQFKbiIYd8Ue+dvCuvlCHxYS/V7qFoKif7jNsBeasV0yfKZr/ g==;
X-CSE-ConnectionGUID: OrFRLau3Sq2rVfSeNRSs0Q==
X-CSE-MsgGUID: 8+oPbfh3Q5+dUxeeVOI/jw==
X-IronPort-AV: E=McAfee;i="6700,10204,11141"; a="23117331"
X-IronPort-AV: E=Sophos;i="6.09,228,1716274800"; d="scan'208";a="23117331"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2024 09:55:05 -0700
X-CSE-ConnectionGUID: 4s9ewpHoSjK7u3JT8tUqww==
X-CSE-MsgGUID: O//u4lvvQGuKxXH3T5TDnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,228,1716274800"; d="scan'208";a="57056341"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2024 09:55:05 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 14/14] drm/i915/dp_mst: Enable LT fallback between
 UHBR/non-UHBR link rates
Date: Mon, 22 Jul 2024 19:55:03 +0300
Message-ID: <20240722165503.2084999-15-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240722165503.2084999-1-imre.deak@intel.com>
References: <20240722165503.2084999-1-imre.deak@intel.com>
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

Enable switching between UHBR and non-UHBR link rates on MST links when
reducing the link parameters after an LT failure.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 0c8e0d6437b5b..270080b2735f2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1188,11 +1188,6 @@ static bool reduce_link_params_in_bw_order(struct intel_dp *intel_dp,
 		     intel_dp->link.force_lane_count != lane_count))
 			continue;
 
-		/* TODO: Make switching from UHBR to non-UHBR rates work. */
-		if (drm_dp_is_uhbr_rate(crtc_state->port_clock) !=
-		    drm_dp_is_uhbr_rate(link_rate))
-			continue;
-
 		break;
 	}
 
-- 
2.44.2

