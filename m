Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B1B1901BD4
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2024 09:22:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 589CE10E317;
	Mon, 10 Jun 2024 07:22:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kX9Nhg2B";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E249310E2F6
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2024 07:22:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718004122; x=1749540122;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=li0C77XkWb8xa9nVzgTW/glnSDhUrBb/CRniCw7QbV0=;
 b=kX9Nhg2BdIyxCdnCVzG8ma3fEBiilQNg3pkXewUGTh86qzaTBAeBapns
 5Pm/nA9ZccOWv7FTXGaVO7Mb7/Lse3o1PKim5Q6hKy/N4OVG1WWUVYkhM
 9H096B8JHFlByeqT1LAjz2+Vys0bM4ufFBvdiYaRvjrUWM0N8NUQid50A
 i8K8xO4jC2Yw0kXxv0zp16LHH+H3DgoW9wLXNklIy9HIdKZM6B1vYTrm+
 ncJMmKvG1dthG0iq191IhnTOyyDBsfgcWIvTkFxcII4ZPmc4hS2QdUbSP
 ItHnh2nxxpxcsUVMSOk1Lpv7c5moTY9U887X30AvNApNC/LWrDFmDGSfb Q==;
X-CSE-ConnectionGUID: pCdMWYQmQr6luC8n6sQLRA==
X-CSE-MsgGUID: 65zpUYx/RYeb4h3DUcyHOg==
X-IronPort-AV: E=McAfee;i="6600,9927,11098"; a="14526404"
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="14526404"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 00:22:01 -0700
X-CSE-ConnectionGUID: P3PVdzQUSdKZuHlT51hJ8A==
X-CSE-MsgGUID: ojtab4GyRCGV5cg7BUm4aw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="43407636"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa003.fm.intel.com with ESMTP; 10 Jun 2024 00:22:01 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com
Subject: [PATCH v16 5/9] drm/dp: Add refresh rate divider to struct
 representing AS SDP
Date: Mon, 10 Jun 2024 12:51:58 +0530
Message-ID: <20240610072203.24956-6-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240610072203.24956-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20240610072203.24956-1-mitulkumar.ajitkumar.golani@intel.com>
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

--v2:
- Update commit header and send patch to dri-devel.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
Acked-by: Maxime Ripard <mripard@kernel.org>
---
 include/drm/display/drm_dp_helper.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/drm/display/drm_dp_helper.h b/include/drm/display/drm_dp_helper.h
index 8defcc399f42..ea03e1dd26ba 100644
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
2.45.2

