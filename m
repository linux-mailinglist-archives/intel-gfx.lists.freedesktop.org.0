Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9831B54FBC5
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jun 2022 18:58:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7564B10F416;
	Fri, 17 Jun 2022 16:58:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9F5C10F416
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jun 2022 16:58:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655485117; x=1687021117;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sIMWQUT1dm4ZaTSLDAhBNsSA9N1KLKt2eX7Fnv9aKK8=;
 b=KCm3oL7raGbS4+ag8MmsUqyDBSblP0e6UA1S9vF1sL5JlzpOo2KF+F98
 TkXol42Ti96NeKB8BTP6yy4sLr9NU9jOlgRhDDapMrfbbTwt5b3ghE5hb
 ZH+yfhXjLPYwq6Dz9cj5g0OArSOKyLo+u0eNlDpcPbcm1L7l/AZwJcF/u
 8HYXfG1qRvNpcyYWHImbrJntLE6+OEQaLaCPctyVfgQJI7TK17VEzg0Eh
 ye3T7VWq+REz8xpOpJO3TsH7Th9ehtHLkUClDyddvrfHOGRAFjSRZRqf4
 R8+oXaLCQfBM/+qjGE1aXrkv+7tb8r3oxfniJnmGLrxJWnCkojILkl+aX w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="365838121"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="365838121"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2022 09:05:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="728384830"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by fmsmga001.fm.intel.com with SMTP; 17 Jun 2022 09:05:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 Jun 2022 19:05:31 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Jun 2022 19:05:01 +0300
Message-Id: <20220617160510.2082-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220617160510.2082-1-ville.syrjala@linux.intel.com>
References: <20220617160510.2082-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 07/16] drm/i915: Compute clocks earlier
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Do the DPLL computation before fastset checks. This should
allow us to get rid of all that horrible fuzzy clock handling
for fastsets. Who knows how many bugs there are caused by our
state not actually matching what the hardware will generate.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 59dd66642c5f..ef7454c5b947 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2782,6 +2782,10 @@ static int intel_crtc_compute_config(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	int ret;
 
+	ret = intel_dpll_crtc_compute_clock(state, crtc);
+	if (ret)
+		return ret;
+
 	ret = intel_crtc_compute_pipe_src(crtc_state);
 	if (ret)
 		return ret;
@@ -7030,10 +7034,6 @@ static int intel_atomic_check(struct drm_device *dev,
 		if (intel_crtc_needs_modeset(new_crtc_state)) {
 			any_ms = true;
 
-			ret = intel_dpll_crtc_compute_clock(state, crtc);
-			if (ret)
-				goto fail;
-
 			intel_release_shared_dplls(state, crtc);
 			continue;
 		}
-- 
2.35.1

