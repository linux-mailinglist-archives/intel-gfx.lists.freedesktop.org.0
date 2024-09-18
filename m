Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFF1897BE1C
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2024 16:42:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7119A10E5C5;
	Wed, 18 Sep 2024 14:42:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OjKdyAqj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55ABC10E5C1;
 Wed, 18 Sep 2024 14:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726670526; x=1758206526;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=a3Rti1g62oPouXAXKnvPjBwU69Ba8266OeenbnazLyE=;
 b=OjKdyAqjPI5xHhAnfNHmastffsUwmewo0Slr2sjeOqLJ0qmGMaIJLzJF
 mvgpgACe+VsAeKrIgX+ZbIzZGzd/SoY7fBVw2ZlSpUouLVQAMwh2cLdBD
 ka52M+vcQePP3OrK4vtY3Va9VRscTmJhmg7kODb37O/+5z279jEv49Vr0
 q6dSEBsbJn8lN/Jji3S19O/kXl1lvOWt2XVEiX3rR7aJYVi0MaaSLgzRO
 jqWJohS4qaajQasr1Lf2E8axwBft2d70LrgNFufyob/oAZhOebscdCDpk
 LZa80Q/YZvnHRvSPP2iuThXEnHWKLGYRP2uABndKTHSLuAEnP7ZLjs8to A==;
X-CSE-ConnectionGUID: 74eRMh/vSNq6O765MpSDag==
X-CSE-MsgGUID: OHvbo45lQa+lB4uxLzz78g==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="29481727"
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="29481727"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 07:42:05 -0700
X-CSE-ConnectionGUID: VpL2iO1vSdytfSGjpbhtQw==
X-CSE-MsgGUID: +ntuk9tTQyuB0K6NIRh6WQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="69200379"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 07:42:03 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 06/15] drm/i915/display: Add debugfs support to avoid joiner
Date: Wed, 18 Sep 2024 20:13:34 +0530
Message-ID: <20240918144343.2876184-7-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240918144343.2876184-1-ankit.k.nautiyal@intel.com>
References: <20240918144343.2876184-1-ankit.k.nautiyal@intel.com>
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

Currently debugfs for joiner can take a value of 0->dont care and
2->join 2 pipes. Add option to force to use only 1 pipe.

If debugfs is set to 1, force to exactly one pipe (ie. no
joiner despite what the automagic logic is saying).

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_debugfs.c | 2 ++
 drivers/gpu/drm/i915/display/intel_dp.c              | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 5775413c6763..85742400348f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1533,6 +1533,8 @@ static ssize_t i915_joiner_write(struct file *file,
 	switch (force_join_pipes) {
 	case 0:
 		fallthrough;
+	case 1:
+		fallthrough;
 	case 2:
 		connector->force_joined_pipes = force_join_pipes;
 		break;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 96ad048b68cf..369829ea5a12 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1288,6 +1288,8 @@ int intel_dp_compute_num_pipes(struct intel_dp *intel_dp,
 			       int hdisplay, int clock)
 {
 	switch (connector->force_joined_pipes) {
+	case 1:
+		fallthrough;
 	case 2:
 		return connector->force_joined_pipes;
 	default:
-- 
2.45.2

