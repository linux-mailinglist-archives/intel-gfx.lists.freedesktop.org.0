Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7A2896B768
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2024 11:52:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A1C610E725;
	Wed,  4 Sep 2024 09:52:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Af/LMFS/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 928AE10E725;
 Wed,  4 Sep 2024 09:52:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725443527; x=1756979527;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=w62qM+14MkNyEpLPbrWDjpYncXDyvqyHOztaOa5AyOM=;
 b=Af/LMFS/S1VLUB5GgVTSOH67ciZhQ5qz0jJ/gWz4UnhDkFWP2vaasnCJ
 XAestNFXI9qruH2C8jnvEazy+Weaj6BrhgSvRIriWfo31IJwwQue1MT+6
 Ml76zjF6Zf6uMhG4PMfedhkQEPjYwQYAuwYTpp4/L4j559xGvy8Q0pBkt
 Y6TDQnIwOeODUWJITYn2VxXPcKqm1i1ZqLWIl4beseTKVBPuWzcavMC+X
 HWsrXBj3sk0tI8EXGIAsxd68Ds6sW2DN2iepsC+eI8Fs2/tMjQJNI96tZ
 9p6jn+LTsqrOkIC05zpkPqYCUJ6xKXmiGBEiE4txOBAWG7bKouCULH4xw w==;
X-CSE-ConnectionGUID: pRVw0OEBRNe9apg15ZkSCw==
X-CSE-MsgGUID: 6EoSfmBfQRegKPnAYKerxw==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="13365616"
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="13365616"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 02:52:06 -0700
X-CSE-ConnectionGUID: 1cZ6swUlTZi6h2scr/CiDw==
X-CSE-MsgGUID: Qzg7k6PGSfaEiRU7muqfKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="65457007"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.18])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 02:52:03 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	rodrigo.vivi@intel.com,
	lucas.demarchi@intel.com
Subject: [PATCH 2/2] drm/i915/pciids: separate ARL and MTL PCI IDs
Date: Wed,  4 Sep 2024 12:51:33 +0300
Message-Id: <b70af19ea017a76af4678d0a4ee8332253ee1f3b.1725443418.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1725443418.git.jani.nikula@intel.com>
References: <cover.1725443418.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Avoid including PCI IDs for one platform to the PCI IDs of another. It's
more clear to deal with them completely separately at the PCI ID macro
level.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.c | 1 +
 drivers/gpu/drm/i915/i915_pci.c                     | 1 +
 include/drm/intel/i915_pciids.h                     | 4 ++--
 3 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 1b46ba985580..408c76852495 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -1318,6 +1318,7 @@ static const struct {
 	INTEL_RPLU_IDS(INTEL_DISPLAY_DEVICE, &adl_p_desc),
 	INTEL_RPLP_IDS(INTEL_DISPLAY_DEVICE, &adl_p_desc),
 	INTEL_DG2_IDS(INTEL_DISPLAY_DEVICE, &dg2_desc),
+	INTEL_ARL_IDS(INTEL_DISPLAY_DEVICE, &mtl_desc),
 	INTEL_MTL_IDS(INTEL_DISPLAY_DEVICE, &mtl_desc),
 	INTEL_LNL_IDS(INTEL_DISPLAY_DEVICE, &lnl_desc),
 	INTEL_BMG_IDS(INTEL_DISPLAY_DEVICE, &bmg_desc),
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index d37bb3a704d0..617f411feb8c 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -870,6 +870,7 @@ static const struct pci_device_id pciidlist[] = {
 	INTEL_RPLP_IDS(INTEL_VGA_DEVICE, &adl_p_info),
 	INTEL_DG2_IDS(INTEL_VGA_DEVICE, &dg2_info),
 	INTEL_ATS_M_IDS(INTEL_VGA_DEVICE, &ats_m_info),
+	INTEL_ARL_IDS(INTEL_VGA_DEVICE, &mtl_info),
 	INTEL_MTL_IDS(INTEL_VGA_DEVICE, &mtl_info),
 	{}
 };
diff --git a/include/drm/intel/i915_pciids.h b/include/drm/intel/i915_pciids.h
index 6a78df5687c5..cbb12fdbcb7f 100644
--- a/include/drm/intel/i915_pciids.h
+++ b/include/drm/intel/i915_pciids.h
@@ -764,15 +764,15 @@
 	INTEL_ATS_M150_IDS(MACRO__, ## __VA_ARGS__), \
 	INTEL_ATS_M75_IDS(MACRO__, ## __VA_ARGS__)
 
-/* MTL */
+/* ARL */
 #define INTEL_ARL_IDS(MACRO__, ...) \
 	MACRO__(0x7D41, ## __VA_ARGS__), \
 	MACRO__(0x7D51, ## __VA_ARGS__), \
 	MACRO__(0x7D67, ## __VA_ARGS__), \
 	MACRO__(0x7DD1, ## __VA_ARGS__)
 
+/* MTL */
 #define INTEL_MTL_IDS(MACRO__, ...) \
-	INTEL_ARL_IDS(MACRO__, ## __VA_ARGS__), \
 	MACRO__(0x7D40, ## __VA_ARGS__), \
 	MACRO__(0x7D45, ## __VA_ARGS__), \
 	MACRO__(0x7D55, ## __VA_ARGS__), \
-- 
2.39.2

