Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72684A3AA32
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2025 21:59:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 113B910E761;
	Tue, 18 Feb 2025 20:58:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O5QlgjDr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43E9410E451;
 Tue, 18 Feb 2025 20:58:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739912336; x=1771448336;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bsabV6h92XmfSrKmJlod4fAfYVGlzS3AZqfxI4Z69Dc=;
 b=O5QlgjDrpJUdotZVVK7QZV7uxAHV7MC/+17eRaYrvz7dw1yb1ZBp6d8L
 QqwfBsBBD8Ols9f4uaiAPfCJo3HhMPjsk/m4mQ4ycgMz2GM9pQXYIaFXS
 89KaKS2E1g7cwHWEFoLPu+5m+5WwCyfrz28eg6V5Nv2OKF3LgeJ0YD5kI
 jsMm1RhA1g9JGJYqu6SgNOJiE10UTu2WTU0W643o9J7cZNi3fVgkb4x/Y
 r6arVK/ryFLA9mcuf1YcimMdt3a9E5sK24ffapT3ZBtbjcaAXFSftjVQx
 /62ddxzSQV3WLyhWqRjfw2KyySvd2E3vZZiK8s//bFNq8Xedr7wPgwrTW A==;
X-CSE-ConnectionGUID: bPpTdckJSxeBee35inofXA==
X-CSE-MsgGUID: xebaRbpMTtKy7ljfqxmMRA==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="28228333"
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; d="scan'208";a="28228333"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2025 12:58:56 -0800
X-CSE-ConnectionGUID: /E5tCJX/TbKXQV5JQhb1DQ==
X-CSE-MsgGUID: Gp9iv7NGSAe2kV/YPJ32og==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; d="scan'208";a="114688974"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 18 Feb 2025 12:58:54 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 18 Feb 2025 22:58:53 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 1/4] drm/i915/dsb: Allow DSB based updates without planes
Date: Tue, 18 Feb 2025 22:58:47 +0200
Message-ID: <20250218205850.1422-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250218205850.1422-1-ville.syrjala@linux.intel.com>
References: <20250218205850.1422-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

We don't actually need any planes to get updated in order
to perform the commit on the DSB. Allow DSB based updates
even when we don't touch planes. The main benefit here
is that pure LUT updates will now go through the DSB path
and therefore we don't have to do vblank evasion/etc. on
the CPU.

I think the reason I had this excluded was that I was
originally contemplating using frame/flip timestamps as
a way to complete the commits. But I had to scrap that
idea when it turned out that those timestamp get
corrupted when DSB is poking at random registers.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 065fdf6dbb88..8d46c092fa4d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7332,7 +7332,6 @@ static void intel_atomic_dsb_prepare(struct intel_atomic_state *state,
 
 	/* FIXME deal with everything */
 	new_crtc_state->use_dsb =
-		new_crtc_state->update_planes &&
 		!new_crtc_state->do_async_flip &&
 		(DISPLAY_VER(display) >= 20 || !new_crtc_state->has_psr) &&
 		!new_crtc_state->scaler_state.scaler_users &&
-- 
2.45.3

