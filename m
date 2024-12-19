Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AF349F7C06
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2024 14:08:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F3CA10ECE9;
	Thu, 19 Dec 2024 13:08:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VX9hHmew";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6829110ECE9
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2024 13:08:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734613724; x=1766149724;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=zztPfKfn12sK1Kz/sJgkNa0hJlqqma5LVD3HcCKrcaI=;
 b=VX9hHmew0Q3S7JWpA4qi8yGSGJf6pwbtsvNXCpiqWrNjNBraWO+Pmvq0
 XIAKqsOYCJQh+99luLStCs0nzLHVYTtYeQc29whIEBb4DGXbpyUfNs/PZ
 +laaosvyFnXHPcs9ZQxikYcYv/xqKzspj9wUGa4oVHCloDFqzAnX3hpUD
 li7BI5820RVf4YTuEW6nWpASHyHsqjWGChDcBGWw1KRvQYhQPQwUP4zA8
 H122J/S0RSg6d3NeUqwWjksLpTcnKma/yTYps3abq4+4mQxF0yj+tpq/9
 ltjgMNs3E02XI35p0B1P2hlrfcOG+iJLh8RulB/24ns0SNkknyefzdYIp Q==;
X-CSE-ConnectionGUID: vxQjDgGWTICv83sjmKHUuQ==
X-CSE-MsgGUID: WAa2HYQ1RueZ8GpRPxJWXg==
X-IronPort-AV: E=McAfee;i="6700,10204,11290"; a="38798140"
X-IronPort-AV: E=Sophos;i="6.12,247,1728975600"; d="scan'208";a="38798140"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2024 05:08:44 -0800
X-CSE-ConnectionGUID: dVycB6O1SVa/xz3UA6LiPA==
X-CSE-MsgGUID: yu/jR0HTRUCYibWE8U9Ghw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,247,1728975600"; d="scan'208";a="98403315"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 19 Dec 2024 05:08:42 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 19 Dec 2024 15:08:41 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 5/8] drm/i915/scaler: Nuke redundant code
Date: Thu, 19 Dec 2024 15:08:24 +0200
Message-ID: <20241219130827.22830-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241219130827.22830-1-ville.syrjala@linux.intel.com>
References: <20241219130827.22830-1-ville.syrjala@linux.intel.com>
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

The tgl+ and mtl+ numbers in skl_scaler_max_dst_size() are
identical. Combine them to a single piece of code.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_scaler.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index 0bc82a047510..cbc71e44fcbb 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -119,10 +119,7 @@ static void skl_scaler_max_dst_size(struct intel_crtc *crtc,
 {
 	struct intel_display *display = to_intel_display(crtc);
 
-	if (DISPLAY_VER(display) >= 14) {
-		*max_w = 8192;
-		*max_h = 8192;
-	} else if (DISPLAY_VER(display) >= 12) {
+	if (DISPLAY_VER(display) >= 12) {
 		*max_w = 8192;
 		*max_h = 8192;
 	} else if (DISPLAY_VER(display) == 11) {
-- 
2.45.2

