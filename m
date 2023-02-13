Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AB43695421
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Feb 2023 23:53:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A322310E76C;
	Mon, 13 Feb 2023 22:53:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21AE010E76A
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Feb 2023 22:53:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676328795; x=1707864795;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=DYg9ykwWfNjvAYvPK41saiA91Bg8eRcefvs0qEenATc=;
 b=Yz8k22bIcfmuthk/UFex6c2ej8eDBi6U6SxTJHBC7ejv1ebxtMJkyTmV
 7vr1nr2LJQxldElyK45t4hPlJA3V919138pSb2QuK6o3x2d3MZF9PHMYV
 27y9MR2NBiuxLV9+UMYCSRsm6ouiC7S3Hbw4IdtIwyfUv2iypIR6fZ7gh
 4hw5y14i/QkZzj18T87k4CGyFHXk5+RE4FgrVttWIiWrMsaqqoHWQYPA1
 kr33A4qkb8TrdnDajfiaVayChtfeUlpoExn+Yjuec6Lq+E14uxqYT3bnl
 NaG3d30PvEU0CE1Sm7LenQXUV+q/5tJhunUsPG0VYgb+GNL6eAI2qBqFR g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="417237395"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="417237395"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 14:53:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="757766431"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="757766431"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by FMSMGA003.fm.intel.com with SMTP; 13 Feb 2023 14:53:13 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 14 Feb 2023 00:53:12 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Feb 2023 00:52:51 +0200
Message-Id: <20230213225258.2127-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230213225258.2127-1-ville.syrjala@linux.intel.com>
References: <20230213225258.2127-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 05/12] drm/i915: Dump blanking start/end
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

With the delayed vblank we need to start knowing where
the blanking periods start. So let's start dumping
out also the blanking start/end timings.

And while at it let's try to make that huge list of
numbers somewhat legible by indicating what each value
means. Also drop the 'type' since that doesn't really
mean anything for the crtc_ timings.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_crtc_state_dump.c | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index 2422d6ef5777..766633566fd6 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -14,14 +14,16 @@
 static void intel_dump_crtc_timings(struct drm_i915_private *i915,
 				    const struct drm_display_mode *mode)
 {
-	drm_dbg_kms(&i915->drm, "crtc timings: %d %d %d %d %d %d %d %d %d, "
-		    "type: 0x%x flags: 0x%x\n",
+	drm_dbg_kms(&i915->drm, "crtc timings: clock=%d, "
+		    "hd=%d hb=%d-%d hs=%d-%d ht=%d, "
+		    "vd=%d vb=%d-%d vs=%d-%d vt=%d, "
+		    "flags=0x%x\n",
 		    mode->crtc_clock,
-		    mode->crtc_hdisplay, mode->crtc_hsync_start,
-		    mode->crtc_hsync_end, mode->crtc_htotal,
-		    mode->crtc_vdisplay, mode->crtc_vsync_start,
-		    mode->crtc_vsync_end, mode->crtc_vtotal,
-		    mode->type, mode->flags);
+		    mode->crtc_hdisplay, mode->crtc_hblank_start, mode->crtc_hblank_end,
+		    mode->crtc_hsync_start, mode->crtc_hsync_end, mode->crtc_htotal,
+		    mode->crtc_vdisplay, mode->crtc_vblank_start, mode->crtc_vblank_end,
+		    mode->crtc_vsync_start, mode->crtc_vsync_end, mode->crtc_vtotal,
+		    mode->flags);
 }
 
 static void
-- 
2.39.1

