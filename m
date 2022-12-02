Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A216B640421
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Dec 2022 11:09:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8E5D10E6C1;
	Fri,  2 Dec 2022 10:09:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3964C10E6C1
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Dec 2022 10:09:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669975780; x=1701511780;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/JXIBGB0hHigD/zOX+ikR9vi+53WGFWPQSX/OEVYYLc=;
 b=eAci5J0QGFQtDZM4QvPrTl3RgirvQ3ZBNe8k7Wdrg21VnNm6sB/WeHGC
 8XIqFErIZFbieTBJoU6YtHn7OYEKT+xkMD9U3SuYIHgQ8+ZZeVFOsVgXn
 kj4T5RkE3FzlF+M0AQbkukRrlUXYcqP0nR1vdK6PxPtzNZYzUSybWND0d
 p8y9Gcb192nF4F54w8AoTrSRxToClkqIwW+6gLq3Sm2+AS6mbywSYghZt
 ag1kcpiKehQZ6NBc0rpI790VQ7lGvmZwbC4Oevt9PZYan51K9u1mXO7/u
 GxBDC0AIt8WdJreY2DtA8r0qqjqDQjXUIS8M631KIgYUMuweb31dwr0nn w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="313564569"
X-IronPort-AV: E=Sophos;i="5.96,212,1665471600"; d="scan'208";a="313564569"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2022 02:09:39 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="647115746"
X-IronPort-AV: E=Sophos;i="5.96,212,1665471600"; d="scan'208";a="647115746"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2022 02:09:33 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Dec 2022 15:40:16 +0530
Message-Id: <20221202101028.803630-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221202101028.803630-1-ankit.k.nautiyal@intel.com>
References: <20221202101028.803630-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 02/14] drm/i915/display: Add new member in
 intel_dp to store ycbcr420 passthrough cap
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

New member to store the YCBCR20 Pass through capability of the DP sink.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 136866615223..212f4aa8fba1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1730,6 +1730,7 @@ struct intel_dp {
 		int pcon_max_frl_bw;
 		u8 max_bpc;
 		bool ycbcr_444_to_420;
+		bool ycbcr420_passthrough;
 		bool rgb_to_ycbcr;
 	} dfp;
 
-- 
2.25.1

