Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B28415F7F7F
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Oct 2022 23:11:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4A0810E292;
	Fri,  7 Oct 2022 21:11:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7314D10E231
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Oct 2022 21:11:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665177074; x=1696713074;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ciFRDXJM0HPr+PgKjjwl7N4ikEHpTIbYZSB0UVmKOWo=;
 b=GvgWyEfJt0Lgi4F6V83OnDeosav5v7DYIwyZdfSi7QCP7xHHanFMw3xg
 Ry8mEp/NEe9lKS3dqjynY41QimWe9/Bo0W5w8s82YlLo2PYq1xRCc3fKk
 T1X6lQPBK6vQI6ZAy5L56Yb4nCUh+pESgit+XRLEV2Ra5Y+lV9X9FROsa
 xW0A1da1xsn2ZN9XalDmX2U+2bUjoVzRTo/PvpGZsSkaHS0iGA7d8Au6y
 8nR0ac3DLG1fWPDFrahUF2N7DTCYmUptCqoPvtU+81t/q9JgRnWEYfkPz
 779QRT2NrPlTZtJLhtIOg0iG8E6pmGLRJlIxzVJh9CCH8RNgnp2gAdxWz A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10493"; a="302560520"
X-IronPort-AV: E=Sophos;i="5.95,167,1661842800"; d="scan'208";a="302560520"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2022 14:11:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10493"; a="688050602"
X-IronPort-AV: E=Sophos;i="5.95,167,1661842800"; d="scan'208";a="688050602"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga008.fm.intel.com with SMTP; 07 Oct 2022 14:11:12 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 08 Oct 2022 00:11:11 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  8 Oct 2022 00:11:08 +0300
Message-Id: <20221007211108.3883-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221007211108.3883-1-ville.syrjala@linux.intel.com>
References: <20221007211108.3883-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Enable atomic by default on
 ctg/elk
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

The watermark code for ctg/elk has been atomic ready for a long time
so let's just flip the switch now that some of the last CxSR issues
have been sorted out (which granted was a problem for vlv/chv as well
despite them already having atomic enabled by default).

v2: Rebase

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/intel_device_info.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index b691b7c8c254..090097bb3c0a 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -508,8 +508,9 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 		runtime->has_dsc = false;
 	}
 
-	/* Disable nuclear pageflip by default on pre-ILK */
-	if (!dev_priv->params.nuclear_pageflip && DISPLAY_VER(dev_priv) < 5)
+	/* Disable nuclear pageflip by default on pre-g4x */
+	if (!dev_priv->params.nuclear_pageflip &&
+	    DISPLAY_VER(dev_priv) < 5 && !IS_G4X(dev_priv))
 		dev_priv->drm.driver_features &= ~DRIVER_ATOMIC;
 }
 
-- 
2.35.1

