Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C91E5F1E95
	for <lists+intel-gfx@lfdr.de>; Sat,  1 Oct 2022 20:25:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F9DE10E4CE;
	Sat,  1 Oct 2022 18:25:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 634FE10E4C7
 for <intel-gfx@lists.freedesktop.org>; Sat,  1 Oct 2022 18:25:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664648714; x=1696184714;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/7pc9U9FFm105fiuUYi7eQoX6bec72BbiohLaRP8KRc=;
 b=Od7c+4oQunR1X4yXe9zdpRMP8z7c6N+U51Bvk/qK1ti9YGg6CytXRs45
 6EPW3DD0yNxIaV8zxIMnOdxQe2GXhtV+mZ7vHSjQ+SzTveCg8LWlrIMCn
 jOoydmP7sL1j4rmbd2ieSKcoVRFXzX6E22DIgTfSAdoRjMe9fWGSKMOKi
 MG6qmxuZpucfypqBLe7zWGUT8Wd50CPNg32U+kmNlG/Cti/W219Cc+FIj
 5JvEfdhURlqTLgMKg7uOtmoRb9ZDwy5BuxQdGPnPnoy3AMFBWwfdlcu/Z
 KaOBaUXCUqRO6XeLxhVXkaT0bW+cjQrERqxnB2OINxSXBHfHNNfKXM3cL w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10487"; a="303893480"
X-IronPort-AV: E=Sophos;i="5.93,361,1654585200"; d="scan'208";a="303893480"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2022 11:25:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10487"; a="685655041"
X-IronPort-AV: E=Sophos;i="5.93,361,1654585200"; d="scan'208";a="685655041"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga008.fm.intel.com with SMTP; 01 Oct 2022 11:25:12 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 01 Oct 2022 21:25:11 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  1 Oct 2022 21:25:03 +0300
Message-Id: <20221001182505.3675-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221001182505.3675-1-ville.syrjala@linux.intel.com>
References: <20221001182505.3675-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/4] drm/i915: Make the DRRS debugfs contents
 more consistent
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

The stuff in the DRRS debugs is currently a hodgepode mix
of camelcase, lowercase, spaces, undescores, you name it.
Convert over to a reasonably common style.

Also move the busy bits thing to be the last sine it's
generally the least interesting thing in there.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_drrs.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index 030a3566538a..3639d8aa71c9 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -325,19 +325,19 @@ static int intel_drrs_debugfs_status_show(struct seq_file *m, void *unused)
 		mutex_lock(&crtc->drrs.mutex);
 
 		/* DRRS Supported */
-		seq_printf(m, "\tDRRS Enabled: %s\n",
+		seq_printf(m, "\tDRRS enabled: %s\n",
 			   str_yes_no(crtc_state->has_drrs));
 
-		seq_printf(m, "\tDRRS Active: %s\n",
+		seq_printf(m, "\tDRRS active: %s\n",
 			   str_yes_no(intel_drrs_is_active(crtc)));
 
-		seq_printf(m, "\tBusy_frontbuffer_bits: 0x%X\n",
-			   crtc->drrs.busy_frontbuffer_bits);
-
 		seq_printf(m, "\tDRRS refresh rate: %s\n",
 			   crtc->drrs.refresh_rate == DRRS_REFRESH_RATE_LOW ?
 			   "low" : "high");
 
+		seq_printf(m, "\tDRRS busy frontbuffer bits: 0x%X\n",
+			   crtc->drrs.busy_frontbuffer_bits);
+
 		mutex_unlock(&crtc->drrs.mutex);
 	}
 
-- 
2.35.1

