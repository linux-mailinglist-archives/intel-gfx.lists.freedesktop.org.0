Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4760C8BAC7B
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2024 14:26:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C35DD1128F8;
	Fri,  3 May 2024 12:26:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D2o3w8kc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 987971128E8
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2024 12:26:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714739186; x=1746275186;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=F6Vu9KhVVBRA0clGIqfWHNEgfIB9BZLMSdg0hlchBSo=;
 b=D2o3w8kcMxuBNkX++9zbVyX0D2uG728PV/IGeneQqWjXOTBWHMiuVFM1
 zjOcn0mjPFV6kLY7RjTMl/hnEK+dLDiK9WNMSDprh/HiUiXkk+LzL4zZG
 2JQ4nsWEq0R5x8F1AIs/INVJG/3t5DJ36a9eDRW5gZtkQjji9CUEnND3M
 f0VSzv9Z2J6YXuUp07RuRy1qJcGOJFsPn74ovSN9w8FWtaiq0tylag1gQ
 N2slZdiO3YGRWoCqGORRLX2pfwmCpeWrzAfv28Q9zyxYb7m0SBce6dhD+
 VP/xS93DOIS/JjQFlofmdmb3y03XcvGMrP2rY+++s0sKF+1N05c9L3RNd Q==;
X-CSE-ConnectionGUID: lAe7r3GERcy7HyOPyJzQlA==
X-CSE-MsgGUID: FtrDqAZmRAyCKmO1Za2gVw==
X-IronPort-AV: E=McAfee;i="6600,9927,11062"; a="10372799"
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="10372799"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2024 05:26:26 -0700
X-CSE-ConnectionGUID: ZIHcKcWVQO2lBwbjaEPRoQ==
X-CSE-MsgGUID: 3b9xdm+3SBWsd/nISmaxIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="27463951"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 03 May 2024 05:26:23 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 03 May 2024 15:26:22 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 33/35] drm/i915/bios: Define VBT block 55 (Compression
 Parameters)
Date: Fri,  3 May 2024 15:24:47 +0300
Message-ID: <20240503122449.27266-34-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240503122449.27266-1-ville.syrjala@linux.intel.com>
References: <20240503122449.27266-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Define the contents of the obsolete VBT block 55 (Compression
Parameters).

This was some early attempt at defining the compression
parameters. However the spec says:
"This block is obsolete and should not be consumed for any
 compression programming."

Block 56 is the replacement that should actually be used.

So let's just name the obsolete old block but not even
bother defining the contents.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index 3bcb9fb5b706..ea2edac842b0 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -184,6 +184,7 @@ enum bdb_block_id {
 	BDB_MIPI_CONFIG			= 52, /* 175+ */
 	BDB_MIPI_SEQUENCE		= 53, /* 177+ */
 	BDB_RGB_PALETTE			= 54, /* 180+ */
+	BDB_COMPRESSION_PARAMETERS_OLD	= 55, /* 198-212 */
 	BDB_COMPRESSION_PARAMETERS	= 56, /* 213+ */
 	BDB_VSWING_PREEMPH		= 57, /* 218+ */
 	BDB_GENERIC_DTD			= 58, /* 229+ */
-- 
2.43.2

