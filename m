Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D19B62F30C
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Nov 2022 11:55:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9100110E6C8;
	Fri, 18 Nov 2022 10:55:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A3F910E6C8
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Nov 2022 10:55:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668768954; x=1700304954;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=X+WEczir0McOICUpQjkFx61Hh2nGJLwTUhoFypnDPOg=;
 b=Vm7lVKvuyBWxGIpF6H0f/J8CG5k94kPhLi8SRIgBIBDhUmvViUOUvPsm
 0S8VoRtWo9mNfFJmzYHvJ73ffcBmL61579Z1jC4Okz58ZGv8yvZ3P3IZs
 UZ+h2CN2c0+AhM9BbsXHtr+e6bmknNKg504MCra8//TchdWQGfb6WWhZJ
 C4rrEaR/WuJRnnjDpxgiMlLDa5UOsX2+X4HaQHuc+CEuZfgUEjceZxa8d
 RdBKFhAiAOxpwyMdQcCuV9jtt/CRUP/np3FEG4jxEB7d43aHUn8Tsvu09
 CJjRAp/lc4+wfjbLkPdKd99ZX7GXchQQgcJpBdRVvOJvc8lL93wa5Itq3 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="399398182"
X-IronPort-AV: E=Sophos;i="5.96,174,1665471600"; d="scan'208";a="399398182"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2022 02:55:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="640172186"
X-IronPort-AV: E=Sophos;i="5.96,174,1665471600"; d="scan'208";a="640172186"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga002.jf.intel.com with SMTP; 18 Nov 2022 02:55:52 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 18 Nov 2022 12:55:51 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 18 Nov 2022 12:55:25 +0200
Message-Id: <20221118105525.27254-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221118105525.27254-1-ville.syrjala@linux.intel.com>
References: <20221118105525.27254-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 9/9] drm/i915/dvo: Use per device debugs
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

Convert the lonely DRM_DEBUG_KMS() to the per-device variant.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dvo.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
index 9462b66e5fb4..575cb920bd43 100644
--- a/drivers/gpu/drm/i915/display/intel_dvo.c
+++ b/drivers/gpu/drm/i915/display/intel_dvo.c
@@ -320,8 +320,8 @@ intel_dvo_detect(struct drm_connector *_connector, bool force)
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_dvo *intel_dvo = intel_attached_dvo(connector);
 
-	DRM_DEBUG_KMS("[CONNECTOR:%d:%s]\n",
-		      connector->base.base.id, connector->base.name);
+	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s]\n",
+		    connector->base.base.id, connector->base.name);
 
 	if (!INTEL_DISPLAY_ENABLED(i915))
 		return connector_status_disconnected;
-- 
2.37.4

