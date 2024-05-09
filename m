Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D2598C0C3E
	for <lists+intel-gfx@lfdr.de>; Thu,  9 May 2024 10:04:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 155AB10E412;
	Thu,  9 May 2024 08:04:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n13dgapQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 716B110E249
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 May 2024 08:04:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715241872; x=1746777872;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LU9D5gx3Vuq+0yRvMwGS7PpyVpln2zFSGHF0e9A78HM=;
 b=n13dgapQsXSxY4r4t3hPzxABQNyPSoBHROIbrX1WRNttZqXx1sc/jfao
 8oX+wnKuxUkmPNpQLtjJVd7Q1DtwXjEcuXeGLSjVmsd42uB4YGQ2uS7Pt
 nq68JQ7VaBetnsQ7r8rUpdqc0X2HPnL4ctYnGErkqWsKErYOBvWHflAgr
 R0jS6+saIfkbJq7fnPXVpUIJIrBY4/klAd17Ebkz1dqCkfh36DkRfDdSf
 N4lWQfNBnaGWmQeyyEEzzLy0ocloLBENgZ2xCxXJt4FA3nHBuOToxli57
 w3sJreRP7EGOkoTEUsa4lmMysoJHwJd3PfZoU1MFPQGCgyeK02GuyUkw6 Q==;
X-CSE-ConnectionGUID: DHQ2trknTteQoc+7DZnpug==
X-CSE-MsgGUID: NhjPeSFVSQKdtyCRGk/x9w==
X-IronPort-AV: E=McAfee;i="6600,9927,11067"; a="33656120"
X-IronPort-AV: E=Sophos;i="6.08,147,1712646000"; d="scan'208";a="33656120"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2024 01:04:31 -0700
X-CSE-ConnectionGUID: Y6g/O3+MRb21gz+9nmfsUg==
X-CSE-MsgGUID: 7FtUkX71R8Wt8z41ryyl0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,147,1712646000"; d="scan'208";a="29043544"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa010.jf.intel.com with ESMTP; 09 May 2024 01:04:31 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com,
	jani.nikula@intel.com
Subject: [PATCH v8 4/7] Add refresh rate divider to struct representing AS SDP
Date: Thu,  9 May 2024 13:28:30 +0530
Message-Id: <20240509075833.1858363-5-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240509075833.1858363-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20240509075833.1858363-1-mitulkumar.ajitkumar.golani@intel.com>
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

