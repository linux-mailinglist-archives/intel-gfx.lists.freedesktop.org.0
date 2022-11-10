Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BFC28623D69
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Nov 2022 09:22:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C482C10E126;
	Thu, 10 Nov 2022 08:22:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 869E310E681
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Nov 2022 08:22:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668068544; x=1699604544;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=dr3OtvdWNDlN9kY7LIvmeifix+RxPtpZxD5uS0lWuZ0=;
 b=HR+HUVcitZXUmTVipSCtOfj9AMjbgpjMOhdceqaE/9wyU+NG7MOFUE52
 7Hjc3c5TeBG5qf02kE94DqT4y4DiOsn0gm+f43IdwCRoKM6SA7rlhhPAd
 uTaY3FJUsAGTF+SkCeQM2KUXHmsuMpkrVtMwFiXMbqexsC4bsaYWmwrDy
 Ef63QHHiBg0zbCiKXBqJvkL/Qnnsr9bfL7cGwKcMDS61mEo/JzOniFyFq
 Er2v4wiAQowsqruIQinp+mAUiibp0l/58AWOPkZSCRG8xXQDA3Hwq03DY
 vGWxKTo7GiQb0HMH+anLvBhjpOPiF+Mb3kMQZFyt4TjAlkgv9UEwzsFEy w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="309965429"
X-IronPort-AV: E=Sophos;i="5.96,153,1665471600"; d="scan'208";a="309965429"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2022 00:22:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="639531062"
X-IronPort-AV: E=Sophos;i="5.96,153,1665471600"; d="scan'208";a="639531062"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga007.fm.intel.com with SMTP; 10 Nov 2022 00:22:22 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Nov 2022 10:22:21 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Nov 2022 10:21:38 +0200
Message-Id: <20221110082144.19666-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221110082144.19666-1-ville.syrjala@linux.intel.com>
References: <20221110082144.19666-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 12/18] drm/i915: Make .read_luts() mandatory
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

Every platform now implemnts .read_luts(). Make it mandatory.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 8bcde3acb9ff..7de166bbaa6a 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1230,8 +1230,7 @@ void intel_color_get_config(struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 
-	if (i915->display.funcs.color->read_luts)
-		i915->display.funcs.color->read_luts(crtc_state);
+	i915->display.funcs.color->read_luts(crtc_state);
 }
 
 static bool need_plane_update(struct intel_plane *plane,
-- 
2.37.4

