Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AEAFA636386
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 16:27:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B06B10E5A1;
	Wed, 23 Nov 2022 15:27:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29B5710E577
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Nov 2022 15:27:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669217240; x=1700753240;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=C9a6WcsyXYPQjXs5q4WQiKsAUHWlH2tL5HljIHGEHA8=;
 b=EHgb3FRBt4i859lQmdbhLVpDO5/2gT6NQfRINDBWvRCYbRB3YW7Hs448
 SWiAlNW8/I6DIkUUK2l+9JlXFEH/RD0kNuEp6TYZlIs3debht3KJRLGY8
 yyMYmC54jcx9B4x1VOuEoYGRRkcH5Wd0qIx8wtnKo/WZlfq2XfwA+wbE7
 I2jFEBdNHpeAvSkyZ1EMVna22fDrC3iwjzX+w+er6n+a0Js1l28kx/B/Z
 BOMiFT5OOOWfteL8Fny4WwHghpa6RXeUL3G68qGl9SRr+1iv8hWmerXWz
 hMsuK0x9Y9tv0puuMOIXWZgKTtyhPRSA4K0IifPcD8ZvfrF3fncXPONyi A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="312789986"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="312789986"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 07:27:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="619651110"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="619651110"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga006.jf.intel.com with SMTP; 23 Nov 2022 07:27:17 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 23 Nov 2022 17:27:16 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Nov 2022 17:26:38 +0200
Message-Id: <20221123152638.20622-14-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221123152638.20622-1-ville.syrjala@linux.intel.com>
References: <20221123152638.20622-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 13/13] drm/i915: Do state check for color
 management changes
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

In order to validate LUT programming more thoroughly let's
do a state check for all color management updates as well.

Not sure we really want this outside CI. It is rather heavy
and color management updates could become rather common
with all the HDR/etc. stuff happening. Maybe we should have
an extra knob for this that we could enable in CI?

v2: Skip for initial_commit to avoid FDI dotclock
    sanity checks/etc. tripping up

Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_modeset_verify.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_modeset_verify.c b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
index 842d70f0dfd2..9e4767e1b900 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
@@ -228,6 +228,8 @@ void intel_modeset_verify_crtc(struct intel_crtc *crtc,
 			       struct intel_crtc_state *new_crtc_state)
 {
 	if (!intel_crtc_needs_modeset(new_crtc_state) &&
+	    (!intel_crtc_needs_color_update(new_crtc_state) ||
+	     new_crtc_state->inherited) &&
 	    !intel_crtc_needs_fastset(new_crtc_state))
 		return;
 
-- 
2.37.4

