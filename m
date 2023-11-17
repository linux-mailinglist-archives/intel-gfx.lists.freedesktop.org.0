Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C6E027EF6E0
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Nov 2023 18:18:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BD1310E304;
	Fri, 17 Nov 2023 17:18:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FFC210E304
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Nov 2023 17:18:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700241519; x=1731777519;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=MiMETA8HdxTg+wLYy/746siWrI6LutuvEChIzlILR/w=;
 b=FfZ+KdNrhxjQcIetZljfJezQhubyRoegvbjrjEb3OMIVmG8OKEHAGamd
 1jKRp9yzIE9MCc78In1Cb/hiLonZdWv5ED6wt9G8XQnG3EcWWCF1wc0gj
 GY0VbXcFQ7r4TjE8QBu6z94yAUOk09kDpwhqJ4YHwV6aRCj96eLq+X0Nj
 9N6FS4A0on0+jbCzAqgQHil/W4gvr8WjPJD+nwmgeHMsSh9QKCMsITUpN
 DY26V+ZyHlkabjI1IUIE9FxdqqtO0nG1ohwYuIf81FlR3oUXpHdxmJrWP
 EIhuePbmnlhsSnswllhpD+xU3gqLExTEL/iOQ9znfDijyqyHUhjub1xK3 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10897"; a="422428575"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="422428575"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2023 09:18:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10897"; a="759225802"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="759225802"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 17 Nov 2023 09:18:37 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 Nov 2023 19:18:36 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Nov 2023 19:18:32 +0200
Message-ID: <20231117171833.25816-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231117171833.25816-1-ville.syrjala@linux.intel.com>
References: <20231117171833.25816-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/fbc: Bump max surface size to
 8kx4k on icl+
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

FBC on icl+ should supposedly be fine with surface sizes up to
8kx4k. Bump up the limit.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index fe21371db38c..0ac222eaddd2 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1028,7 +1028,10 @@ static bool intel_fbc_hw_tracking_covers_screen(const struct intel_plane_state *
 	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
 	unsigned int effective_w, effective_h, max_w, max_h;
 
-	if (DISPLAY_VER(i915) >= 10) {
+	if (DISPLAY_VER(i915) >= 11) {
+		max_w = 8192;
+		max_h = 4096;
+	} else if (DISPLAY_VER(i915) >= 10) {
 		max_w = 5120;
 		max_h = 4096;
 	} else if (DISPLAY_VER(i915) >= 8 || IS_HASWELL(i915)) {
-- 
2.41.0

