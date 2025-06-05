Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49030ACE95A
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Jun 2025 07:37:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B7D510E7BF;
	Thu,  5 Jun 2025 05:37:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FjFdqge3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5A6010E7B2;
 Thu,  5 Jun 2025 05:37:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749101832; x=1780637832;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=hDfyQTTp8TTDbwVZ5+Sig9imvihoYFPhyuLNGsN3EVY=;
 b=FjFdqge3bWdu2PFs4wiyfoAObf8JT83OQIQUjCoOl8ctqm1Co4NdY/vE
 lw6+xAioN521ZpfqiZKrRIQv2iM50tNrj68FqBHSTufl6D7FOfgoLupU9
 EYD2J1NrH2Uu7R+KZ1EQFnTg//IkIwGKDfAgXLqT6mYTiwUw53KQ2wFuE
 956SyM8wew7IRivIn7tqGDNbAwHjelJl0XqwIiCuDYJULzEDrNmxL+y38
 j6sLDnJnvCfRVPveaLo/rv+k4mQyBf0IjXRXTEtq4YIUUYnrALP4+J4Fg
 JL7uYU4wQPePbhgNCbHeL89VBLZqaekp+PjyLXcGat+SKQW8z8Kr9Ch2q A==;
X-CSE-ConnectionGUID: vL5wWI1ZSvGtJF30Vk9YLw==
X-CSE-MsgGUID: jTyfHQPZTg2Y6s/OGCrUtg==
X-IronPort-AV: E=McAfee;i="6800,10657,11454"; a="54995647"
X-IronPort-AV: E=Sophos;i="6.16,211,1744095600"; d="scan'208";a="54995647"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2025 22:37:10 -0700
X-CSE-ConnectionGUID: 9i5VBTGERH6xESt33ZuCKw==
X-CSE-MsgGUID: h43u0aZbTw2rlqCJRUCiog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,211,1744095600"; d="scan'208";a="176348556"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2025 22:37:09 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH] drm/i915/display: Fix macro HAS_ULTRAJOINER
Date: Thu,  5 Jun 2025 10:56:16 +0530
Message-ID: <20250605052616.3368990-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
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

Not all platforms that have display >= 20 support ultrajoiner.
Fix the macro HAS_ULTRAJOINER with correct platforms.

Bspec: 69556
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.h | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 0ac5484c0043..4308822f0415 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -192,9 +192,8 @@ struct intel_display_platforms {
 #define HAS_TRANSCODER(__display, trans)	((DISPLAY_RUNTIME_INFO(__display)->cpu_transcoder_mask & \
 						  BIT(trans)) != 0)
 #define HAS_UNCOMPRESSED_JOINER(__display)	(DISPLAY_VER(__display) >= 13)
-#define HAS_ULTRAJOINER(__display)	((DISPLAY_VER(__display) >= 20 || \
-					  ((__display)->platform.dgfx && DISPLAY_VER(__display) == 14)) && \
-					 HAS_DSC(__display))
+#define HAS_ULTRAJOINER(__display)	(((__display)->platform.dgfx && \
+					  DISPLAY_VER(__display) == 14) && HAS_DSC(__display))
 #define HAS_VRR(__display)		(DISPLAY_VER(__display) >= 11)
 #define INTEL_NUM_PIPES(__display)	(hweight8(DISPLAY_RUNTIME_INFO(__display)->pipe_mask))
 #define OVERLAY_NEEDS_PHYSICAL(__display)	(DISPLAY_INFO(__display)->overlay_needs_physical)
-- 
2.45.2

