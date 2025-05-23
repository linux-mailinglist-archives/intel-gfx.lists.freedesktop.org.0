Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68F2BAC1D2D
	for <lists+intel-gfx@lfdr.de>; Fri, 23 May 2025 08:39:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2D5C10E1ED;
	Fri, 23 May 2025 06:39:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bTGvsVSn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5485510E7A9;
 Fri, 23 May 2025 06:39:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747982363; x=1779518363;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ARJQA1O6ERCo7bZvqbaD/zxeFlXJZ7fYfz+pjBdnUA8=;
 b=bTGvsVSnff3wxvwsHcou1GVKQCHPX5HCQ1MmpJu2RbhsBxePGB5UvUe+
 ou9JokJAzF6sojAKb4R5gQmiPhUVYpsWeBHbboU6/bF6HI9McRmpLaSaO
 l3MmI8eBq7PBUYC9SrFKmLxkWWNn9HR6nySbXsT6z0F7pLzz4YsxsgZAM
 +bUcrAFSxsLctqm76D2n0e6m3qP+EFBSnTD0sw43U5Uz09aUs7oiQEBN5
 /aTI+/ug5FthRbIsYWKEG/apEasq1wr1542Q9mz0CTY3B7TGnyd2kQyDl
 yB8mtbGmjLVVAx8/pf6q9EYBYUBgFx4p+zsLIR5x2yyjZihbtkLXCZKbz g==;
X-CSE-ConnectionGUID: 5kdeY/mXTCqqYas4tSntgQ==
X-CSE-MsgGUID: GBRtjLMUTBeR7s7F2G0wyw==
X-IronPort-AV: E=McAfee;i="6700,10204,11441"; a="67592290"
X-IronPort-AV: E=Sophos;i="6.15,308,1739865600"; d="scan'208";a="67592290"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2025 23:39:23 -0700
X-CSE-ConnectionGUID: Jrt5W+x+QyWb1QkQJ+Nifw==
X-CSE-MsgGUID: Cxz8IYIkTJymDk9z0/WygA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,308,1739865600"; d="scan'208";a="171985346"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa001.fm.intel.com with ESMTP; 22 May 2025 23:39:21 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, uma.shankar@intel.com,
 animesh.manna@intel.com, chaitanya.kumar.borah@intel.com
Subject: [v8 10/11] drm/i915/color: Do not pre-load LUTs with DB registers
Date: Fri, 23 May 2025 11:50:40 +0530
Message-Id: <20250523062041.166468-11-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250523062041.166468-1-chaitanya.kumar.borah@intel.com>
References: <20250523062041.166468-1-chaitanya.kumar.borah@intel.com>
MIME-Version: 1.0
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

Since Double Buffered LUT registers can be written in active region
no need to preload them.

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index ac00b86798fb..671db6926e4c 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -2041,9 +2041,13 @@ void intel_color_wait_commit(const struct intel_crtc_state *crtc_state)
 static bool intel_can_preload_luts(struct intel_atomic_state *state,
 				   struct intel_crtc *crtc)
 {
+	struct intel_display *display = to_intel_display(state);
 	const struct intel_crtc_state *old_crtc_state =
 		intel_atomic_get_old_crtc_state(state, crtc);
 
+	if (HAS_DOUBLE_BUFFERED_LUT(display))
+		return false;
+
 	return !old_crtc_state->post_csc_lut &&
 		!old_crtc_state->pre_csc_lut;
 }
-- 
2.25.1

