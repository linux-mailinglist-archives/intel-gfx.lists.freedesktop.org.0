Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36EFF90C318
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2024 07:31:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06C6E10E562;
	Tue, 18 Jun 2024 05:31:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Fl2QYv5w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2107B10E0D1
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2024 05:30:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718688656; x=1750224656;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gKmfbzy9/jnJ1oP3iaW1LmWabsWJ1Smkbs0hdbvbuHo=;
 b=Fl2QYv5wpIGDqVyUQNmC33Xiy1uthL2HB2Pf8Vb6qqlprbmWhqAXfBfb
 OfxyitLqdUvdWGgT9D8V3MFaD19KUg+FY90WWLq93zUt4P1Y54CoSI53x
 /zYp0zfGXShjPKrdNQLk2+FAUrhMp25ZdLIQMeWIiTZHFaKN+ueooznK3
 q+zXHKUmjxt70EKtZHNsm97xkbCvCbE9So+el2kXkYmOe9fQ7uQdtDzLb
 RMsiHMo/Cdd0+SFNfb8Ku+TexxIn2QxNpshdZdmQy7ayFncs9aCD+fSf7
 rMcvOzljdPfz9edpJrTyLRyeb9TJ6+tyDo7bJQpG+zKt1TtXAmR7XD9P0 w==;
X-CSE-ConnectionGUID: uqbWzTX+QKiJdhvWWAVDww==
X-CSE-MsgGUID: aE2rs3E7SNiz3btzz+vmTQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11106"; a="33077706"
X-IronPort-AV: E=Sophos;i="6.08,246,1712646000"; d="scan'208";a="33077706"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2024 22:30:54 -0700
X-CSE-ConnectionGUID: JPQH5f0QTUCH5UQgDr365w==
X-CSE-MsgGUID: a7ZMrKYgTwGvvI/ezYHY0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,246,1712646000"; d="scan'208";a="41365143"
Received: from opintica-mobl1 (HELO jhogande-mobl1..) ([10.245.245.27])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2024 22:30:40 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 2/9] drm/i915/display: Wa 16021440873 is writing wrong register
Date: Tue, 18 Jun 2024 08:30:19 +0300
Message-Id: <20240618053026.3268759-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240618053026.3268759-1-jouni.hogander@intel.com>
References: <20240618053026.3268759-1-jouni.hogander@intel.com>
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

Wa 16021440873 is writing wrong register. Instead of PIPE_SRCSZ_ERLY_TPT
write CURPOS_ERLY_TPT.

v2: use right offset as well

Fixes: 29cdef8539c3 ("drm/i915/display: Implement Wa_16021440873")
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cursor.c |  4 ++--
 drivers/gpu/drm/i915/display/intel_psr.c    | 12 +++---------
 2 files changed, 5 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 7f7fc710350c..66436e526021 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -524,8 +524,8 @@ static void wa_16021440873(struct intel_plane *plane,
 
 	intel_de_write_fw(dev_priv, SEL_FETCH_CUR_CTL(pipe), ctl);
 
-	intel_de_write(dev_priv, PIPE_SRCSZ_ERLY_TPT(pipe),
-		       PIPESRC_HEIGHT(et_y_position));
+	intel_de_write(dev_priv, CURPOS_ERLY_TPT(dev_priv, pipe),
+		       CURSOR_POS_Y(et_y_position));
 }
 
 static void i9xx_cursor_update_sel_fetch_arm(struct intel_plane *plane,
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 3f36b94020ff..2a33e35ceeff 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2164,19 +2164,14 @@ static void psr2_man_trk_ctl_calc(struct intel_crtc_state *crtc_state,
 	crtc_state->psr2_man_track_ctl = val;
 }
 
-static u32
-psr2_pipe_srcsz_early_tpt_calc(struct intel_crtc_state *crtc_state,
-			       bool full_update, bool cursor_in_su_area)
+static u32 psr2_pipe_srcsz_early_tpt_calc(struct intel_crtc_state *crtc_state,
+					  bool full_update)
 {
 	int width, height;
 
 	if (!crtc_state->enable_psr2_su_region_et || full_update)
 		return 0;
 
-	if (!cursor_in_su_area)
-		return PIPESRC_WIDTH(0) |
-			PIPESRC_HEIGHT(drm_rect_height(&crtc_state->pipe_src));
-
 	width = drm_rect_width(&crtc_state->psr2_su_area);
 	height = drm_rect_height(&crtc_state->psr2_su_area);
 
@@ -2485,8 +2480,7 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 skip_sel_fetch_set_loop:
 	psr2_man_trk_ctl_calc(crtc_state, full_update);
 	crtc_state->pipe_srcsz_early_tpt =
-		psr2_pipe_srcsz_early_tpt_calc(crtc_state, full_update,
-					       cursor_in_su_area);
+		psr2_pipe_srcsz_early_tpt_calc(crtc_state, full_update);
 	return 0;
 }
 
-- 
2.34.1

