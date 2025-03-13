Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C63A5A5F74E
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Mar 2025 15:09:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EA2710E8AD;
	Thu, 13 Mar 2025 14:09:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hgNfvLWB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9950910E8AD
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Mar 2025 14:09:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741874974; x=1773410974;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Cf7NFCmDGwNez9a2hWbD+NvyZjrZS/8oV5vP9fclDFg=;
 b=hgNfvLWBGF+cx+02Aybu8qd85pHKBHguQt/ZMM5zZi8PqfyvgvOqbTLc
 KJ6sCzR1dMo7L4+JhH05oOqX8cKeWSX6EbgwbWDY/P02nBuQsHpZtibZp
 dYdRIYzgolem8rZ4qNxgxqpClKFJLkizDl0pxGaq2N3DD6xz/77z/dOnT
 3Koo9ycYkKM5UFt1aSxNPYuZY7LdFNWlJ/+WFlzgFxfgfoKTYROO79QnP
 YonqO4DSfLMRmPIBNuxPEDGFdJHU7x3Lsk4l3D7aT6btoEG009mm1xd5a
 JfPaBikaMijxdWysnGgyPkue2F2w04AY8J4sCK4LOFf98Hmc2QumBTSWS Q==;
X-CSE-ConnectionGUID: R/OZW6O0ThiWsxXnYy/o6w==
X-CSE-MsgGUID: paj+fdOpSSeu6RlpQ3Q/NQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11372"; a="42855028"
X-IronPort-AV: E=Sophos;i="6.14,244,1736841600"; d="scan'208";a="42855028"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2025 07:09:07 -0700
X-CSE-ConnectionGUID: 76fo/Z5iR5uZnqNudbCMPA==
X-CSE-MsgGUID: J4VOaM9rQvW5XOyfPvpzNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,244,1736841600"; d="scan'208";a="126138444"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 13 Mar 2025 07:09:05 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 13 Mar 2025 16:09:04 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 09/10] drm/i915: Use intel_memory_region_type_is_local() in
 the BIOS FB takeover
Date: Thu, 13 Mar 2025 16:08:37 +0200
Message-ID: <20250313140838.29742-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250313140838.29742-1-ville.syrjala@linux.intel.com>
References: <20250313140838.29742-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Replace the hardcoded PTE vs. memory region is_local checks
in the BIOS FB takeover with intel_memory_region_type_is_local().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_plane_initial.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display/intel_plane_initial.c
index d522da7000ff..6abe17be0add 100644
--- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
+++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
@@ -94,9 +94,10 @@ initial_plane_phys_lmem(struct intel_display *display,
 		return false;
 	}
 
-	if (!is_local) {
+	if (intel_memory_type_is_local(mem->type) != is_local) {
 		drm_err(display->drm,
-			"Initial plane FB PTE not LMEM\n");
+			"Initial plane FB PTE unsuitable for %s\n",
+			mem->region.name);
 		return false;
 	}
 
@@ -152,9 +153,10 @@ initial_plane_phys_smem(struct intel_display *display,
 		return false;
 	}
 
-	if (is_local) {
+	if (intel_memory_type_is_local(mem->type) != is_local) {
 		drm_err(display->drm,
-			"Initial plane FB PTE LMEM\n");
+			"Initial plane FB PTE unsuitable for %s\n",
+			mem->region.name);
 		return false;
 	}
 
-- 
2.45.3

