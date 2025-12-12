Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88FE2CB921C
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Dec 2025 16:29:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AE1110E8D0;
	Fri, 12 Dec 2025 15:29:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HeDtWjjK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B148910E8D0;
 Fri, 12 Dec 2025 15:29:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765553361; x=1797089361;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qOhS8uOLEBvL2e08/qc6AViV6EuzKEaAp3rNEnK1SXM=;
 b=HeDtWjjKgqw8rGMGw/rXOaiN/qvNmmE2tvRbMOAVt+ppF5bZkAFVphmV
 3AS/12xeMlgKK+6GW1ywAYovbZCHYMy4OYerZbAeICfOgj9Hb3YswUmFd
 CW9H6u62RsyMFDujfTFX7KHSQuGJdsn+23zI+LmZFHnIurs5nhysXAyFu
 unqAk3aK7aKoKswKA2DD5kYvACzsmoMmGLgyrmzKRaRH75BHrb06RZWMK
 KyduzEo/Zln0K0NLyVshUw4mSotKME0hDo2GxX4t1HUC6+8PgOJ+3aGle
 uuF1M0/JY/QNXnp8z8f23mx+BJsYNTMR8CcwSFQm9KkRUa/03SaTRTqCs g==;
X-CSE-ConnectionGUID: 9mlb5CW1TvWD01KFnq9Z/Q==
X-CSE-MsgGUID: Yo1gcFOIQ3CFv8lm+Gz+3A==
X-IronPort-AV: E=McAfee;i="6800,10657,11640"; a="67716386"
X-IronPort-AV: E=Sophos;i="6.21,144,1763452800"; d="scan'208";a="67716386"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 07:29:21 -0800
X-CSE-ConnectionGUID: ObS7dIu/TeWIivtplbwOsw==
X-CSE-MsgGUID: 1Lvp8dKwRTusOcjpJvi3qA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,144,1763452800"; d="scan'208";a="197935069"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.245.152])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 07:29:19 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 08/13] drm/i915: Use intel_dsb_supported() to determine
 'use_dsb'
Date: Fri, 12 Dec 2025 17:28:42 +0200
Message-ID: <20251212152847.13679-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.51.2
In-Reply-To: <20251212152847.13679-1-ville.syrjala@linux.intel.com>
References: <20251212152847.13679-1-ville.syrjala@linux.intel.com>
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

Currently we calculate crtc_state->use_dsb by simply assuming
that DSB is available, and then falling back to MMIO when the
actual DSB buffer allocation fails.

This is somewhat confusing, and doesn't match how the flip queue
counterpart (use_flipq) is calculated.  Check whether DSB is
available ahead of time, just like we in the flip queue case.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 9c6d3ecdb589..3081dc8d86da 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7283,6 +7283,7 @@ static void intel_atomic_dsb_prepare(struct intel_atomic_state *state,
 		!intel_crtc_needs_color_update(new_crtc_state);
 
 	new_crtc_state->use_dsb =
+		intel_dsb_supported(display) &&
 		!new_crtc_state->use_flipq &&
 		!new_crtc_state->do_async_flip &&
 		(DISPLAY_VER(display) >= 20 || !new_crtc_state->has_psr) &&
-- 
2.51.2

