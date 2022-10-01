Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C13E55F1E96
	for <lists+intel-gfx@lfdr.de>; Sat,  1 Oct 2022 20:25:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E005D10E66F;
	Sat,  1 Oct 2022 18:25:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 565E310E581
 for <intel-gfx@lists.freedesktop.org>; Sat,  1 Oct 2022 18:25:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664648720; x=1696184720;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Esyvku5Wvj5Nc0rcwSG/YxeYzL/reEgvmWSYw4q8HTk=;
 b=BDZIzNcJlnInh5VVILsivr3YL5o0smcnJlolaoGfddCNDRwI4B/SZsAX
 bwfppVodSfJCnlDu6BnCGpLfIX3w6K5pu8byJkIaXqB/50ayZ70zSfeSJ
 tAc17VKdseGb6kCEoVgBko+WLvv7Rd1wBU3bSVQX/O90psOX6T1DsXcl3
 0Y3oMWypWA0vJufJYGMDoGIftfGvvHnqQSxMpBr5zyE/DsM3AMrX27QF3
 9KfAECnDgtRfPWf/QDjr8jEXSF09Huey9v1ihjat0uUJac5ulk3Jbt/xN
 EbjXi1sHx/5yCFoEAv7hZCo5ai301YdtJdHEoZQrKtBfxOvHz0fQhdmdM Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10487"; a="303893496"
X-IronPort-AV: E=Sophos;i="5.93,361,1654585200"; d="scan'208";a="303893496"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2022 11:25:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10487"; a="685655052"
X-IronPort-AV: E=Sophos;i="5.93,361,1654585200"; d="scan'208";a="685655052"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga008.fm.intel.com with SMTP; 01 Oct 2022 11:25:17 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 01 Oct 2022 21:25:17 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  1 Oct 2022 21:25:05 +0300
Message-Id: <20221001182505.3675-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221001182505.3675-1-ville.syrjala@linux.intel.com>
References: <20221001182505.3675-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 4/4] drm/i915: Fix locking in DRRS debugfs
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Grab the crtc mutex so that looking at the crtc state is
actually safe.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
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

