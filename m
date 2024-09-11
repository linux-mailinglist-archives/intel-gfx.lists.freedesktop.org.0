Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0A6C975358
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2024 15:12:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C76D10EA24;
	Wed, 11 Sep 2024 13:12:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dj2NprJn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83BD810EA24
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2024 13:12:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726060361; x=1757596361;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PuAMpJ3zmwoe/KCWmu75eh5FNnRogmMTG8y9JxVNZ30=;
 b=dj2NprJn+ZnMORNdD23FgztUKCXvMyQh4cMyDzVlBhNtPpR9AAzinvvd
 /2FV4IWjmRQ3GI1Se0o4r/iLLQdDhU51XIbtofqtPnfsIgkaozzbLNMpV
 AX3z7OruK7cYFRVnB+p54kei7X0cOdowFZRzdFyq8BodS5UyVO1IgqMbn
 oSAYYSwV0ECxwPh9BcBDUG94EqXHHyR4VJN17RHNa5Iml/WzpYp1KIccf
 +xV6rDjzMS2t6dHP0rZte+cIf3WU71Rm8Hrw9PL8wZNh9NWznkrIZJDVp
 KszWfaZzAYklcMS1D4XOjli7+1JsnNdey1CIy6ESghzFMVnSw4kMjT7oG w==;
X-CSE-ConnectionGUID: Y+kcf47eQsePpzY9PupxYA==
X-CSE-MsgGUID: Koeo3mZfQb6i6gMTG6PCIw==
X-IronPort-AV: E=McAfee;i="6700,10204,11191"; a="36244443"
X-IronPort-AV: E=Sophos;i="6.10,220,1719903600"; d="scan'208";a="36244443"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 06:12:41 -0700
X-CSE-ConnectionGUID: o/twHWcZTpKG+hHBmGrfQA==
X-CSE-MsgGUID: 5RZr5l0pTIyGZ4LBKGOpTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,220,1719903600"; d="scan'208";a="67381165"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 06:12:39 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: suraj.kandpal@intel.com, jani.saarinen@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 19/19] drm/i915/intel_dp: Add support for forcing ultrajoiner
Date: Wed, 11 Sep 2024 18:43:49 +0530
Message-ID: <20240911131349.933814-20-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240911131349.933814-1-ankit.k.nautiyal@intel.com>
References: <20240911131349.933814-1-ankit.k.nautiyal@intel.com>
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

Allow forcing ultrajoiner through debugfs.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_debugfs.c | 6 ++++++
 drivers/gpu/drm/i915/display/intel_dp.c              | 2 ++
 2 files changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 8b0cb750d9ae..5d94ce6060f6 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1554,6 +1554,12 @@ static ssize_t i915_joiner_write(struct file *file,
 		else
 			drm_dbg(display->drm, "Force joiner not supported for the config\n");
 		break;
+	case 4:
+		if (intel_display_can_use_ultrajoiner(display))
+			connector->force_joined_pipes = force_join_pipes;
+		else
+			drm_dbg(display->drm, "Force ultrajoiner not supported for the config\n");
+		break;
 	default:
 		drm_dbg(display->drm, "Ignoring Invalid num of pipes %d for force joining\n",
 			force_join_pipes);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 9160614d74c6..149fdcfb297d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1308,6 +1308,8 @@ int intel_dp_compute_joiner_pipes(struct intel_dp *intel_dp,
 	case 1:
 		fallthrough;
 	case 2:
+		fallthrough;
+	case 4:
 		return connector->force_joined_pipes;
 	default:
 		MISSING_CASE(connector->force_joined_pipes);
-- 
2.45.2

