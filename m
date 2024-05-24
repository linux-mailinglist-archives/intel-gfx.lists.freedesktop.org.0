Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 075098CE42D
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2024 12:30:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAA1A10E471;
	Fri, 24 May 2024 10:30:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FdklYH7d";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74F2B10E8F3
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2024 10:30:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716546626; x=1748082626;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zglgiBcXVpHKdabcWZCVGtE3xZawWt4/rOGtkIUxA0E=;
 b=FdklYH7dnFhzSjRiOCoxV/9/lgzWOAt9aUiytTE6fDB2SD/N03UDUe7g
 NybE7tZkT/vjQIeaJjIvUSdbqVT6BwDMlwEF+2vbtaiDwFlipPSqS8P+b
 NN0NeL+HCAhoGT9uJKDJBVBa/5F/o8mFOr6PZndVX8u/pVJllHhEGy6O0
 38rP4coc+5tPLC79KrpaudD77SQzeYQpGHez7CKs1CW1Pj6SjftG9s4+3
 iEB0b5QNtqPQtX7XGHJsFnme1QO/A9u6ivYpznY3KHJYXx/xZQpLPsTDI
 q4j3Xkrk3QoEocnPjR7e19+JlTUQvQwHp/U4euPX9NraRUCOtg/ZUjGWD g==;
X-CSE-ConnectionGUID: 6AOijD4WQMupXhYX0fDRUw==
X-CSE-MsgGUID: lK9yl0rhQymz9lZyXRe2Tw==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="15862727"
X-IronPort-AV: E=Sophos;i="6.08,185,1712646000"; d="scan'208";a="15862727"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2024 03:30:19 -0700
X-CSE-ConnectionGUID: MrgQSzubTkOO0LQKFWZtbQ==
X-CSE-MsgGUID: uRXBitbrRaOeMflO7xS7zg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,185,1712646000"; d="scan'208";a="71385678"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa001.jf.intel.com with ESMTP; 24 May 2024 03:30:18 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com
Subject: [PATCH v9 4/8] Add refresh rate divider to struct representing AS SDP
Date: Fri, 24 May 2024 15:54:28 +0530
Message-Id: <20240524102432.2499104-5-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240524102432.2499104-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20240524102432.2499104-1-mitulkumar.ajitkumar.golani@intel.com>
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

Add target_rr_divider to structure representing AS SDP.
It is valid only in FAVT mode, sink device ignores the bit in AVT
mode.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 include/drm/display/drm_dp_helper.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/drm/display/drm_dp_helper.h b/include/drm/display/drm_dp_helper.h
index 8bed890eec2c..393dbf8cf6ab 100644
--- a/include/drm/display/drm_dp_helper.h
+++ b/include/drm/display/drm_dp_helper.h
@@ -122,6 +122,7 @@ struct drm_dp_as_sdp {
 	int target_rr;
 	int duration_incr_ms;
 	int duration_decr_ms;
+	bool target_rr_divider;
 	enum operation_mode mode;
 };
 
-- 
2.25.1

