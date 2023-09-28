Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82C237B2164
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Sep 2023 17:32:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 658FD10E68B;
	Thu, 28 Sep 2023 15:32:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6897710E04B
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Sep 2023 15:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695915118; x=1727451118;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IcB5++ONRJ6TGbhGMlMLs4MaS8u2FXkl4Y8mTG5WS+M=;
 b=HslHITMKJl3AIyQ8CgFXBo1ntuP8JXZedxXmyW7Lrwgi0HlhYhrQ1btP
 bPZ9bHtb2H0pF3HJzRJjqco0Bq9dpjDZYtAz9IVgOIz3vcv9NBdkxfaoA
 cX1WxqUcAfL6pGaY3L4Yq8Ai2gzwWfT7QOrchLJO8VS5zCv95+oLxNaC0
 TnufaxJjfPoFU9miaMKsh5uA36Tvn05JprYgm6J67Ey39aXBsrGHwckjc
 ObRo+0bUpPrx53BwHlDOccFtq2CCbewle/x4vxOb/zNuk1+4D5IAOeAHL
 DL4YgD1CUvDyGj0999u8cj7smiQiyxa1OplIMe/GZw8+RkhtTM0wFMY1v g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="385952795"
X-IronPort-AV: E=Sophos;i="6.03,184,1694761200"; d="scan'208";a="385952795"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2023 08:31:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="1080606943"
X-IronPort-AV: E=Sophos;i="6.03,184,1694761200"; d="scan'208";a="1080606943"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga005.fm.intel.com with SMTP; 28 Sep 2023 08:31:13 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 28 Sep 2023 18:31:12 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Sep 2023 18:31:09 +0300
Message-ID: <20230928153109.1976-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230928153109.1976-1-ville.syrjala@linux.intel.com>
References: <20230928153109.1976-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Do state check for color
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
index 138144a65a45..1ee3636f1b97 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
@@ -231,6 +231,8 @@ void intel_modeset_verify_crtc(struct intel_crtc *crtc,
 			       struct intel_crtc_state *new_crtc_state)
 {
 	if (!intel_crtc_needs_modeset(new_crtc_state) &&
+	    (!intel_crtc_needs_color_update(new_crtc_state) ||
+	     new_crtc_state->inherited) &&
 	    !intel_crtc_needs_fastset(new_crtc_state))
 		return;
 
-- 
2.41.0

