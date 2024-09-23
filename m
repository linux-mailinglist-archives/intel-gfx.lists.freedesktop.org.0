Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3555797F028
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 20:11:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBC2510E456;
	Mon, 23 Sep 2024 18:11:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ivy9yI0V";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A594D10E454;
 Mon, 23 Sep 2024 18:11:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727115115; x=1758651115;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=N92MVp69nFNrAkFHkbQm4bXbH6CqqR7WLKA+fpIW7Xo=;
 b=ivy9yI0VsVvqUqov2Jhi/s3NnKVmXw8GLl9394C1qFnKL7kJDORhoMpA
 h6CofOuWTP5nbsh9N4dv5JUpNvN3+qPRegURz9alfVZ2e1R4IcTJf4/L/
 sez+peDHLNMx55A47uwfchv79vqBHxsQaFiA7VugBdi3gGJzXTHoLY4e3
 w3zz+7FgRhaeJoWm+DT3T1oW9qvkFtCHdRXNOIbxdzeu+zPtwEwxy7K37
 4xKjV700cGDxMJsLZgxIyWJ52Ts5ehdKNslP4UJdD4wI2NG3e3Kdietnc
 6eBQmnqJDXxSqR/++3Ipi8nmVhQzxs9jjJqAe2RMi0MWLP1E9jWpRWntA g==;
X-CSE-ConnectionGUID: JEVHSHXYSjSKmY9KxRgdJw==
X-CSE-MsgGUID: 4jpiFChJS9WDPg7B09lUmQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="29866215"
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="29866215"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 11:11:54 -0700
X-CSE-ConnectionGUID: KWmpH94yTcKVLXKiy/EAWg==
X-CSE-MsgGUID: LpGnxWodQ1y7Cd1IzkqOBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="70734281"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 11:11:52 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 05/16] drm/i915/display: Add debugfs support to avoid joiner
Date: Mon, 23 Sep 2024 23:43:25 +0530
Message-ID: <20240923181336.3303940-6-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240923181336.3303940-1-ankit.k.nautiyal@intel.com>
References: <20240923181336.3303940-1-ankit.k.nautiyal@intel.com>
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
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 80c499d642dc..af164e340cb3 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1344,6 +1344,8 @@ static ssize_t i915_joiner_write(struct file *file,
 	switch (force_joined_pipes) {
 	case 0:
 		break;
+	case 1:
+		fallthrough;
 	case 2:
 		connector->force_joined_pipes = force_joined_pipes;
 		break;
-- 
2.45.2

