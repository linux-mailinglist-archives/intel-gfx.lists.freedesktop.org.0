Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 860C154DE66
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jun 2022 11:48:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86EFA113D48;
	Thu, 16 Jun 2022 09:48:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03FD3113D65
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jun 2022 09:48:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655372921; x=1686908921;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FqXBjWX4Ks1tJczNV6s7W0zuUrnE0dRUeuGDkjEw7bw=;
 b=CrAAUql93jwOFjo7p5Upc2rYifc4FYZa7KUfGBQ5GvKyamr2zPkC8nSm
 0GIu9EXBPey/yuanE2vyJpmB95jNfZHzWytQayMYbLEW98YsiYz/0n86G
 QJV1L4QlRD+72nefya+SkPyglkec8BnPY9NW9mGHpGofO/n6ZIEHzt7Nq
 l0gOjyfhTKmliRynibxThjH+gZynBnmur8ezZbhMZxgnfRT7CXC3M7x/t
 u3UnvK2I0BeaoerwRQ3wkfDGMDYwh6oMziNvCs6qA2VDmYE9KrO8wer2Q
 2rc9h9+o3G/f0M8LBvL86n8+eq3HMh9bMdbVZVsQL6QF0UY6V/on+zfQE A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10379"; a="343169972"
X-IronPort-AV: E=Sophos;i="5.91,304,1647327600"; d="scan'208";a="343169972"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2022 02:48:40 -0700
X-IronPort-AV: E=Sophos;i="5.91,304,1647327600"; d="scan'208";a="831489274"
Received: from malashi-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.57.133])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2022 02:48:38 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Jun 2022 12:48:13 +0300
Message-Id: <167e54e13a9a41c944910a274e79cbfd39d963b1.1655372759.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1655372759.git.jani.nikula@intel.com>
References: <cover.1655372759.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 03/11] drm/i915/mpllb: use I915_STATE_WARN()
 for state mismatch warnings
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The pipe_config_mismatch() function is primarily for logging comparison
results.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index ca0b57816e5e..46aade2c19da 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6601,14 +6601,12 @@ verify_mpllb_state(struct intel_atomic_state *state,
 	encoder = intel_get_crtc_new_encoder(state, new_crtc_state);
 	intel_mpllb_readout_hw_state(encoder, &mpllb_hw_state);
 
-#define MPLLB_CHECK(name) do { \
-	if (mpllb_sw_state->name != mpllb_hw_state.name) { \
-		pipe_config_mismatch(false, crtc, "MPLLB:" __stringify(name), \
-				     "(expected 0x%08x, found 0x%08x)", \
-				     mpllb_sw_state->name, \
-				     mpllb_hw_state.name); \
-	} \
-} while (0)
+#define MPLLB_CHECK(__name)						\
+	I915_STATE_WARN(mpllb_sw_state->__name != mpllb_hw_state.__name,	\
+			"[CRTC:%d:%s] mismatch in MPLLB: %s (expected 0x%08x, found 0x%08x)", \
+			crtc->base.base.id, crtc->base.name,		\
+			__stringify(__name),				\
+			mpllb_sw_state->__name, mpllb_hw_state.__name)
 
 	MPLLB_CHECK(mpllb_cp);
 	MPLLB_CHECK(mpllb_div);
-- 
2.30.2

