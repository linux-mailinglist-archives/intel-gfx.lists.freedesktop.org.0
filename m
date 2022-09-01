Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AD6B5A8DE1
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Sep 2022 08:01:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CED010E5A5;
	Thu,  1 Sep 2022 06:01:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3B0310E59C
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Sep 2022 06:01:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662012082; x=1693548082;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=M+iNAiSHD0jFR5WGKnWiyzl6kewUQK5M50bkGdQdXuw=;
 b=iZIanXNXctMesCWA+hFMJQXCoNUHQiylB5AHm081f9h4EEdM2AVUnhoj
 kMWE3P/H1i0VTq6gz9ldDPZ4IxkcZSPrnID4x9ZrXOv3ZWlzuDVLSwzti
 WK5zaqRpK17q60DWa10I0LQUCBejbLHn4JmKIp6DOrGOip6860k84WDk0
 2zTr7I6iDi7SPYNwhuujldmp+MxLv0dA6MtKqOjbV46FskgIcKbA/jpfq
 eT5KZixLWTVXPjfrRfdqkJFcVd9KRom3KXIAs2APVvUzMzQP4B95vTd0P
 dFccxUUXBwwnZaTg37RQnMDHFjatxciMtD+k/SeAyQ8HvHo503W9WR79W A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10456"; a="381920229"
X-IronPort-AV: E=Sophos;i="5.93,280,1654585200"; d="scan'208";a="381920229"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2022 23:01:22 -0700
X-IronPort-AV: E=Sophos;i="5.93,280,1654585200"; d="scan'208";a="754685631"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2022 23:01:20 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  1 Sep 2022 11:30:54 +0530
Message-Id: <20220901060101.1000290-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220901060101.1000290-1-ankit.k.nautiyal@intel.com>
References: <20220901060101.1000290-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/9] drm/i915/dp: Add RGB to YCBCR conversion
 case in is_dp_ycbcr420 helper
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

Add the case for RGB444 to YCBCR444 conversion required by the DFP
in the helper to check if output format is YCBCR420.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index e9e5e4606d9c..a05b8b86e5c8 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1197,6 +1197,9 @@ static bool intel_dp_is_ycbcr420(struct intel_dp *intel_dp,
 {
 	return crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
 		(crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR444 &&
+		 intel_dp->dfp.ycbcr_444_to_420) ||
+		(crtc_state->output_format == INTEL_OUTPUT_FORMAT_RGB &&
+		 intel_dp->dfp.rgb_to_ycbcr &&
 		 intel_dp->dfp.ycbcr_444_to_420);
 }
 
-- 
2.25.1

