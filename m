Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F70698AA92
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2024 19:04:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C421910E561;
	Mon, 30 Sep 2024 17:04:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BwY7YYc9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76E5410E567;
 Mon, 30 Sep 2024 17:04:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727715885; x=1759251885;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UCBfoeq8ymqbRjELYRMNnEcj2ULKbYmJfXmD3vz0d4U=;
 b=BwY7YYc9GY4Bqlg/11MdbEE8zU2ARvUm4gyLGFKEDRwY5rEfJ7gZLdRI
 deYwgLW06oGxLRx8eXvRlialVy2YEgIgrbjIHhf6Ovf3zw2mqLq0eg8j/
 dN78IuTJTG2ofaQGPCNo4DDjYD/AwaWvYQw9uv3gwm2OmVzTOURSyiUF8
 kPL6lA7fQvktYPw6FNFhmiKiegbHqr7xtnP3a3R8tOlJHImwTtetBT3Jz
 Rn2J+G/upjIOvf3xozjUMJxbqL2ywLSgVl/wCZjeV3ejbjzuISsP0l+5b
 o9mi0WuwJ+GNk+vrvxZT7yWGcBnZ84+p+GDe6J7E7rpHO0FNKAXEzBGTk w==;
X-CSE-ConnectionGUID: L6EleVTiSGmzIjahYrkt3Q==
X-CSE-MsgGUID: pCUcCHeFRTO9zOuIfnG0MA==
X-IronPort-AV: E=McAfee;i="6700,10204,11211"; a="44276984"
X-IronPort-AV: E=Sophos;i="6.11,166,1725346800"; d="scan'208";a="44276984"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 10:04:45 -0700
X-CSE-ConnectionGUID: RQXEoB8bRdC6pKStpRK4Gg==
X-CSE-MsgGUID: 87hNQjVtTX6t8p/5ebU5IQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,166,1725346800"; d="scan'208";a="73490969"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 30 Sep 2024 10:04:41 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 30 Sep 2024 20:04:40 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v2 08/13] drm/i915: Introduce intel_scanlines_to_usecs()
Date: Mon, 30 Sep 2024 20:04:10 +0300
Message-ID: <20240930170415.23841-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240930170415.23841-1-ville.syrjala@linux.intel.com>
References: <20240930170415.23841-1-ville.syrjala@linux.intel.com>
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

Introduce intel_scanlines_to_usecs() as a counterpart to
intel_usecs_to_scanlines().

We'll have some use for this in DSB code as we want to do
relative scanline waits to evade the delayed vblank, but
unfortunately DSB can't do relative scanline waits (only
absolute). So we'll instead convert the relative scanline
count to usec and do a relative usec wait instead (which the
DSB knows how to do).

Reviewed-by: Animesh Manna <animesh.manna@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c | 11 +++++++++++
 drivers/gpu/drm/i915/display/intel_crtc.h |  2 ++
 2 files changed, 13 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 3a28d8450a38..8ed8dd5fe458 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -483,6 +483,17 @@ int intel_usecs_to_scanlines(const struct drm_display_mode *adjusted_mode,
 				1000 * adjusted_mode->crtc_htotal);
 }
 
+int intel_scanlines_to_usecs(const struct drm_display_mode *adjusted_mode,
+			     int scanlines)
+{
+	/* paranoia */
+	if (!adjusted_mode->crtc_clock)
+		return 1;
+
+	return DIV_ROUND_UP_ULL(mul_u32_u32(scanlines, adjusted_mode->crtc_htotal * 1000),
+				adjusted_mode->crtc_clock);
+}
+
 /**
  * intel_pipe_update_start() - start update of a set of display registers
  * @state: the atomic state
diff --git a/drivers/gpu/drm/i915/display/intel_crtc.h b/drivers/gpu/drm/i915/display/intel_crtc.h
index a58ecd11bba2..34ffbd2ee1b7 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.h
+++ b/drivers/gpu/drm/i915/display/intel_crtc.h
@@ -31,6 +31,8 @@ struct intel_display;
 
 int intel_usecs_to_scanlines(const struct drm_display_mode *adjusted_mode,
 			     int usecs);
+int intel_scanlines_to_usecs(const struct drm_display_mode *adjusted_mode,
+			     int scanlines);
 void intel_crtc_arm_vblank_event(struct intel_crtc_state *crtc_state);
 u32 intel_crtc_max_vblank_count(const struct intel_crtc_state *crtc_state);
 int intel_crtc_init(struct drm_i915_private *dev_priv, enum pipe pipe);
-- 
2.45.2

