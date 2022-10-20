Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99A33605B55
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Oct 2022 11:39:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 804AB10E18D;
	Thu, 20 Oct 2022 09:39:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8B3310E034
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Oct 2022 09:39:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666258781; x=1697794781;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Y9Atnr+1ulZ/oLJybjmZfegMqshrK/DXz6vyoa9OmeQ=;
 b=Rv/knPnz6JkKINFnQw/Pgk6gx134lmTOhEMzWxVHUMVZk24O4Zs+kiyy
 3GD6sTbOXyB/oqQ561APc4w1cAoEKNbc1rqoEMA0J5e0gvAj4JW4H9FoL
 E3Vx5gkTq8QhAaZZVJ8zmwXxNr0zrNBzqrZnT0Zc+0mE5Czh19LkQUUkw
 tZw1RDHvyRmPmsIH4FtHaim4pldH7nMkrzpvpqbB1EDmdavPg8tlitdDn
 oeZ5M1iPA1q3TB6zE8sXawArrxv9OSKqehXI2Ss6YN6LSYB7y/7lhKVwq
 UTL7oQYXHlDPsGQG12glx4NU/0wRPcG5OMu6a2Wc+QGjc+zM8nVzH9t+i w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="333229997"
X-IronPort-AV: E=Sophos;i="5.95,198,1661842800"; d="scan'208";a="333229997"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 02:39:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="692878176"
X-IronPort-AV: E=Sophos;i="5.95,198,1661842800"; d="scan'208";a="692878176"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga008.fm.intel.com with SMTP; 20 Oct 2022 02:39:38 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 20 Oct 2022 12:39:38 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Oct 2022 12:39:38 +0300
Message-Id: <20221020093938.27200-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221006225413.27731-1-ville.syrjala@linux.intel.com>
References: <20221006225413.27731-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915: Allow panel fixed modes to have
 differing sync polarities
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

Apparently some panels declare multiple modes with random
sync polarities. Seems a bit weird, but looks like Windows/GOP
doesn't care, so let follow suit and accept alternate fixed
modes regardless of their sync polarities.

v2: Don't pollute the DRM_ namespace with a define (Jani)

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6968
Acked-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_panel.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 2b4b359b8342..69ce77711b7c 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -85,9 +85,10 @@ static bool is_alt_drrs_mode(const struct drm_display_mode *mode,
 static bool is_alt_fixed_mode(const struct drm_display_mode *mode,
 			      const struct drm_display_mode *preferred_mode)
 {
-	return drm_mode_match(mode, preferred_mode,
-			      DRM_MODE_MATCH_FLAGS |
-			      DRM_MODE_MATCH_3D_FLAGS) &&
+	u32 sync_flags = DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_NHSYNC |
+		DRM_MODE_FLAG_PVSYNC | DRM_MODE_FLAG_NVSYNC;
+
+	return (mode->flags & ~sync_flags) == (preferred_mode->flags & ~sync_flags) &&
 		mode->hdisplay == preferred_mode->hdisplay &&
 		mode->vdisplay == preferred_mode->vdisplay;
 }
-- 
2.35.1

