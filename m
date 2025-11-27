Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A297C8D78D
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 10:16:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BACEC10E7B5;
	Thu, 27 Nov 2025 09:15:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ijMOy0pU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94E6010E7B5;
 Thu, 27 Nov 2025 09:15:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764234956; x=1795770956;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QkCScDLcz2Lue0rnHcc9TeHTujAwx/ZS10jCkp34jhU=;
 b=ijMOy0pUrElhhk45aXj3HonbBi7yc7yRqDNyZf33rEJ0bcAVgKHcIE+M
 kJJIFd+4GUNfiBjsnN3up0Doc+Mpbo6gxRfVnN6bR3vPkXNRvASZJXJWc
 JnZtj2BBKZ4aFwp37IUznsDJA2fX1rcC5ft4KC12STQpR3C+dNTAYdhnQ
 o7upxlaCMU6puZyfT4UVs+eEUI2iVd3Sc4Ob0F5TufjwcU15/xnwnCZu2
 c66WjNBqhnPTThMkiUKKvlMar6UqHzr/v4O3ss30mfHACZPf+xM9NykwE
 uLBnqulncmLIyD/NkUAwUXMN8Cd0CSSuLw5j3BsEU9Dgg/ZKxcZNEq+WW A==;
X-CSE-ConnectionGUID: bq8krUffSPezLz5Cme7jHg==
X-CSE-MsgGUID: 0l+b1JrJTl6zCnAoZs6+zQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11625"; a="77642322"
X-IronPort-AV: E=Sophos;i="6.20,230,1758610800"; d="scan'208";a="77642322"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 01:15:56 -0800
X-CSE-ConnectionGUID: 58MbaXZTSbmEPeAkLC+Rug==
X-CSE-MsgGUID: /KcDxrj/QjCCN+YA5fiAhA==
X-ExtLoop1: 1
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa003.fm.intel.com with ESMTP; 27 Nov 2025 01:15:56 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, ville.syrjala@linux.intel.com
Subject: [PATCH v9 01/17] drm/i915/display: Add source param for dc balance
Date: Thu, 27 Nov 2025 14:45:58 +0530
Message-ID: <20251127091614.648791-2-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251127091614.648791-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20251127091614.648791-1-mitulkumar.ajitkumar.golani@intel.com>
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

Add source param for dc balance enablement.

--v2:
- Arrange in alphabetic order. (Ankit)
- Update name. (Ankit)

--v3:
- Commit message update. (Ankit)

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index b559ef43d547..7ad49e9529f2 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -200,6 +200,7 @@ struct intel_display_platforms {
 #define HAS_ULTRAJOINER(__display)	(((__display)->platform.dgfx && \
 					  DISPLAY_VER(__display) == 14) && HAS_DSC(__display))
 #define HAS_VRR(__display)		(DISPLAY_VER(__display) >= 11)
+#define HAS_VRR_DC_BALANCE(__display)	(DISPLAY_VER(__display) >= 30)
 #define INTEL_NUM_PIPES(__display)	(hweight8(DISPLAY_RUNTIME_INFO(__display)->pipe_mask))
 #define OVERLAY_NEEDS_PHYSICAL(__display)	(DISPLAY_INFO(__display)->overlay_needs_physical)
 #define SUPPORTS_TV(__display)		(DISPLAY_INFO(__display)->supports_tv)
-- 
2.48.1

