Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D914C9F4783
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2024 10:30:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1D7210E89E;
	Tue, 17 Dec 2024 09:29:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZF2n5+yC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D47A810E8AC;
 Tue, 17 Dec 2024 09:29:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734427791; x=1765963791;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HzAAY004BjR083qQgg96dqRcsewzQb4xm3GBWdeIK64=;
 b=ZF2n5+yCnJMVKVXIvw0lC95p5A+nJTsSUvPsI0to0JoLcoeffecDyMFB
 5V5ya3fn/K+AvTeIFO0n4s8n34pYYNORPcyrPfiyP9jm6d+SPEWimarJv
 G3xLgVWCVnm/yPybz7ZmRu+k7lb05/KOq7by5QqAi9F5r7pXv9WS5Uovy
 DR4KkFnvRoBDOYDTDGzrxh7jQNDHQ7m3qP1rgl3RlfxPVpOqpJKNl0lyB
 W78taF7IaDsXOYCfM+D+vyFt3cVg7jF3tJ1gJg/46fwBNyCgKUad3YV6R
 Z8SM3GRzaKGDFZExl1ohQwFT/nZjiryiBpMwKMi4bB26uzM3w34BXbbdD w==;
X-CSE-ConnectionGUID: ueWjQw5BTi66fzBABAl7qQ==
X-CSE-MsgGUID: 3wwhduJqSxybuM6ieFRGsQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11288"; a="34976127"
X-IronPort-AV: E=Sophos;i="6.12,241,1728975600"; d="scan'208";a="34976127"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2024 01:29:50 -0800
X-CSE-ConnectionGUID: emGebsQXQW6VP13dqDiR+g==
X-CSE-MsgGUID: eSHqKrM+RBGOx2c9Y8lxig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,241,1728975600"; d="scan'208";a="98052409"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2024 01:29:49 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 jani.nikula@linux.intel.com, imre.deak@intel.com
Subject: [PATCH 02/14] drm/i915/dp: Return early if DSC not supported
Date: Tue, 17 Dec 2024 15:02:32 +0530
Message-ID: <20241217093244.3938132-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241217093244.3938132-1-ankit.k.nautiyal@intel.com>
References: <20241217093244.3938132-1-ankit.k.nautiyal@intel.com>
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

Check for DSC support before computing link config with DSC.
For DP MST we are already doing the same.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 908b9887f89b..dd2da9facaad 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2375,9 +2375,6 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 		 intel_dp_supports_fec(intel_dp, connector, pipe_config) &&
 		 !intel_dp_is_uhbr(pipe_config));
 
-	if (!intel_dp_supports_dsc(intel_dp, connector, pipe_config))
-		return -EINVAL;
-
 	if (!intel_dp_dsc_supports_format(connector, pipe_config->output_format))
 		return -EINVAL;
 
@@ -2652,6 +2649,9 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 			    str_yes_no(ret), str_yes_no(joiner_needs_dsc),
 			    str_yes_no(intel_dp->force_dsc_en));
 
+		if (!intel_dp_supports_dsc(intel_dp, connector, pipe_config))
+			return -EINVAL;
+
 		if (!intel_dp_compute_config_limits(intel_dp, pipe_config,
 						    respect_downstream_limits,
 						    true,
-- 
2.45.2

