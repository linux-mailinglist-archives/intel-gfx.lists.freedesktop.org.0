Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BF6545EDA51
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Sep 2022 12:45:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70BD610E41E;
	Wed, 28 Sep 2022 10:44:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDD9310E408
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Sep 2022 10:44:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664361893; x=1695897893;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=eByzmWDXENzSVIPy0qQ6JxqRo5WKr+iLiVAbQ0vcV+g=;
 b=CvmSuHFpYVd+ln5lXPLLXbCn7IBFTBh1xvHSw4got4niN8Fs37n2o2mj
 5/eBa6WFIKVs7of6iNV0J3BW688pMi9LcvGmI8dIS5g38LffC0deUszHo
 y7cLBHRm3/PI3BlBkytNSxq1HQ/Sg3hR5ZtNy+kBQ2boTxoiPXsM6DGng
 EBqO33bcr2ZIp2h5mTcYf5iI1H3XsAQTnm7WwCmpHGEfiB0lvEI4g1/Fd
 bsY7XQuBczp9F90H6E+WmGoDe/L6awaaaE1f499ODjs2kZ+Rzg8B2RIPk
 Cx0dIJ7qaVVmkyrrQuEndGmDnCJEaQAUBnQH4ac2TU4kFD+tqwM7DTX20 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="387851440"
X-IronPort-AV: E=Sophos;i="5.93,351,1654585200"; d="scan'208";a="387851440"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2022 03:44:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="624106484"
X-IronPort-AV: E=Sophos;i="5.93,351,1654585200"; d="scan'208";a="624106484"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga007.fm.intel.com with SMTP; 28 Sep 2022 03:44:46 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 28 Sep 2022 13:44:45 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 28 Sep 2022 13:44:34 +0300
Message-Id: <20220928104434.29586-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220928104434.29586-1-ville.syrjala@linux.intel.com>
References: <20220928104434.29586-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/4] drm/i915: Fix locking in DRRS debugfs
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

Grab the crtc mutex so that looking at the crtc state is
actually safe.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_drrs.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index a5d6682475d1..2b94a62ef65a 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -301,8 +301,14 @@ void intel_crtc_drrs_init(struct intel_crtc *crtc)
 static int intel_drrs_debugfs_status_show(struct seq_file *m, void *unused)
 {
 	struct intel_crtc *crtc = m->private;
-	const struct intel_crtc_state *crtc_state =
-		to_intel_crtc_state(crtc->base.state);
+	const struct intel_crtc_state *crtc_state;
+	int ret;
+
+	ret = drm_modeset_lock_single_interruptible(&crtc->base.mutex);
+	if (ret)
+		return ret;
+
+	crtc_state = to_intel_crtc_state(crtc->base.state);
 
 	mutex_lock(&crtc->drrs.mutex);
 
@@ -321,6 +327,8 @@ static int intel_drrs_debugfs_status_show(struct seq_file *m, void *unused)
 
 	mutex_unlock(&crtc->drrs.mutex);
 
+	drm_modeset_unlock(&crtc->base.mutex);
+
 	return 0;
 }
 
-- 
2.35.1

