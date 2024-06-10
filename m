Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77105901973
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2024 04:58:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC7D210E308;
	Mon, 10 Jun 2024 02:58:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MpkDN0ZF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D05CF10E307
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2024 02:58:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717988328; x=1749524328;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8ECIKPVtNW2V/IiMKyeqfXaOlA3F25TiN7NfW6xQAuw=;
 b=MpkDN0ZF+PI0o7Pv56dmITM6G2vAVPGtqRBj/eepWknY8saqzDU+SzKQ
 Hhi5gDsqJ3KO+KbnqPANRgrczZYmYyxMwrmVkuO5/LBz5PFcG2b/Y4FDP
 SYIkMnr7KMENON7pkMoGPSmHzSG0CUBE35/JhuHYjbLlqgT4fykTS4uaw
 4RPp6GSB4dW/qNeYCH0j8iMMO9EBJ5qjEPJaoPNwyzI/dk3b3sRCqrbyE
 AByjsTANmLeWiALi8LAMp64N3sG+0hxDLNIDZX8emudHlynCCeDBoCTUO
 jFHoykEtJsi5uEcXHzfYyJjBKAFgfN464f0hMiukSdZNN/TOWfjNuIBzI w==;
X-CSE-ConnectionGUID: vgT9E7OHSRa0MsGb3BMHPA==
X-CSE-MsgGUID: C9NKHzYbRu6KFtIWjxozeg==
X-IronPort-AV: E=McAfee;i="6600,9927,11098"; a="14812993"
X-IronPort-AV: E=Sophos;i="6.08,226,1712646000"; d="scan'208";a="14812993"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2024 19:58:47 -0700
X-CSE-ConnectionGUID: WRX9nyLUQbyfngsDrllNNg==
X-CSE-MsgGUID: 22gYSDv8SWWh9gzrOk2hMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,226,1712646000"; d="scan'208";a="38842900"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa006.fm.intel.com with ESMTP; 09 Jun 2024 19:58:46 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com
Subject: [PATCH v15 5/9] drm/dp: Add refresh rate divider to struct
 representing AS SDP
Date: Mon, 10 Jun 2024 08:18:21 +0530
Message-Id: <20240610024825.823096-6-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240610024825.823096-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20240610024825.823096-1-mitulkumar.ajitkumar.golani@intel.com>
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
2.25.1

