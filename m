Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C43766D1DC4
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Mar 2023 12:18:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15D5F10F1B3;
	Fri, 31 Mar 2023 10:18:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A921F10F1AF
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Mar 2023 10:18:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680257903; x=1711793903;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tGCgU6uakQ30lwICocOkztLRXhKzRg6Xs1oVclzOgkU=;
 b=BCH4+006huDvdD+D/jMuPqjMNZ/ob2SlItd01YPpPVP7U+tAoFULaUA5
 S7I4yQh1y2BWVdhX3c8gDnl+vNVC6qjRRq1eDmPbEfY9BeEO1FBXXowk7
 M2fMWrsMVOBGQ5Ze2izKumBs2mqOZ/CJ/SpwIVrPNRzt9fzn4TJNKBVLT
 P2qOuO4CNt9UbenUksOMAm25pMaFpHdmWlK4677439ZFo8GyG+c9Wpnxs
 2AeH8LNyU2aIsdV/spucBBVMDn2qBq32CrfhEP8RGrtnxbXdw4kmncuf/
 T+iVdagdzBswK8McT/pJvCGogR4cB6LnTSRhWKBSE/Gdor6q2cghJFz5A g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="340141731"
X-IronPort-AV: E=Sophos;i="5.98,307,1673942400"; d="scan'208";a="340141731"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2023 03:18:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="796068324"
X-IronPort-AV: E=Sophos;i="5.98,307,1673942400"; d="scan'208";a="796068324"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2023 03:18:21 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 31 Mar 2023 15:46:02 +0530
Message-Id: <20230331101613.936776-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230331101613.936776-1-ankit.k.nautiyal@intel.com>
References: <20230331101613.936776-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 02/13] drm/i915/display: Add new member in
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
index b1ade7e40f37..fd1eca5addaa 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1742,6 +1742,7 @@ struct intel_dp {
 		int pcon_max_frl_bw;
 		u8 max_bpc;
 		bool ycbcr_444_to_420;
+		bool ycbcr420_passthrough;
 		bool rgb_to_ycbcr;
 	} dfp;
 
-- 
2.25.1

