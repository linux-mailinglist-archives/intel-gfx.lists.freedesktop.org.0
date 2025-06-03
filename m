Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27780ACCD9F
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Jun 2025 21:37:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4B3010E232;
	Tue,  3 Jun 2025 19:37:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y2dN8jC/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9B7110E223;
 Tue,  3 Jun 2025 19:37:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748979422; x=1780515422;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AzEHTNoNyWkJehmcpYmI0CVBLRa7d8ivpb1mCWypMcw=;
 b=Y2dN8jC/PUNiSyZLbpC/KFTM4zO0pcDaHWLqa1iHAekjiNLpNKDNv0hM
 LHRSDEL7tCquAXmQHmQ68JR7eXJezaCuim9ASHmqCo5J1K02elQzj6jHt
 mSpnb7O1WaAKeWVrVPFMgL4YG61kZvZlUGOzEThjC8uwLv5OySgBeaW4s
 1f3r6S6CTMGW0hyWImI9QKUycMFV2cIvwm/d5RScUXASS0CZYOWa1cvpn
 Ht4K3YK2J3kQuBcaNKUAjxQ6hVKARKbTinkkntNZMQlqWDTjYIzGvH3LF
 ItoxwXADgocEFnqCaxV4gDZMUUyAlgON2jplAsYz/Itu5ScFfK7TFZot3 w==;
X-CSE-ConnectionGUID: hoqe/1GSS8eP8GNnSc1oyA==
X-CSE-MsgGUID: SadivSEES0q+N+DpGVZQiQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11453"; a="50275972"
X-IronPort-AV: E=Sophos;i="6.16,207,1744095600"; d="scan'208";a="50275972"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2025 12:37:02 -0700
X-CSE-ConnectionGUID: j2rJTcI3SYWuZVPksgg6Jg==
X-CSE-MsgGUID: WPCz29M5SMq0yeC1xsQ4Zw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,207,1744095600"; d="scan'208";a="144844743"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa006.jf.intel.com with ESMTP; 03 Jun 2025 12:37:00 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, ankit.k.nautiyal@intel.com,
 ville.syrjala@intel.com, jani.nikula@intel.com
Subject: [PATCH v6 02/17] drm/i915/display: Add source param for dc balance
Date: Wed,  4 Jun 2025 01:05:07 +0530
Message-ID: <20250603193522.2567092-3-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250603193522.2567092-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250603193522.2567092-1-mitulkumar.ajitkumar.golani@intel.com>
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

Add source param for dc balance enablement further.

--v2:
- Arrange in alphabetic order. (Ankit)
- Update name. (Ankit)

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 0ac5484c0043..201a22d71bf0 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -196,6 +196,7 @@ struct intel_display_platforms {
 					  ((__display)->platform.dgfx && DISPLAY_VER(__display) == 14)) && \
 					 HAS_DSC(__display))
 #define HAS_VRR(__display)		(DISPLAY_VER(__display) >= 11)
+#define HAS_VRR_DC_BALANCE(__display)	(DISPLAY_VER(__display) >= 30)
 #define INTEL_NUM_PIPES(__display)	(hweight8(DISPLAY_RUNTIME_INFO(__display)->pipe_mask))
 #define OVERLAY_NEEDS_PHYSICAL(__display)	(DISPLAY_INFO(__display)->overlay_needs_physical)
 #define SUPPORTS_TV(__display)		(DISPLAY_INFO(__display)->supports_tv)
-- 
2.48.1

