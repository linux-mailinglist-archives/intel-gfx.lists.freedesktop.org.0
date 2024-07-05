Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF22D928AFD
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jul 2024 16:53:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6945510EBEE;
	Fri,  5 Jul 2024 14:53:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PlvoeffT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 144B310EBED;
 Fri,  5 Jul 2024 14:53:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720191221; x=1751727221;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MK2/Ewk+7casVMN2TJJmH8L4saZP327/KtxoHiD2DBU=;
 b=PlvoeffT6FKiFiQkv+3ldl5R/I6iRtY7iNhUBAJ5Bjkc+laXojt5nRJR
 BxcLPpcgP3onyourEXDSC+bgY7vm48SEb3H1H8xYk4iiRaxoGm1kmiZL+
 H5tunWxHoafwQvUuWV7TGEyu0eiP6GycNDDmVxZtNpwNjel0aZXDtb5G+
 GoQzeY8RqA/uZsRQchRlbBaFYC6KWsvU5s5aEE3ZYGxoihbZStSXxuqdL
 dYznGCOVxgAzE+nVL9SagIxIjTgR7yMjKql2wHffgmqsR7korEhp/Sg0M
 RvIn8jibBP1t0tbtK8ekVX6aqxr6Pkdqo2nsc3i9g8LCbkfUXeZhsCuAZ Q==;
X-CSE-ConnectionGUID: QlhR52iRRnKAPFCF1439AQ==
X-CSE-MsgGUID: qDbd2VhIRB235kh+LzpLrQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11123"; a="17204786"
X-IronPort-AV: E=Sophos;i="6.09,185,1716274800"; d="scan'208";a="17204786"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2024 07:53:41 -0700
X-CSE-ConnectionGUID: PZIbbD78Tw6Tm/vJTeR2kw==
X-CSE-MsgGUID: j3efbwMoQhGVX6ziQOLBBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,185,1716274800"; d="scan'208";a="46864566"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 05 Jul 2024 07:53:38 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 05 Jul 2024 17:53:38 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 15/20] drm/xe/fbdev: Fix BIOS FB vs.s stolen size checke
Date: Fri,  5 Jul 2024 17:52:49 +0300
Message-ID: <20240705145254.3355-16-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240705145254.3355-1-ville.syrjala@linux.intel.com>
References: <20240705145254.3355-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

Looks like stolen->size is in bytes, not pages. Remove the
bogus PAGE_SHIFT stuff.

Also for some rnadom reason xe rejects the FB if it takes up
exactly half of stolen, whereas i915 allows it to be used
in that case. Adjust xe to follow the i915 rule for consistency.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/xe/display/xe_plane_initial.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/xe/display/xe_plane_initial.c b/drivers/gpu/drm/xe/display/xe_plane_initial.c
index 5eccd6abb3ef..21965cc8a9ca 100644
--- a/drivers/gpu/drm/xe/display/xe_plane_initial.c
+++ b/drivers/gpu/drm/xe/display/xe_plane_initial.c
@@ -110,7 +110,7 @@ initial_plane_bo(struct xe_device *xe,
 		 * features.
 		 */
 		if (IS_ENABLED(CONFIG_FRAMEBUFFER_CONSOLE) &&
-		    plane_config->size * 2 >> PAGE_SHIFT >= stolen->size)
+		    plane_config->size * 2 > stolen->size)
 			return NULL;
 	}
 
-- 
2.44.2

