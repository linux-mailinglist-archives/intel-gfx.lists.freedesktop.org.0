Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A86EA8A0820
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Apr 2024 08:12:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04D1E10EE4F;
	Thu, 11 Apr 2024 06:12:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RJ1KPYp+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFBF610EE4A
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Apr 2024 06:12:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712815924; x=1744351924;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JWr5/vPq6qGItOXPc/KvhNc5+jKLhJUtW0fvWobrQdU=;
 b=RJ1KPYp+nKgEyNgQAgkTeNse7PYwrjjq5Jwdl4JyGXD1loPj6RqW2U0K
 e5TLxnK08WUzJkxSICHObXEtKM9lB5TLrG7OTR7crAzDt4GKk5ZMXH3uW
 73ELDaqVijn6N9Bbf2b/acgqDNIYcScttVUaSieUJ51Hne6bnb9WStOlL
 EmOGkv47KDwcnGNv/2mQwCXQDmSyfrZPcRID/y3CdfKjE3g3922wN9+D+
 D2EuWlyP02E/EWrfzI7B5kkEIbJs9kwOKpXd+KCmrOxIyEY6i6Vq1luom
 r7/4etkrD6jr7M8FQLN0TfQsherk46hsbSLCpk6CT2T3pff7qDBAXFgiV g==;
X-CSE-ConnectionGUID: 6tihoHDoQfC7fqXZJ6KLLg==
X-CSE-MsgGUID: qHF3FacgRXWEV4qgHnq1Vg==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="8384984"
X-IronPort-AV: E=Sophos;i="6.07,192,1708416000"; 
   d="scan'208";a="8384984"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2024 23:12:03 -0700
X-CSE-ConnectionGUID: IX8J4raiRNSNBgcoFCOc+w==
X-CSE-MsgGUID: nrQDRRi2QsWe1OjTWLIEQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,192,1708416000"; d="scan'208";a="58226437"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa001.jf.intel.com with ESMTP; 10 Apr 2024 23:12:01 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: chaitanya.kumar.borah@intel.com, uma.shankar@intel.com,
 ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, jani.nikula@intel.com,
 naveen1.kumar@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 3/6] drm/i915/dp: Fix Register bit naming
Date: Thu, 11 Apr 2024 11:39:22 +0530
Message-ID: <20240411060925.475456-4-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240411060925.475456-1-suraj.kandpal@intel.com>
References: <20240411060925.475456-1-suraj.kandpal@intel.com>
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

Change INTEL_EDP_HDR_TCON_SDP_COLORIMETRY enable to
INTEL_EDP_HDR_TCON_SDP_OVERRIDE_AUX as this bit is tells TCON to
ignore DPCD colorimetry values and take the one's sent through
SDP.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
index 94edf982eff8..3d9723714c96 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
@@ -74,7 +74,7 @@
 # define INTEL_EDP_HDR_TCON_BRIGHTNESS_AUX_ENABLE                     BIT(4)
 # define INTEL_EDP_HDR_TCON_SRGB_TO_PANEL_GAMUT_ENABLE                BIT(5)
 /* Bit 6 is reserved */
-# define INTEL_EDP_HDR_TCON_SDP_COLORIMETRY_ENABLE                    BIT(7)
+# define INTEL_EDP_HDR_TCON_SDP_OVERRIDE_AUX			      BIT(7)
 
 #define INTEL_EDP_HDR_CONTENT_LUMINANCE                                0x346 /* Pre-TGL+ */
 #define INTEL_EDP_HDR_PANEL_LUMINANCE_OVERRIDE                         0x34A
-- 
2.43.2

