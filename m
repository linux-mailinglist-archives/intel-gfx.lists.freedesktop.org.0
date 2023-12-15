Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CB87814612
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Dec 2023 11:59:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B899910E9DA;
	Fri, 15 Dec 2023 10:59:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40D1110E9DA
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Dec 2023 10:59:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702637991; x=1734173991;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6Ko1yoOpmoaV+EcEGpvsOmNvB1u0m02lEWOGbGAFGtc=;
 b=mFvZa8WSJdhkaLVLxk1La/86KCXpVqYeKnowc9Mstq9QT0J6bjhodr82
 7g3Akk6AQgbOe2V5ATF2HTtRpgrFLzA2Jb7qzPf3ZrZ2XBRMIWC/KBb6H
 9oXg47HkZGxEI6W9Pgso8m+VKfRTR3od2aNvzYWe22Zdotjnm28U10Tc0
 drQdsGbpr9KseO4fGcMwPe/ONf2auq/D0i+C+rK8z9XXwIVwh1R9YCiER
 NEDbwr6xsPHY1u5NLPFJKQ3LY/pb2MddH0RxSNvpL9NWtJSNbOv+dGPUw
 QqQkH5Ylv7rlZdng6K3bwygmTKTCZu5bmlRU25iy9wMan+w/4Fh4oIwa2 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="394136777"
X-IronPort-AV: E=Sophos;i="6.04,278,1695711600"; d="scan'208";a="394136777"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2023 02:59:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="767935165"
X-IronPort-AV: E=Sophos;i="6.04,278,1695711600"; d="scan'208";a="767935165"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 15 Dec 2023 02:59:48 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 15 Dec 2023 12:59:47 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 05/15] drm/i915: Disable the "binder"
Date: Fri, 15 Dec 2023 12:59:19 +0200
Message-ID: <20231215105929.29568-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231215105929.29568-1-ville.syrjala@linux.intel.com>
References: <20231215105929.29568-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Now that the GGTT PTE updates go straight to GSMBASE (bypassing
GTTMMADR) there should be no more risk of system hangs? So the
"binder" (ie. update the PTEs via MI_UPDATE_GTT) is no longer
necessary, disable it.

TODO: MI_UPDATE_GTT might be interesting as an optimization
though, so perhaps someone should look into always using it
(assuming the GPU is alive and well)?

Cc: Paz Zcharya <pazz@chromium.org>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gtt.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
index 86f73fe558ca..5bc7a4fb7485 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
@@ -24,7 +24,7 @@
 bool i915_ggtt_require_binder(struct drm_i915_private *i915)
 {
 	/* Wa_13010847436 & Wa_14019519902 */
-	return MEDIA_VER_FULL(i915) == IP_VER(13, 0);
+	return false && MEDIA_VER_FULL(i915) == IP_VER(13, 0);
 }
 
 static bool intel_ggtt_update_needs_vtd_wa(struct drm_i915_private *i915)
-- 
2.41.0

