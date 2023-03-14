Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D5316B9108
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Mar 2023 12:06:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1ACBE10E77D;
	Tue, 14 Mar 2023 11:06:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3428E10E77D
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Mar 2023 11:06:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678792002; x=1710328002;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Et1BzJKj0txmLmdinV6/nnXdju5reOswZUBB2944fIc=;
 b=TnOAl1bLTDh/JAtd7OVZ01XDYE8IWaupfhyoWPZ6gBq3SAkdniV/8jCz
 nMmU4gwx41mibSDUG8SHvT/5iCu8BzNwPVgiwxHCjrGJpHmPm2USF2Yw1
 YzIuUfHIS69jmmectr6KXwLwV/AzkKuNDn+2pldGxI+QtW+Puc94c0O/f
 +G4RAjfy8AXm9fJ75Fu/RExmwOWVakkReEZHjy8dOj+4oWviogZIukdai
 Q24CGOsBlPx2OIsdQeKbxsxNHRdluovJftPiJi61vtrqg5Zk17J81b5/F
 FA5z1AR883m1lPD9v+saDJ4HNvYvvoWPV4+rS3tUhrynggNvRxijmVYRw Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="423664500"
X-IronPort-AV: E=Sophos;i="5.98,259,1673942400"; d="scan'208";a="423664500"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2023 04:06:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="924872933"
X-IronPort-AV: E=Sophos;i="5.98,259,1673942400"; d="scan'208";a="924872933"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2023 04:06:40 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Mar 2023 16:34:06 +0530
Message-Id: <20230314110415.2882484-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230314110415.2882484-1-ankit.k.nautiyal@intel.com>
References: <20230314110415.2882484-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v11 02/11] drm/i915/display: Add new member in
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
index c9d1863d2765..1b65f062b001 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1736,6 +1736,7 @@ struct intel_dp {
 		int pcon_max_frl_bw;
 		u8 max_bpc;
 		bool ycbcr_444_to_420;
+		bool ycbcr420_passthrough;
 		bool rgb_to_ycbcr;
 	} dfp;
 
-- 
2.25.1

