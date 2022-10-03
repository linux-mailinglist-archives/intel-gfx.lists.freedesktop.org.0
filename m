Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F389E5F2FB1
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Oct 2022 13:33:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F77510E334;
	Mon,  3 Oct 2022 11:33:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F381410E326
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Oct 2022 11:33:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664796783; x=1696332783;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/7pc9U9FFm105fiuUYi7eQoX6bec72BbiohLaRP8KRc=;
 b=U/yb1d+orctPWVboCGX4znS1R3B7mslSG0sZlgb93Q2qq8P0L4mWlsfT
 qisCy/yx3coCc8/4JD/9HWn83jmglaIGndL6Zchc1c2pNFwaAyJJQhTEa
 uX84uatmsIIU4CK29COJNOWoRWD+WxIL5g2JmxHemd2v7jpwDvI041h0T
 F+wqQ98k7JVnqd/TG3h3VWMENeJI3D/ATpNT7ivUd+00g23tXqDXnybJX
 H9KrQh1bYe8tOYqpjtlYW3dp6MXdNMpQZVeKerbRSEYurzbOjVoaMkpK1
 Tiycd5nk/j607Na6beL51+v7qi7C1Cxbel8u7l0XVIr4C9mWgPw9IYKpj g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10488"; a="282981767"
X-IronPort-AV: E=Sophos;i="5.93,365,1654585200"; d="scan'208";a="282981767"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 04:33:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10488"; a="618701067"
X-IronPort-AV: E=Sophos;i="5.93,365,1654585200"; d="scan'208";a="618701067"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga007.jf.intel.com with SMTP; 03 Oct 2022 04:32:56 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 03 Oct 2022 14:32:55 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  3 Oct 2022 14:32:45 +0300
Message-Id: <20221003113249.16213-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221003113249.16213-1-ville.syrjala@linux.intel.com>
References: <20221003113249.16213-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 2/6] drm/i915: Make the DRRS debugfs contents
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

