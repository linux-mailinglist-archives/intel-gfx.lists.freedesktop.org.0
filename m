Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 204CDA6DBEC
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Mar 2025 14:45:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A70910E450;
	Mon, 24 Mar 2025 13:45:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ei9hsDvZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D443A10E442;
 Mon, 24 Mar 2025 13:45:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742823904; x=1774359904;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZSYEFdR3p4jiZ4YeiONbG6vOnWHVd1yPOOQwl9o6bMI=;
 b=Ei9hsDvZekSe/AoOdhQo7KAnbHcUgQjBZvwpTB6N/PeILQ0tsMi/dEYh
 ajrrYOsO4mS7puRMy2TrvYjMUCMoFgy+K7IjF6ZeZgXGYtHxZwv+DNFgz
 u8quTJwqSj8ACI45jecMhXsabenApyC8UoAyf7iPPIfVdUsbwqrdWrkT9
 jfU6QVcghuQxPAYRwHBDjGdu2tmlytweZxEjAaZ+tESbfNp88vYCXoIys
 qpPYtMd/3zfqxyH4c7dBFNFf1rYaRL4Ds6g3sr2wEaXb/5GZ/jShPT2nr
 Xe39I+8L9Hc64PcsxHOh0Bpp7ENqUx1yVvWyd4069nTn4pBH4gwvkyFUA Q==;
X-CSE-ConnectionGUID: 9s29dCSCRT2xoGbefUEv2w==
X-CSE-MsgGUID: q16D/5pSRVGaCVwQVAg38w==
X-IronPort-AV: E=McAfee;i="6700,10204,11383"; a="43955738"
X-IronPort-AV: E=Sophos;i="6.14,272,1736841600"; d="scan'208";a="43955738"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 06:45:03 -0700
X-CSE-ConnectionGUID: AoMyMQWRTcaRHFdb1SdsZw==
X-CSE-MsgGUID: WfDP42RUSu2NOLER1KwOfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,272,1736841600"; d="scan'208";a="124040743"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 06:45:01 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 13/16] drm/i915/vrr: Always use VRR timing generator for PTL+
Date: Mon, 24 Mar 2025 19:02:45 +0530
Message-ID: <20250324133248.4071909-14-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250324133248.4071909-1-ankit.k.nautiyal@intel.com>
References: <20250324133248.4071909-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Currently, the VRR timing generator is used only when VRR is enabled by
userspace for sinks that support VRR. Starting with PTL+, gradually move
away from the legacy timing generator and use the VRR timing generator
for both variable and fixed timings.

Note: For platforms where we always enable the VRR timing generator,
the LRR fastset is not allowed to avoid live programming of vrr.guardband
with VRR TG enabled. This effectively breaks the LRR fastset functionality
for these platforms and needs to be addressed.

v2: Use this for PTL for now to avoid losing LRR fastset for older
platforms. (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index dda42522f461..5e60da2bb0c3 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -561,7 +561,9 @@ bool intel_vrr_always_use_vrr_tg(struct intel_display *display)
 	if (!HAS_VRR(display))
 		return false;
 
-	/* #TODO return true for platforms supporting fixed_rr */
+	if (DISPLAY_VER(display) >= 30)
+		return true;
+
 	return false;
 }
 
-- 
2.45.2

