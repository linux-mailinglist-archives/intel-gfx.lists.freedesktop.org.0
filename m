Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36D3098882C
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2024 17:21:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07E3A10ECE5;
	Fri, 27 Sep 2024 15:21:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l3fboUb3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BAD010ECD8;
 Fri, 27 Sep 2024 15:21:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727450471; x=1758986471;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Mub7U7QjP1b5PlDRwkU36VZBuG6jNO39szMeB6EIPFA=;
 b=l3fboUb3xjJNKVr8MCsap3KsUEQ/Pw3lQKRjSTuPHxZ6GnmKFGk37txh
 IACT2CkMjglBDj5rH7zyz1QU+QHkOSZAYQ55uQFjDyMI1rIxb6rrde345
 JDVQ7gzMpcHGFqgLsUIyTFPnrXGPIbAmVwXvpBYBYH/1y0uzBQART0fd0
 Ikrakw9z+BEZsUkXyVGvCGGl0jcXpe5AbESp7YIwHC1ws9rCdgPnjJzCo
 GdRoyJrDpWnuP2qJ21XSAJaih0bVoLpNguXqcPE32KcilNhsi4Swb28sk
 FrmWZ65i7+r05xnMcrEv241DyZe6HBN1MNesbGRwEW1e+GnylrcxLHzhP A==;
X-CSE-ConnectionGUID: uVxKDWxeQ8qoHeXBiS3nxQ==
X-CSE-MsgGUID: 4UgPMREeTvqstXF4laKzWA==
X-IronPort-AV: E=McAfee;i="6700,10204,11208"; a="37179766"
X-IronPort-AV: E=Sophos;i="6.11,159,1725346800"; d="scan'208";a="37179766"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2024 08:21:11 -0700
X-CSE-ConnectionGUID: qjIKtnr9RumegQR8rDIbmw==
X-CSE-MsgGUID: 8HworZTVSzWeJ/q0OoPg8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,159,1725346800"; d="scan'208";a="95897031"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2024 08:21:09 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 14/17] drm/i915/dp: Simplify helper to get slice count with
 joiner
Date: Fri, 27 Sep 2024 20:52:38 +0530
Message-ID: <20240927152241.4014909-15-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240927152241.4014909-1-ankit.k.nautiyal@intel.com>
References: <20240927152241.4014909-1-ankit.k.nautiyal@intel.com>
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

From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

When bigjoiner is used, we need at least 2 dsc slices per pipe.
Modify the condition in intel_dp_dsc_get_slice_count() to reflect the
same.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 8a32d38d21bf..afc35a83eee2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1033,8 +1033,12 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 		    drm_dp_dsc_sink_max_slice_count(connector->dp.dsc_dpcd, false))
 			break;
 
-		/* big joiner needs small joiner to be enabled */
-		if (num_joined_pipes == 2 && test_slice_count < 4)
+		 /*
+		  * Bigjoiner needs small joiner to be enabled.
+		  * So there should be at least 2 dsc slices per pipe,
+		  * whenever bigjoiner is enabled.
+		  */
+		if (num_joined_pipes > 1 && valid_dsc_slicecount[i] < 2)
 			continue;
 
 		if (min_slice_count <= test_slice_count)
-- 
2.45.2

