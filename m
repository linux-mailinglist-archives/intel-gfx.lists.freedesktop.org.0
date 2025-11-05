Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA715C376B6
	for <lists+intel-gfx@lfdr.de>; Wed, 05 Nov 2025 20:05:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 548D110E300;
	Wed,  5 Nov 2025 19:05:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NTNEdx02";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2A7210E300;
 Wed,  5 Nov 2025 19:05:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762369504; x=1793905504;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OGXQHHZKGpPLSmkUVIc2SQ6FIN8AyiwjMYIDH91fJQU=;
 b=NTNEdx02N2Hx8rMcSu1iXfadw/qD3VpHryuQhMs3bMT2XVhLSvPeeTGR
 NwIkJtXnMOdy49mgKFsFwcNVC6kFYKEG0tBidI8r+mukrl8Ohvv6eT3hi
 Mg3x1u+YrMQ68xlmFR9FRmolce66OgKs+TsAB85VCqj6+RxtOQqQAolm2
 9DUQV3bYWSU+4AQOigsOgHCPe9ZhUENzQwsHgMnKSNUXG9rlhoxeGxpGY
 1NRM1beDrTxl2oGNZ0qQzwAJTtMPmOOVwnDy+x6FBJq/a0R35g5NM+mcE
 jmkP6LrA/oenl1oM1DPn5LAYjPdVgL2GNje4eW9VqYgneAi9SLvuTwk8X Q==;
X-CSE-ConnectionGUID: XHgpDedoTU2QR3fOaA6tlQ==
X-CSE-MsgGUID: POlK/1EpR+e2OuzKuvgF5g==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="68333848"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="68333848"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 11:05:04 -0800
X-CSE-ConnectionGUID: 8gTHelgCTtymIibg8u3jag==
X-CSE-MsgGUID: x8Qbo9xbT46mwq/kJWF3eQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="191901237"
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost) ([10.245.244.87])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 11:05:02 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 7/7] drm/i915/pmdemand: Use the default 2 usec fast polling
 timeout
Date: Wed,  5 Nov 2025 21:04:33 +0200
Message-ID: <20251105190433.16434-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251105190433.16434-1-ville.syrjala@linux.intel.com>
References: <20251105190433.16434-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

For whatever unknown reason the pmdemand code is using a custom
50 usec fast polling timeout instead of the normal 2 usec
value. Switch to the standard value to get rid of the special
case.

The eventual aim is to get rid of the fast vs. slow timeout
entirely and switch over to poll_timeout_us().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_pmdemand.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/drm/i915/display/intel_pmdemand.c
index f52abd4e2eb0..22d8f720ae7d 100644
--- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
@@ -464,7 +464,7 @@ static void intel_pmdemand_poll(struct intel_display *display)
 
 	ret = intel_de_wait_custom(display, XELPDP_INITIATE_PMDEMAND_REQUEST(1),
 				   XELPDP_PMDEMAND_REQ_ENABLE, 0,
-				   50, timeout_ms, &status);
+				   2, timeout_ms, &status);
 
 	if (ret == -ETIMEDOUT)
 		drm_err(display->drm,
-- 
2.49.1

