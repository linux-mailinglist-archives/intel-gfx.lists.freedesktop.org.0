Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 82F99536839
	for <lists+intel-gfx@lfdr.de>; Fri, 27 May 2022 22:50:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5794810E9F7;
	Fri, 27 May 2022 20:50:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD15410F0DE
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 May 2022 20:49:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653684598; x=1685220598;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Qu7J3mc3pXOXNh/rhxzfp29Dhp1YscKyy0oEkQJNcX4=;
 b=jupj+4YFuSmvKu2h4r1G59JaYqbAWbE5v91p9VAOnoEy7Iq8376FjHFF
 /sQA5CYUycooHU/YteXRR/aPRy5g+4cPvx/KCGpIAnTSV5AIGJJ7FHIsQ
 V3clFy1LJ+hgc4C71SUGA6N5lHBm/FFFceG9dmAKmPE51LSnu57AMtaPr
 iUqH45AJA4UlAR4wKV4ajNqVPgHTp52j59dYF9IkEiIWOVpl6ZBQ6tyk8
 f43rZiOHrydGhp8P+WEyrLmdaHZk47WX7uA3loi33ceCJ+R5K8dw7IAow
 RXSxsBS6oRgy+edxBhkMdGNv81UUczuAFRYzeKc3S1Muy5xt+xnIDFEqC w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10360"; a="274674119"
X-IronPort-AV: E=Sophos;i="5.91,256,1647327600"; d="scan'208";a="274674119"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2022 13:49:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,256,1647327600"; d="scan'208";a="550418625"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by orsmga006.jf.intel.com with SMTP; 27 May 2022 13:49:56 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 27 May 2022 23:49:55 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 May 2022 23:49:45 +0300
Message-Id: <20220527204949.2264-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220527204949.2264-1-ville.syrjala@linux.intel.com>
References: <20220527204949.2264-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/6] drm/i915: Print out rejected fixed modes
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

To help with debugging DRRS/VRR panel init let's dump out all
the fixed modes we rejected for whatever reason.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_panel.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index d055e4118558..f55e4eafd74e 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -217,6 +217,10 @@ static void intel_panel_destroy_probed_modes(struct intel_connector *connector)
 	struct drm_display_mode *mode, *next;
 
 	list_for_each_entry_safe(mode, next, &connector->base.probed_modes, head) {
+		drm_dbg_kms(&i915->drm,
+			    "[CONNECTOR:%d:%s] not using EDID mode: " DRM_MODE_FMT "\n",
+			    connector->base.base.id, connector->base.name,
+			    DRM_MODE_ARG(mode));
 		list_del(&mode->head);
 		drm_mode_destroy(&i915->drm, mode);
 	}
-- 
2.35.1

