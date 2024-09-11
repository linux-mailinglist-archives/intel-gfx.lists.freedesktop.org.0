Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 114B497534B
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2024 15:12:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CABCE10EA18;
	Wed, 11 Sep 2024 13:12:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Hve69QSQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0506010EA17
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2024 13:12:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726060336; x=1757596336;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uOR3RmfqKEpf+szP8SCwajZ9+RZpP4UT0LBAP4etBGg=;
 b=Hve69QSQjmoh7CdKizdVwNVFprKYOVJ3ki99ji2it0ZHhBAD9NltHVG1
 iofSRLYkhBDPgneJwnVp+XahrEvSZiC66cf4sfg13S7bi1Z+Z3UXZZBJw
 ld0WpVA43kr/zRqwk6UrAphXjskJ8RUIcOcQq8NfxKx2RGCmwuji5k78S
 2NpObFrsZ4WDU1taFHzLouRqqsb96rrqo3mXXJSIaZxFMQivPTnJ7HOuX
 vnEog80L6xvP9ss+vP6JrkinAna5oiTamJSLkrkuzRfOILFNIrUqDsUIN
 HRBVqIU8DRaZIugaf394/Y9vBAYJoP6XVoi5MacFokG3dccU5pLjjUpPr w==;
X-CSE-ConnectionGUID: SCLe87EURVqz3WtrGimG2A==
X-CSE-MsgGUID: HZbbPA5PTqmN3seFmM9MvQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11191"; a="36244348"
X-IronPort-AV: E=Sophos;i="6.10,220,1719903600"; d="scan'208";a="36244348"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 06:12:16 -0700
X-CSE-ConnectionGUID: 47eHmwi/RQCWuwUCZczpeA==
X-CSE-MsgGUID: efBVHC8EROi9pAlPKurgpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,220,1719903600"; d="scan'208";a="67380895"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 06:12:14 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: suraj.kandpal@intel.com, jani.saarinen@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 05/19] drm/i915/display: Add debugfs support to avoid joiner
Date: Wed, 11 Sep 2024 18:43:35 +0530
Message-ID: <20240911131349.933814-6-ankit.k.nautiyal@intel.com>
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

Currently debugfs for joiner can take a value of 0->dont care and
2->join 2 pipes. Add option to force to use only 1 pipe.

If debugfs is set to 1, force to exactly one pipe (ie. no
joiner despite what the automagic logic is saying).

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_debugfs.c | 3 +++
 drivers/gpu/drm/i915/display/intel_dp.c              | 4 +++-
 2 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 7ceaf01a884a..8b0cb750d9ae 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1545,6 +1545,9 @@ static ssize_t i915_joiner_write(struct file *file,
 	switch (force_join_pipes) {
 	case 0:
 		break;
+	case 1:
+		connector->force_joined_pipes = force_join_pipes;
+		break;
 	case 2:
 		if (intel_dp_has_joiner(intel_dp))
 			connector->force_joined_pipes = force_join_pipes;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 333624fcebd7..65044f63d1f5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1276,6 +1276,8 @@ int intel_dp_compute_joiner_pipes(struct intel_dp *intel_dp,
 				  int hdisplay, int clock)
 {
 	switch (connector->force_joined_pipes) {
+	case 1:
+		fallthrough;
 	case 2:
 		return connector->force_joined_pipes;
 	default:
@@ -1287,7 +1289,7 @@ int intel_dp_compute_joiner_pipes(struct intel_dp *intel_dp,
 			return 2;
 	}
 
-	return 0;
+	return 1;
 }
 
 bool intel_dp_has_dsc(const struct intel_connector *connector)
-- 
2.45.2

