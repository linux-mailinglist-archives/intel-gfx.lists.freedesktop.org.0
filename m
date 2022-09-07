Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A146C5B0019
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Sep 2022 11:12:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 455CC10E49F;
	Wed,  7 Sep 2022 09:12:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1371810E4D8
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Sep 2022 09:11:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662541902; x=1694077902;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=z4QS4waDE/1gsAgHXP6M27hS0cNzbzNeU6SI+X5ndOY=;
 b=KC7ILjWO7f10M7FJsjORhKdmosL958s4ReNkOWPks1VAfwyBSDWlwe7E
 k4xoxAPCJuZs/scwikKUyP7QwvKUKQ9E1uByOnnkkosCOyngcKSU4DX0f
 hu9lmQ4IPkPry7YLsroOdjDXiaH4W5pld8Egbhpj5kPwRVqKnoCP+UEly
 WfWhs7pS2JOMSKEIPzXU1QQVaY5wBcrhEASNkC4I9WEFS1knrZW8QZo7L
 nL+TTtEkUFkoRG9ffr3BD0zLe1eXYNYtxY82hel1Op3IbXzKgWAJzDS4h
 +s7CysUdoxeXx4VC6rSpE9dwfkq1lSX66ODbOo7AA5l5BKkc70cV8wr2d A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10462"; a="298138162"
X-IronPort-AV: E=Sophos;i="5.93,296,1654585200"; d="scan'208";a="298138162"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2022 02:11:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,296,1654585200"; d="scan'208";a="703529791"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by FMSMGA003.fm.intel.com with SMTP; 07 Sep 2022 02:11:38 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 07 Sep 2022 12:11:38 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Sep 2022 12:10:53 +0300
Message-Id: <20220907091057.11572-14-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220907091057.11572-1-ville.syrjala@linux.intel.com>
References: <20220907091057.11572-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 13/17] drm/i915: Skip
 intel_modeset_pipe_config_late() if the pipe is not enabled
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

No sense in calling intel_modeset_pipe_config_late() for a disabled
pipe.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 6370ba7bbbb6..0586aa5f7bd1 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6782,9 +6782,11 @@ static int intel_atomic_check(struct drm_device *dev,
 		if (!intel_crtc_needs_modeset(new_crtc_state))
 			continue;
 
-		ret = intel_modeset_pipe_config_late(state, crtc);
-		if (ret)
-			goto fail;
+		if (new_crtc_state->hw.enable) {
+			ret = intel_modeset_pipe_config_late(state, crtc);
+			if (ret)
+				goto fail;
+		}
 
 		intel_crtc_check_fastset(old_crtc_state, new_crtc_state);
 	}
-- 
2.35.1

