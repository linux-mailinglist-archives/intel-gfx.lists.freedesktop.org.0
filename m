Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42BA55EDA52
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Sep 2022 12:45:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BA5410E421;
	Wed, 28 Sep 2022 10:44:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D45ED10E432
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Sep 2022 10:44:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664361891; x=1695897891;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=48Dctm1U23RUEZZ6NbZsjXWj8XB49KiQgu+HTX8sY3U=;
 b=ATwMrl2MuHKRnfn/04AQ3/RWHrbApIzVKapGoDeR+Z1qTqfUlCXVcpY7
 8Odn35bprEEXWw0RGsQ03n9nKgcGY5qVinMvG0Yqs7R2gEUqsRVaB61lW
 aJawPdVM1tBjRoAj/8ql3qiQfwb3tn9rO47PleKxzFZlAukHxpyVJvbtV
 EIH78DmgK5gMoTQ/5Zh267DfSHUTrfyJRWcf7Fp1V+MPjNC5kbDgylqMS
 HDo3OHnQUE1JC9mCIsQ8a4la9PeKmQy1uzZTbCX6Jh9N6MZFXeTRQckZh
 gcNl6MsJ3oUSZgabwt76oqgSv9ii94PogmzdlkQQ5e1Kv73Ld+TbxCTHg Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="387851415"
X-IronPort-AV: E=Sophos;i="5.93,351,1654585200"; d="scan'208";a="387851415"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2022 03:44:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="624106470"
X-IronPort-AV: E=Sophos;i="5.93,351,1654585200"; d="scan'208";a="624106470"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga007.fm.intel.com with SMTP; 28 Sep 2022 03:44:40 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 28 Sep 2022 13:44:40 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 28 Sep 2022 13:44:32 +0300
Message-Id: <20220928104434.29586-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220928104434.29586-1-ville.syrjala@linux.intel.com>
References: <20220928104434.29586-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/4] drm/i915: Make the DRRS debugfs contents
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The stuff in the DRRS debugs is currently a hodgepode mix
of camelcase, lowercase, spaces, undescores, you name it.
Convert over to a reasonably common style.

Also move the busy bits thing to be the last sine it's
generally the least interesting thing in there.

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

