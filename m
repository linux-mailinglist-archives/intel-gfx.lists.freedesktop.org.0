Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EFCC9B5A91
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2024 05:08:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9781C10E12E;
	Wed, 30 Oct 2024 04:08:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ePybpwfh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EEA710E12E;
 Wed, 30 Oct 2024 04:08:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730261298; x=1761797298;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3RYlCAS4sdmyIw+dYiCwEq0RnvTWX45EaVUmq0tk5Is=;
 b=ePybpwfhK5PmCE3Q0b6tm3AcqWo/291Aa1925/DU3WxhrouMM/0Qm+fq
 9zcV9W/QDWXT9Uu1iGD/I3pnUXHGR8sLlfPl9xKEWh5O5xCNZrIdHvLLN
 n/eHfxbH4VXlHjeMqzgFFKmKNZw0fSJs7gtn3CwjOj0NSfA5iGYmQMwVz
 lZGT733wcY+a8gGHK2+VDQf/abyvJI+gXAHOknIw8H1yLKDpHcZwY5Vbi
 HabA9esUaot4tHr8zfEoOUYcJX76Sy9fOi3sOwdYpSyonHoGvD8vPsf/V
 gx4h4fW7aX9MZAwMNYLFXLrujPuB4TQ8Sqj3US60WY+RfgHPz7jZ1/VzQ Q==;
X-CSE-ConnectionGUID: vlXAffNkR5KqGzHzGSvufA==
X-CSE-MsgGUID: Nyh15DW0RQydqN/DAHUz6A==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30088431"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="30088431"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 21:08:17 -0700
X-CSE-ConnectionGUID: azHI4x/oRQeXyn4M+KcN7g==
X-CSE-MsgGUID: N7J0IGc5TZq2jDI74cYaQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,244,1725346800"; d="scan'208";a="82510495"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 21:08:16 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	suraj.kandpal@intel.com
Subject: [PATCH 1/7] drm/i915/dp: Update Comment for Valid DSC Slices per Line
Date: Wed, 30 Oct 2024 09:40:30 +0530
Message-ID: <20241030041036.1238006-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241030041036.1238006-1-ankit.k.nautiyal@intel.com>
References: <20241030041036.1238006-1-ankit.k.nautiyal@intel.com>
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

For some platforms, the maximum slices per DSC engine is 4, while for
others it is 2. Update the comment to reflect this and clarify that
the 'valid_dsc_slicecount' list represents the valid number of slices
per pipe.

Currently, we are working with 1, and 2 slices per DSC engine,
which works for all platforms. With this the number of slices per pipe
can be 1,2 or 4 with different slice & DSC engine configuration.

Add a #TODO for adding support for 4 slices per DSC engine where
supported.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 7e29619ba040..bd9f37e1a13f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -109,8 +109,14 @@
 /* Constants for DP DSC configurations */
 static const u8 valid_dsc_bpp[] = {6, 8, 10, 12, 15};
 
-/* With Single pipe configuration, HW is capable of supporting maximum
- * of 4 slices per line.
+/*
+ * With Single pipe configuration, HW is capable of supporting maximum of:
+ * 2 slices per line for ICL, BMG
+ * 4 slices per line for other platforms.
+ * For now consider a max of 2 slices per line, which works for all platforms.
+ * With this we can have max of 4 DSC Slices per pipe.
+ *
+ * #TODO Split this better to use 4 slices/dsc engine where supported.
  */
 static const u8 valid_dsc_slicecount[] = {1, 2, 4};
 
-- 
2.45.2

