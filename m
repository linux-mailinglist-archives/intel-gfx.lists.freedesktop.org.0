Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 813E24B0A93
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Feb 2022 11:31:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97E4310E7CB;
	Thu, 10 Feb 2022 10:31:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B81E610E7CB
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Feb 2022 10:31:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644489071; x=1676025071;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=u6EN7iiy7ZzE9yJ2ceEVClcmYg9QiE+S0wICCF9Jwa4=;
 b=VxDl+Jve9MzbUsXUr56aE0dTUsAqZebK2CnlwzLfv1k3k2kv9E7B/A9z
 6v4xBjg+ZHbykjJvEvpSY0bh9Kxw98KwM+mCv07ZrGXkxhgAwzBtgyBmo
 5HgwlZgzbyYSirtzeHKB1CafoTrJYZDRs44lUrez79Za64g1HUC2ga9Eu
 cWGVcTiGMCt7Kg69N0n8hK5Y5yV9kuQsVSN5yaI5a+pSx7mFIRuIM6SjU
 Fgag6q1/2i2Pei5M8GDlHUK+W0weQOiolyyi/yuLNhslMp8IWqwiq8Uh2
 scDzP5NrJiNq8GIO0h6H13W1PNLZZvgMQO5c6c3n5CdjwyWuwDsRnNW/8 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10253"; a="233023529"
X-IronPort-AV: E=Sophos;i="5.88,358,1635231600"; d="scan'208";a="233023529"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 02:31:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,358,1635231600"; d="scan'208";a="679101664"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga001.fm.intel.com with SMTP; 10 Feb 2022 02:31:08 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Feb 2022 12:31:07 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Feb 2022 12:31:07 +0200
Message-Id: <20220210103107.24492-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/fbc: Fix the plane end Y offset check
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

We lost the required >>16 when I refactored the FBC plane state
checks. Bring it back so the check does what it's supposed to.

Cc: Mika Kahola <mika.kahola@intel.com>
Fixes: 2e6c99f88679 ("drm/i915/fbc: Nuke lots of crap from intel_fbc_state_cache")
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index bcdffe62f3cb..87f4af3fd523 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1125,7 +1125,8 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
 
 	/* Wa_22010751166: icl, ehl, tgl, dg1, rkl */
 	if (DISPLAY_VER(i915) >= 11 &&
-	    (plane_state->view.color_plane[0].y + drm_rect_height(&plane_state->uapi.src)) & 3) {
+	    (plane_state->view.color_plane[0].y +
+	     (drm_rect_height(&plane_state->uapi.src) >> 16)) & 3) {
 		plane_state->no_fbc_reason = "plane end Y offset misaligned";
 		return false;
 	}
-- 
2.34.1

