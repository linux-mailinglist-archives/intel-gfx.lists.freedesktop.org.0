Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63ACF96893A
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2024 15:54:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08C2A10E2FB;
	Mon,  2 Sep 2024 13:54:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mVPQCxXl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6425C10E2F5
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Sep 2024 13:54:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725285249; x=1756821249;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=44HkNqFXTt2n8XoXGf2IN0U8ffbpRAw9rxdZGGTJcY8=;
 b=mVPQCxXljEAOinT+M83TeLR96WV3BndXB/5w76BTKooP0n/vqCycLf/s
 CbxUwdveEoR018/QupVSRJ7i8GzLFZOGiaW5mLcyJQeah2vmjAxCaw83c
 9CRcpW4/PLyQXATx++9lhDqYPUYeBtDl8iFjF+dY5p8ll53Cz8a/FHnGg
 EmDKFMMNy6+scIn2Bi6eu9tc7VeBvMj2un7r5tlAIUiSPqIuGtfifIzBn
 p9lIx3FB6dHSPG00EfMJAWaFiWotoDzevi37nUK6aFFPDi0OQt9nbA2Oo
 +WXOOpvXDk2wARH3g1J/82ee9ejn5BkOn8XE32qyDu5tol/tajGp2FSrh g==;
X-CSE-ConnectionGUID: Sw/1oR9SSkib/wjlBOqlxg==
X-CSE-MsgGUID: xYdwOeveSSSe9hqTqjsXlw==
X-IronPort-AV: E=McAfee;i="6700,10204,11183"; a="41343650"
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="41343650"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2024 06:54:09 -0700
X-CSE-ConnectionGUID: 0l8XCkY2SmWDRtAKSbwADw==
X-CSE-MsgGUID: ef5N88GkSvSQwkO7PE/VVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="64623900"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 02 Sep 2024 06:54:07 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 02 Sep 2024 16:54:06 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 09/13] drm/i915/dsb: Introduce intel_dsb_wait_vblank_delay()
Date: Mon,  2 Sep 2024 16:53:38 +0300
Message-ID: <20240902135342.1050-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240902135342.1050-1-ville.syrjala@linux.intel.com>
References: <20240902135342.1050-1-ville.syrjala@linux.intel.com>
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

Add intel_dsb_wait_vblank_delay() which instructs the DSB
to wait for duration between the undelayed and delayed vblanks.
We'll need this as the DSB can only directly wait for the
undelayed vblank, but we'll need to wait until the delayed
vblank has elapsed as well.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 11 +++++++++++
 drivers/gpu/drm/i915/display/intel_dsb.h |  2 ++
 2 files changed, 13 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index d444bb5f6fb2..ac6aaa022c08 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -635,6 +635,17 @@ void intel_dsb_chain(struct intel_atomic_state *state,
 			 wait_for_vblank ? DSB_WAIT_FOR_VBLANK : 0);
 }
 
+void intel_dsb_wait_vblank_delay(struct intel_atomic_state *state,
+				 struct intel_dsb *dsb)
+{
+	struct intel_crtc *crtc = dsb->crtc;
+	const struct intel_crtc_state *crtc_state = pre_commit_crtc_state(state, crtc);
+	int usecs = intel_scanlines_to_usecs(&crtc_state->hw.adjusted_mode,
+					     dsb_vblank_delay(crtc_state)) + 1;
+
+	intel_dsb_wait_usec(dsb, usecs);
+}
+
 static void _intel_dsb_commit(struct intel_dsb *dsb, u32 ctrl,
 			      int hw_dewake_scanline)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.h b/drivers/gpu/drm/i915/display/intel_dsb.h
index 115f51c75a1e..33e0fc2ab380 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.h
+++ b/drivers/gpu/drm/i915/display/intel_dsb.h
@@ -42,6 +42,8 @@ void intel_dsb_nonpost_end(struct intel_dsb *dsb);
 void intel_dsb_interrupt(struct intel_dsb *dsb);
 void intel_dsb_wait_usec(struct intel_dsb *dsb, int count);
 void intel_dsb_wait_vblanks(struct intel_dsb *dsb, int count);
+void intel_dsb_wait_vblank_delay(struct intel_atomic_state *state,
+				 struct intel_dsb *dsb);
 void intel_dsb_wait_scanline_in(struct intel_atomic_state *state,
 				struct intel_dsb *dsb,
 				int lower, int upper);
-- 
2.44.2

