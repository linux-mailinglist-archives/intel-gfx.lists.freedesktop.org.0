Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 159599D3871
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 11:35:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0A6B10E6F2;
	Wed, 20 Nov 2024 10:35:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nz65ZCG1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D952410E6DB;
 Wed, 20 Nov 2024 10:35:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732098929; x=1763634929;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UVJ5rRhLssA+ssGPifRnsdyQsJ6+1UzZkhoYv5et26A=;
 b=nz65ZCG1WryQH/kc5ZVDo+loyTkZxcldw0Dj9Br45moQYZeRRXnLdzJD
 9G6wmc6QyR9owQ6j6Px7NOyZ3VJrBhszpwOCgUhozu3/dXm/n1TYRooUP
 KmEFs/CQYgh3OEEde5hPI4eTRKo1PXBXV3CxAemjsTTuCSFytb7I+PGo4
 mzhWnTXnUzPhgY6Rz3MquAojLh83PSCHVVPptuxACYaQHv8DS5X5UrKL3
 HRXnoMN3V/s4OQ8Gm04opgTodgxj6pRavy8aWOXdO6+NGWZLwwcOLxQXW
 tcBj46kla6LmiCuwm7JTUSj2hAxZHEN+ZkSwhGCcxkiwhogTsmTvK40MM w==;
X-CSE-ConnectionGUID: FusswsjnQz6bQsjKKb770g==
X-CSE-MsgGUID: 5kzFxgV9Qd+hSDbRk2do9w==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="31520051"
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="31520051"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 02:35:29 -0800
X-CSE-ConnectionGUID: 1EBRZb19QtWpoPE/V3p3nQ==
X-CSE-MsgGUID: MXDjsqJIRuWHkEE3C9s/gQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="89674047"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 02:35:28 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 jani.nikula@linux.intel.com, imre.deak@intel.com
Subject: [PATCH 02/12] drm/i915/dp: Return early if DSC not supported
Date: Wed, 20 Nov 2024 16:07:52 +0530
Message-ID: <20241120103802.134295-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241120103802.134295-1-ankit.k.nautiyal@intel.com>
References: <20241120103802.134295-1-ankit.k.nautiyal@intel.com>
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
---
 drivers/gpu/drm/i915/display/intel_dp.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index db9ddbcdd159..dee15a05e7fd 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2378,9 +2378,6 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 		 intel_dp_supports_fec(intel_dp, connector, pipe_config) &&
 		 !intel_dp_is_uhbr(pipe_config));
 
-	if (!intel_dp_supports_dsc(intel_dp, connector, pipe_config))
-		return -EINVAL;
-
 	if (!intel_dp_dsc_supports_format(connector, pipe_config->output_format))
 		return -EINVAL;
 
@@ -2643,6 +2640,9 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
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

