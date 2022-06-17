Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7FEE54FBAC
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jun 2022 18:56:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7BC010EB0A;
	Fri, 17 Jun 2022 16:55:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58FC410E8FC
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jun 2022 16:55:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655484958; x=1687020958;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8Ss6d9jelz5/2qV8h70xpmfwhW21EdWjXr6NqVLNaqw=;
 b=QrC1RF7qRrYI/dMmotnyrFDvtJvRWVfqBPRavSQpHOhczXXcRScv7mO3
 rgfrgdDyiMBO7gM9aK/zomJtuKZQqyIH1UjQB5slWIIy1TbezhfGqG23v
 FBCCbmoaFOA+qyhaH6tsa1UflhIuUvjsn4Uuabu6R9p7KNrj3xM4H8dvZ
 bz2LdIPOITx93mf5KSg46IY6kSgwB9q36dh0zxxcG4ellmkGltwAKc7YY
 ho0RyAzgs/p8DpeJ8lIu5ZQicb4k2MMfO0bolm0PjdX7wcR+NyNRoPkYJ
 OporXUZDKisKlNGqsxhEZoVVPAsKcCAAOLMVYkFR9B+FuZCwjWVxyG+Qi g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="279544699"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="279544699"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2022 09:05:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="613586832"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by orsmga008.jf.intel.com with SMTP; 17 Jun 2022 09:05:47 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 Jun 2022 19:05:47 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Jun 2022 19:05:06 +0300
Message-Id: <20220617160510.2082-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220617160510.2082-1-ville.syrjala@linux.intel.com>
References: <20220617160510.2082-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 12/16] drm/i915: Skip
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
index 16a4ea183746..4f7e119f1cd3 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6918,9 +6918,11 @@ static int intel_atomic_check(struct drm_device *dev,
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

