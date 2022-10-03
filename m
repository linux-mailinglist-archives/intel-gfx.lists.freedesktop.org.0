Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E64315F2FB6
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Oct 2022 13:33:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4E1F10E333;
	Mon,  3 Oct 2022 11:33:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 394E710E326
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Oct 2022 11:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664796802; x=1696332802;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Esyvku5Wvj5Nc0rcwSG/YxeYzL/reEgvmWSYw4q8HTk=;
 b=Zf5/SncByOlRNUbym1lWAZda4P1pxTP/uwnXh6Ne/isMdcQczNbbR945
 7CYcxMLx8zKfVRAz73vuSnSaWT+7DHCM+HrKRBw3Hqyct9g2/r2NaWOCc
 OAQ0h9V7xtWaaXcv+/1Y8cTtkC45Dlaf7JvQQU6A6npWX8HAIVy4VPyXL
 bfsLnL3CD0VW2lhqyBKmx3ei2KEmpRYEoRqbLQjO0T4A1lmM08wZds4ZZ
 HDIUfw2c6RXy6vr0+Ng4GDlAFWmVt8f4gX+MUugYMcJQf0EZinGg0KoJr
 wl0fgNBZYMBMjkG8dzGI8djfKv6E6esNIuMhI1H/SP52iaSwKUV0SYJet w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10488"; a="364455139"
X-IronPort-AV: E=Sophos;i="5.93,365,1654585200"; d="scan'208";a="364455139"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 04:33:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10488"; a="618701101"
X-IronPort-AV: E=Sophos;i="5.93,365,1654585200"; d="scan'208";a="618701101"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga007.jf.intel.com with SMTP; 03 Oct 2022 04:33:04 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 03 Oct 2022 14:33:03 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  3 Oct 2022 14:32:47 +0300
Message-Id: <20221003113249.16213-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221003113249.16213-1-ville.syrjala@linux.intel.com>
References: <20221003113249.16213-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 4/6] drm/i915: Fix locking in DRRS debugfs
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

