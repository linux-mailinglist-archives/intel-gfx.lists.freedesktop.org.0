Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5A25BDB08A
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Oct 2025 21:18:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3441710E68B;
	Tue, 14 Oct 2025 19:18:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WHNPewWj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FA1610E68A;
 Tue, 14 Oct 2025 19:18:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760469502; x=1792005502;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ae/rnxAc1EC3omwP9OKtLHqU0Qpi0z3FmibXen1ip5Y=;
 b=WHNPewWjLAlotU+OxgEmz3ct7itn1yowUzltLzrfgErapDPm9IE3rAcd
 H4AXRgq5Qx+J4hJlKnlpkvViPCCt5G3NjviUQl1G6bbNsojyJFpVpw4RD
 NjWUtxKXi0TjMTwVDcSCMmoU1uIHhCYADwM93s5JT4Fq2yeniYStTS6vi
 TC8pd4v/0YIZMNYiqSeXzhwcMeY3gCissQRgnvDpkWVIfqgwsj75+Mm3C
 /xnF2fT4SBfH4pLx5x68io2jZdBKEGwWo81OC7VNxmYW3uU7EPfnFE6Uz
 Q6EzdpoX6EL+mAuUX/1HydpxVzeTKNkCZWI30zpOrR57HUXWRCZ7s2jDK w==;
X-CSE-ConnectionGUID: qNx+P71rRUSF66xQSjUXYA==
X-CSE-MsgGUID: IymW+w45RSy1W0xOFdBeLg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="62549465"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="62549465"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 12:18:22 -0700
X-CSE-ConnectionGUID: +fZZ941rSCSPS8BIZ0hPMQ==
X-CSE-MsgGUID: /2AabpIgSdep8tTRHJKqZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,229,1754982000"; d="scan'208";a="181105472"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.227])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 12:18:20 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH v2 2/9] drm/i915: Reject modes with linetime > 64 usec
Date: Tue, 14 Oct 2025 22:18:01 +0300
Message-ID: <20251014191808.12326-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251014191808.12326-1-ville.syrjala@linux.intel.com>
References: <20251014191808.12326-1-ville.syrjala@linux.intel.com>
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

Reject modes whose linetime exceeds 64 usec.

First reason being that WM_LINETIME is limited to (nearly) 64 usec.

Additionally knowing the linetime is bounded will help with
determining whether overflows may be a concern during various
calculations.

I decided to round up, and accept the linetime==64 case. We use
various rounding directions for this in other parts of the code,
so I feel this provides the most consistent result all around.

Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index d5b2612d4ec2..4395852e9641 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7972,6 +7972,14 @@ enum drm_mode_status intel_mode_valid(struct drm_device *dev,
 	    mode->vtotal > vtotal_max)
 		return MODE_V_ILLEGAL;
 
+	/*
+	 * WM_LINETIME only goes up to (almost) 64 usec, and also
+	 * knowing that the linetime is always bounded will ease the
+	 * mind during various calculations.
+	 */
+	if (DIV_ROUND_UP(mode->htotal * 1000, mode->clock) > 64)
+		return MODE_H_ILLEGAL;
+
 	return MODE_OK;
 }
 
-- 
2.49.1

