Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE80AB2BB5E
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Aug 2025 10:06:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E832110E549;
	Tue, 19 Aug 2025 08:06:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HwFFK6eQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A11289A94;
 Tue, 19 Aug 2025 08:06:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755590776; x=1787126776;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=eoSpmm/Zk/fHsw/feWQSOOO3Zm4aiAVqqJ6BR4MCPz4=;
 b=HwFFK6eQs004pib0LeKLlKVamFMegg4a28RjtaWcGK+e67+oyk7UHGJK
 nuX9vKgxNMX9UH3v5U8Q4SNKXshOwWPlhYCirrr1NB/m6G/MqYNnE0z1P
 3PJn+P44PvJ59YpKp/F+6zt8yen5Eovaq2Rg/fIUBu9YsjewxDj+K1+qh
 L2pG14BV5mSJV27imKR2udTNNwKXyA7TJ/lM789bwRxG/7O2A2W23dy0l
 8XAX0qqpb14bAsF1JFqXZ4ki6cIC+zfHVpAEL7tqNSzAdq1WUI7aC6HYg
 44Sva5XmMi8wvqhpIdi1SY9w4v5OWwMuu1Blt91GYgCKtMhVAN+eZ0NwW g==;
X-CSE-ConnectionGUID: OlJ7fEwmTz2dlpjvXTFNWg==
X-CSE-MsgGUID: RmZtbrORTEG0bYbnOV5xhw==
X-IronPort-AV: E=McAfee;i="6800,10657,11526"; a="68923524"
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="68923524"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 01:06:16 -0700
X-CSE-ConnectionGUID: QC/nq5D/RJiVxunrZ5ShuA==
X-CSE-MsgGUID: Dk4JlWVPQu6zx/+ShNdUTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="204932805"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa001.jf.intel.com with ESMTP; 19 Aug 2025 01:06:14 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, ankit.k.nautiyal@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v5 0/3] eDP Data Override
Date: Tue, 19 Aug 2025 13:35:59 +0530
Message-Id: <20250819080602.84826-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
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

When using link rates 2.43 and 6.75 causes a strong noise for WIFI
bands. Its recommended we use 2.7 and 8.1 Gbps instead.
The solution proposed was a static vbt field that provides us with a
mask of rates which need to be skipped in favor of the next higher link
rate.

--v1
-Optimize looping

--v2
-Break 2nd patch to two parts
-Rename intel bios parse function
-Create seprate function for setting rates

-v3
-Fix VBT definition
-Rename intel bios function
-Make the function only return mask
-Protect against broken VBT

--v4
-Fix function naming
-Define macro for num of rates

HSD:14022096069
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Suraj Kandpal (3):
  drm/i915/vbt: Add eDP Data rate overrride field in VBT
  drm/i915/bios: Add function to check if edp data override is needed
  drm/i915/edp: eDP Data Overrride

 drivers/gpu/drm/i915/display/intel_bios.c     | 46 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_bios.h     |  4 ++
 drivers/gpu/drm/i915/display/intel_dp.c       | 22 +++++++++
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 17 +++++++
 4 files changed, 88 insertions(+), 1 deletion(-)

-- 
2.34.1

