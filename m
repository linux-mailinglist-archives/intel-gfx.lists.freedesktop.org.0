Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A35DEC19265
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Oct 2025 09:46:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EF3910E748;
	Wed, 29 Oct 2025 08:46:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RBFF7Qxu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 970F610E748;
 Wed, 29 Oct 2025 08:46:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761727616; x=1793263616;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oz0L/bw5R0vXL8HYn4vb5n0H/fgP6NMb+TyzVpqBqJ0=;
 b=RBFF7Qxu+28f4Ih86ZP4Q9GbC/+0WcLWdAPb7MmJiYy0Dx22D0qSGFTg
 bif2AwcfozGwobUNuT+3NOC1ZcTRw7kPDZJLTqb1EZ2QLFEQgWFzR7PB5
 TbVcVmY4M2W0ovjW3zLnRM5ajiv1SWMC4KNzpW8hb8Vkn3ahyPKrFzanL
 jZVPsEhFHQ3tauY25LqzSwMQmsF73YQtJylQhYr6cig1XDUVUDk6EXd+f
 g1xa9Y/LAK2kv8QHr+c/q/V2dHtYy4S8GfsacMBaG232IPHujULVNN2mF
 wozTgcMxb2Uxeq0/WWHLi/eMtJSuo3aA2M4C4Wh68VXrQ4j47tb77YNyV w==;
X-CSE-ConnectionGUID: yOXTd/1ER5Gb/+vwiNJnqg==
X-CSE-MsgGUID: K5HjZvPORvCVsOBb6ReZGA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="74132136"
X-IronPort-AV: E=Sophos;i="6.19,263,1754982000"; d="scan'208";a="74132136"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 01:46:55 -0700
X-CSE-ConnectionGUID: 8lpPy4ztR6qcKVW7PlFTaQ==
X-CSE-MsgGUID: 8fraNKc0TiiM8fqAxlbyjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,263,1754982000"; d="scan'208";a="222811515"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.242])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 01:46:54 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, Luca Coelho <luciano.coelho@intel.com>,
 Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Subject: [PATCH v2 1/9] drm/i915/scaler: Don't clobber plane scaler scale
 factors with pfit scale factors
Date: Wed, 29 Oct 2025 10:46:39 +0200
Message-ID: <20251029084647.4165-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251029084647.4165-1-ville.syrjala@linux.intel.com>
References: <20251029084647.4165-1-ville.syrjala@linux.intel.com>
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

When intel_atomic_setup_scaler() is called for a plane scaler
it first computes the scale factors correctly, and then (if
pfit is enabled on the pipe) it overwrites them with the pfit
scale factors.

Skip the pfit scaler stuff when intel_atomic_setup_scaler()
is called for a plane scaler (plane_state != NULL).

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Cc: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Fixes: 9217f9aaef62 ("drm/i915/scaler: Compute scaling factors for pipe scaler")
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_scaler.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index d29efcbf2319..640c65818f8a 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -464,7 +464,7 @@ static int intel_atomic_setup_scaler(struct intel_crtc_state *crtc_state,
 		}
 	}
 
-	if (crtc_state->pch_pfit.enabled) {
+	if (!plane_state && crtc_state->pch_pfit.enabled) {
 		struct drm_rect src;
 		int max_hscale, max_vscale;
 
-- 
2.49.1

