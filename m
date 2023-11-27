Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 87EEB7FA373
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Nov 2023 15:50:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D42110E2BF;
	Mon, 27 Nov 2023 14:50:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42FD310E08E
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Nov 2023 14:50:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701096644; x=1732632644;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NlhD/p4qCjX27I5+B98gT/IRVKyfRoyBE+xdc9FQJHQ=;
 b=XV2SE1+4jk4JWZjv6cGySePxhfGkvrbBvp/5rdktUNZRRzl5zjFI0d9S
 TMWoTZ6WKrYtDOzveL7UvNJ1mQZ5aqG86Iktt7T/oQAqIDc0yngSTempH
 HowBu5z6Fkdsr0Ab7gtT1Ep1h80pDO36lKbxgdH2uTflog97vcOBP68zG
 ixhS8Tik5h2IgwT8wiqu94lwqo5isEld8xry3v+RpR1mVdClTrf9zn9Cq
 23iR9V9pcFoIgiOwH7hixOeE7lSYhTkADiYR0ehmzrCTquaht/qPw8rf9
 UEUEVHJ/9psf11282j2hFGd9btovNH+kQxdwW4uZCjMVPJk3Gq7u/HqOr w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="5968525"
X-IronPort-AV: E=Sophos;i="6.04,231,1695711600"; 
   d="scan'208";a="5968525"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2023 06:50:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="761614815"
X-IronPort-AV: E=Sophos;i="6.04,231,1695711600"; d="scan'208";a="761614815"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 27 Nov 2023 06:50:32 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 27 Nov 2023 16:50:31 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 Nov 2023 16:50:26 +0200
Message-ID: <20231127145028.4899-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231127145028.4899-1-ville.syrjala@linux.intel.com>
References: <20231127145028.4899-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/4] drm/i915/mst: Fix .mode_valid_ctx() return
 values
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

.mode_valid_ctx() returns an errno, not the mode status. Fix
the code to do the right thing.

Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Fixes: d51f25eb479a ("drm/i915: Add DSC support to MST path")
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 0514f825baf5..0680a42f7d2a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1366,11 +1366,15 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 	 * Big joiner configuration needs DSC for TGL which is not true for
 	 * XE_LPD where uncompressed joiner is supported.
 	 */
-	if (DISPLAY_VER(dev_priv) < 13 && bigjoiner && !dsc)
-		return MODE_CLOCK_HIGH;
+	if (DISPLAY_VER(dev_priv) < 13 && bigjoiner && !dsc) {
+		*status = MODE_CLOCK_HIGH;
+		return 0;
+	}
 
-	if (mode_rate > max_rate && !dsc)
-		return MODE_CLOCK_HIGH;
+	if (mode_rate > max_rate && !dsc) {
+		*status = MODE_CLOCK_HIGH;
+		return 0;
+	}
 
 	*status = intel_mode_valid_max_plane_size(dev_priv, mode, false);
 	return 0;
-- 
2.41.0

