Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB6349E366C
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2024 10:24:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94CDF10EC8F;
	Wed,  4 Dec 2024 09:24:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HDmLulQk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 094F510EC78;
 Wed,  4 Dec 2024 09:24:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733304240; x=1764840240;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HvKIODcseHH+pUNkb7jwbeEKjyIT9+1PeNXR++ax3Cs=;
 b=HDmLulQk3C0FOoDB5d+ZQE5doy/Cmn8GBOHZLMGmwQb6QXBOQOuPhqhN
 l+AgWB6Ctzp6YHRJNZ1/7dM0Xdcv2X3OOrDgQYzJ+ODH5PG42O1VAQ1In
 nV2bZyyHcQbXTF7amja+Rs/8kNM7/CcSvzeCaRCbT3n84iNAaUcP7ruVs
 OMsp+nBy4K7tnP4ZOR+uu/SQ2C6j41Ugd0glRJBENWseAGpABFIpoVdWW
 qINy7Grl6yxH3IIhTi9WRe9rEDNTkHwbCRTAW7RKEKRTHQcKYrUdYX+Jq
 a45OMXp81NDbzZFXnWcxpr3u5Up28FqIuwJupqW4Fir+5qNGovrnEZRov A==;
X-CSE-ConnectionGUID: aoWDVIUSQLm4CtbtAv7ofA==
X-CSE-MsgGUID: EuIubU3IRMCbYzStSOZKmQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11275"; a="44038453"
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="44038453"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 01:23:59 -0800
X-CSE-ConnectionGUID: xMVsl0wiTLyJgzEMRg/QTQ==
X-CSE-MsgGUID: ugFE0L/jQwek+l2Zsz7bIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="93555087"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 01:23:57 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 jani.nikula@linux.intel.com, imre.deak@intel.com
Subject: [PATCH 02/14] drm/i915/dp: Return early if DSC not supported
Date: Wed,  4 Dec 2024 14:56:30 +0530
Message-ID: <20241204092642.1835807-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241204092642.1835807-1-ankit.k.nautiyal@intel.com>
References: <20241204092642.1835807-1-ankit.k.nautiyal@intel.com>
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
index eb65c7a64a32..4291aa4f4ab4 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2370,9 +2370,6 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 		 intel_dp_supports_fec(intel_dp, connector, pipe_config) &&
 		 !intel_dp_is_uhbr(pipe_config));
 
-	if (!intel_dp_supports_dsc(intel_dp, connector, pipe_config))
-		return -EINVAL;
-
 	if (!intel_dp_dsc_supports_format(connector, pipe_config->output_format))
 		return -EINVAL;
 
@@ -2635,6 +2632,9 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
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

