Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A818D988078
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2024 10:37:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C9A510EC4F;
	Fri, 27 Sep 2024 08:37:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZfoQIjWB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E23C210EC6D;
 Fri, 27 Sep 2024 08:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727426220; x=1758962220;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IJ2Egcp+JFZqetug3cMzP7iI/JyvLGFHyYWMvW9PoR4=;
 b=ZfoQIjWB6OBYYzGp4RLCVlL4ug7MoINW06uXCV46akPJPJ6ZMYzGIqZf
 CRf91MkPgBMB5xDEBPBHqKFSjC8a9OtsbUw2uStngDcOrqJrskpVDb0z8
 DfYVh064GpWWN2QhDqt2jf+SgvtYzlkFO7TdJSk6zvramPcr9F1WM9gsA
 Kh7BaQ7uNsrNJGjYE8voreGIWv/LtUluW7uv7BgMZ2ts0/cekgXK4q1od
 iBrMDTyJaXvw8yk03YdN/kORL3oYwF94DXxcW8s6134h1nkZym9ii5+yF
 SuNUhO1AeTWsQ3ENAmgm3v7uPrm1iA3xIr7ya0DxKgHUFyc8kppmFrNDw g==;
X-CSE-ConnectionGUID: PUxXI44yTyKeO3a3/BkVRQ==
X-CSE-MsgGUID: u6N2FidqQHK+L6u1aRHQng==
X-IronPort-AV: E=McAfee;i="6700,10204,11207"; a="51977630"
X-IronPort-AV: E=Sophos;i="6.11,158,1725346800"; d="scan'208";a="51977630"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2024 01:36:59 -0700
X-CSE-ConnectionGUID: NzoyIjFPSeiLqUKZ0Kjxqw==
X-CSE-MsgGUID: O/D/dGMpS6KSNkD7zA1kWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,158,1725346800"; d="scan'208";a="77409424"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2024 01:36:58 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 13/17] drm/i915/dp: Modify compressed bpp limitations for
 ultrajoiner
Date: Fri, 27 Sep 2024 14:08:27 +0530
Message-ID: <20240927083831.3913645-14-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240927083831.3913645-1-ankit.k.nautiyal@intel.com>
References: <20240927083831.3913645-1-ankit.k.nautiyal@intel.com>
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

Add compressed bpp limitations for ultrajoiner.

v2: Fix the case for 1 pipe. (Ankit)
v3: Refactor existing helper separately and add only ultrajoiner
limitation. (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index e7fe100ef8db..3d4d8e58380a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -896,6 +896,11 @@ static u32 small_joiner_ram_max_bpp(struct intel_display *display, u32 mode_hdis
 	return max_bpp;
 }
 
+static u32 ultrajoiner_ram_max_bpp(struct intel_display *display, u32 mode_hdisplay)
+{
+	return (4 * 72 * 512) / mode_hdisplay;
+}
+
 static
 u32 get_max_compressed_bpp_with_joiner(struct drm_i915_private *i915,
 				       u32 mode_clock, u32 mode_hdisplay,
@@ -907,6 +912,9 @@ u32 get_max_compressed_bpp_with_joiner(struct drm_i915_private *i915,
 	max_bpp = small_joiner_ram_max_bpp(display, mode_hdisplay, num_joined_pipes);
 	max_bpp = min(max_bpp, bigjoiner_bw_max_bpp(display, mode_clock, num_joined_pipes));
 
+	if (num_joined_pipes == 4)
+		max_bpp = min(max_bpp, ultrajoiner_ram_max_bpp(display, mode_hdisplay));
+
 	return max_bpp;
 }
 
-- 
2.45.2

