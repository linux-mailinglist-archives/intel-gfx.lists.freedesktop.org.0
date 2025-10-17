Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD1ECBEA8E0
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Oct 2025 18:14:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39A0110EC81;
	Fri, 17 Oct 2025 16:14:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OCdo/vVn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E266D10EC86;
 Fri, 17 Oct 2025 16:14:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760717690; x=1792253690;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LDdso87LS7lcBZL+FNDia2Fifdgh8TXrIeRn6M7sgpg=;
 b=OCdo/vVnmqsMyacF70tqTPk+nCUSV+xfwwf9vVd7M5Yv7pkqKygPJfFd
 NghaYA1s0x/LQLYY1NxfqSEYyrVmGS8hUyojzlhB02jVSY+Ymo6TN9IqF
 YLfDVt4n0OtAHYAvKq8oqFvQlYwSkLeZa0UzVWNqgu9nFj7gkRPXxzrvz
 OG9H3Z1271pb79ZEJ5jArnfMKQtUnIsfXD0J43Fjr9czJmyNL9Fn4Mb9E
 UUieAZBx5/OElg86LQMLP2xAYM8EkKrfu73fmR/KkCN89hPdM+fa9EF6P
 k+GfAB2poizGMYUv+V+qnJrpAJxo1slvYTzT9FU21kzQc6jttmeQsbQBp g==;
X-CSE-ConnectionGUID: rKxevaPqRFq1mwLGAzu08A==
X-CSE-MsgGUID: kryOgb6LR6eHUooft7aDGg==
X-IronPort-AV: E=McAfee;i="6800,10657,11585"; a="61961824"
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="61961824"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 09:14:49 -0700
X-CSE-ConnectionGUID: BzHRdTTPQ4WEXJDFFJBhIw==
X-CSE-MsgGUID: leciA9PFS76xAn15AyEAhA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="187026495"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.129])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 09:14:48 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 7/9] drm/i915/wm: Do skl_wm_check_vblank() after DDB stuff
Date: Fri, 17 Oct 2025 19:14:15 +0300
Message-ID: <20251017161417.4399-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251017161417.4399-1-ville.syrjala@linux.intel.com>
References: <20251017161417.4399-1-ville.syrjala@linux.intel.com>
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

Feels more sensible to check the original unmangled watermarks
against the allocated DDB size first, and only then do
skl_wm_check_vblank() on whatever is left.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 256162da9afc..764770fab7e7 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2346,7 +2346,7 @@ static int skl_build_pipe_wm(struct intel_atomic_state *state,
 
 	crtc_state->wm.skl.optimal = crtc_state->wm.skl.raw;
 
-	return skl_wm_check_vblank(crtc_state);
+	return 0;
 }
 
 static bool skl_wm_level_equals(const struct skl_wm_level *l1,
@@ -2923,6 +2923,10 @@ skl_compute_wm(struct intel_atomic_state *state)
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
 		struct skl_pipe_wm *pipe_wm = &new_crtc_state->wm.skl.optimal;
 
+		ret = skl_wm_check_vblank(new_crtc_state);
+		if (ret)
+			return ret;
+
 		/*
 		 * We store use_sagv_wm in the crtc state rather than relying on
 		 * that bw state since we have no convenient way to get at the
-- 
2.49.1

