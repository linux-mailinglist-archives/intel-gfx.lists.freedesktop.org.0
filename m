Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5314E5ECA53
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Sep 2022 19:01:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A54610E0B7;
	Tue, 27 Sep 2022 17:00:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71F7910E0B7;
 Tue, 27 Sep 2022 17:00:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664298038; x=1695834038;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EtDly6emnQPYq7BlEZfxFE2HikRoCeYaGYzlMIcZ02U=;
 b=WZoigkt1Jtthp2HsOQtY9UeKzjc1N6WU+Yn8t47ndmiORljI2wP+H5YX
 yz4O4UluJcCfiH6RZPu+C7ouhPQTi8K8LOq59APkK6czE7JWk5esSbPb2
 lmwtQTgPqLWNuCfzKraHrSB8xLDUzzpuVTrMzM9gKNF/1/jmYrNLupCRa
 bV5x6LxnC13sA2/hzHCX960WQgKhoygxasdH6jxqwi3S3rtOfGsWw8VLU
 zfZb2bbkrr25uS/2g44DIFRLSYxA17wk5lP/P9nB3SRjg7AujVOgirahp
 vDh9lvlIKSVnDWJusWaY+SrqWXh2XIagj1ORS29oqE6hYj9NOHxlffK7F w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="387656805"
X-IronPort-AV: E=Sophos;i="5.93,349,1654585200"; d="scan'208";a="387656805"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 10:00:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="621591727"
X-IronPort-AV: E=Sophos;i="5.93,349,1654585200"; d="scan'208";a="621591727"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga002.jf.intel.com with SMTP; 27 Sep 2022 10:00:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 27 Sep 2022 20:00:31 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: dri-devel@lists.freedesktop.org
Date: Tue, 27 Sep 2022 20:00:04 +0300
Message-Id: <20220927170006.27855-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220927170006.27855-1-ville.syrjala@linux.intel.com>
References: <20220927170006.27855-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 7/9] drm/edid: Unconfuse preferred timing
 stuff a bit
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

For EDID 1.4 the first detailed timing is always preferred,
for older EDIDs there was a feature flag to indicate the same.
While correct, the code setting that up is rather confusing.
Restate it in a slightly more straightforward manner.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/drm_edid.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index 60e68d27371d..1856560463a3 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -3952,13 +3952,14 @@ static int add_detailed_modes(struct drm_connector *connector,
 	struct detailed_mode_closure closure = {
 		.connector = connector,
 		.drm_edid = drm_edid,
-		.preferred = true,
 		.quirks = quirks,
 	};
 
-	if (closure.preferred && !version_greater(drm_edid, 1, 3))
+	if (version_greater(drm_edid, 1, 3))
+		closure.preferred = true; /* first detailed timing is always preferred */
+	else
 		closure.preferred =
-		    (drm_edid->edid->features & DRM_EDID_FEATURE_PREFERRED_TIMING);
+			drm_edid->edid->features & DRM_EDID_FEATURE_PREFERRED_TIMING;
 
 	drm_for_each_detailed_block(drm_edid, do_detailed_mode, &closure);
 
-- 
2.35.1

