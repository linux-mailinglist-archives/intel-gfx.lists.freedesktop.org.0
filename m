Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 04D9A4B9D2C
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Feb 2022 11:32:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BC5B10EAE5;
	Thu, 17 Feb 2022 10:32:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1268910EAD4
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Feb 2022 10:32:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645093950; x=1676629950;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=yilWb5unN241gIQohh5Ty7iRk3uCoR8XcXwYKBCxHic=;
 b=apjt7mr+zPeDYx4op6CcY0E4cnvy+B9Xf09HrssEFk2Dnchj/shTbXw2
 obYgebi/EbuGWLu79JQ+6Y1WnzFTAalQ9c0agbAoDTas1Py3Vv5EE+PNr
 67Kz5SeC8MPVWuSblwc7ix0DGnkI0NIBAjZEN1vpV/2fYWg8HWuSA/zbd
 FiQyBCiB0oWK3daf+IEUPNyl5iIDMSb4WaBOTX9AgAb+jjqY8Y8/U9wR0
 tcMpkUlevQ+pOlnLBj1eTtFWcS8TvkInm0THruBYRjGMISyU/U1K85Wu2
 cQr4/BS9oJh7av5yq3Vy/u+wqPdPRQx/GhoE2gU3fOS67WUpOMcydOws0 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10260"; a="230807668"
X-IronPort-AV: E=Sophos;i="5.88,375,1635231600"; d="scan'208";a="230807668"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2022 02:32:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,375,1635231600"; d="scan'208";a="589275782"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga008.fm.intel.com with SMTP; 17 Feb 2022 02:32:27 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 17 Feb 2022 12:32:27 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Feb 2022 12:32:19 +0200
Message-Id: <20220217103221.10405-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220217103221.10405-1-ville.syrjala@linux.intel.com>
References: <20220217103221.10405-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/4] drm/i915: Dump hw.enable and pipe_mode
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

Include hw.enable and pipe_mode in the crtc debugfs state dump.
These are fairly fundemental to the operation of the driver
so not seeing them leaves us in the dark.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_debugfs.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index f1d78b1c7702..1740f24446bb 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -923,9 +923,12 @@ static void intel_crtc_info(struct seq_file *m, struct intel_crtc *crtc)
 		   yesno(crtc_state->uapi.active),
 		   DRM_MODE_ARG(&crtc_state->uapi.mode));
 
-	seq_printf(m, "\thw: active=%s, adjusted_mode=" DRM_MODE_FMT "\n",
-		   yesno(crtc_state->hw.active),
+	seq_printf(m, "\thw: enable=%s, active=%s\n",
+		   yesno(crtc_state->hw.enable), yesno(crtc_state->hw.active));
+	seq_printf(m, "\tadjusted_mode=" DRM_MODE_FMT "\n",
 		   DRM_MODE_ARG(&crtc_state->hw.adjusted_mode));
+	seq_printf(m, "\tpipe__mode=" DRM_MODE_FMT "\n",
+		   DRM_MODE_ARG(&crtc_state->hw.pipe_mode));
 
 	seq_printf(m, "\tpipe src size=%dx%d, dither=%s, bpp=%d\n",
 		   crtc_state->pipe_src_w, crtc_state->pipe_src_h,
-- 
2.34.1

