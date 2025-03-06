Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5AC8A54C05
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Mar 2025 14:23:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 613B610E99A;
	Thu,  6 Mar 2025 13:23:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mpsDIsGS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC5FD10E99B;
 Thu,  6 Mar 2025 13:23:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741267427; x=1772803427;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=//1q3UpLIslAw9/InzE7/mfBu8qMkMXhX7OT2BNY7E8=;
 b=mpsDIsGSB1Oc8pj/xRLm3/QnKM2/35CIAh+ghD/SZgcFHgDQOeswYq0w
 VH+PFhqb1neUV5ezWosNjmbo9ojf0e2Gb6ainwy3AmSX87hWzl7tePHo0
 FLe4TpUxetmBdPgC+SBbWq+lz2+iTT96L2uHj4yuFVTMd1zj+8xlTYmA2
 Wcb2RYOTQZKpBK0YEKQaiZETL868bNf3msJb+/xoB2GgGa5xmy09oDijN
 u5FsvnZJYlP7J33pfx+a5bhf6banU3/XYVZgHD+BUOksf+fB1HaeP2u2v
 lR4oyNGg6vMXc9bIJG590yk8fwM9tRBSELaLLyVjvW+eEwybPIC0uW2nY A==;
X-CSE-ConnectionGUID: E1if+ziQT8yFVilIxoGdNw==
X-CSE-MsgGUID: ketEOlPxQeqvaqKtki88JQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="41524697"
X-IronPort-AV: E=Sophos;i="6.14,226,1736841600"; d="scan'208";a="41524697"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 05:23:47 -0800
X-CSE-ConnectionGUID: 5lSZfCAdRIesYlVHlnBiSA==
X-CSE-MsgGUID: Ihd90KpSTaOweNJOTBEosQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,226,1736841600"; d="scan'208";a="142243214"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 05:23:44 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 20/21] drm/i915/vrr: Always use VRR timing generator for MTL+
Date: Thu,  6 Mar 2025 18:40:59 +0530
Message-ID: <20250306131100.3989503-21-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250306131100.3989503-1-ankit.k.nautiyal@intel.com>
References: <20250306131100.3989503-1-ankit.k.nautiyal@intel.com>
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

Currently VRR timing generator is used only when VRR is enabled by
userspace for sinks that support VRR. From MTL+ gradually move away from
the older timing generator and use VRR timing generator for both variable
and fixed timings.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 3329d60afa45..a1ad9432bc28 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -557,7 +557,9 @@ bool intel_vrr_always_use_vrr_tg(struct intel_display *display)
 	if (!HAS_VRR(display))
 		return false;
 
-	/* #TODO return true for platforms supporting fixed_rr */
+	if (DISPLAY_VER(display) >= 14)
+		return true;
+
 	return false;
 }
 
-- 
2.45.2

