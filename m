Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFB77A01E91
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jan 2025 05:36:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9AA410E19F;
	Mon,  6 Jan 2025 04:36:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FwrTjOI7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D093510E141;
 Mon,  6 Jan 2025 04:36:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736138176; x=1767674176;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2bJVNPN2BdaVYG8KjDOKOhO4HhDfBgR7aPHnIlIXPZo=;
 b=FwrTjOI7CoqhrXpH2e+QX0DDKPc4/Dth0NdGqKibmlF+MkurCTGVTt6W
 yyr45mDlNCRcoy2AH7BydX3j+upfyyplWS+nxKguPT1Lzd3OTNWo7Isnn
 sw+8l/oi3bd68K34NzcP4rAzFFU2FKDA+KIKiKs7I2O/DioZqjfl8ZkB+
 s+5mlCfiE8+4ApMrDj9GsyRVhBNK3IJNt8ispEUsSLIB1ExUHmu8OIgz3
 Xwk2JBwJG64/7z+7jswlEQlQO8U7dtFCOk2Q29/jAbmxqnLPXYBkDQMC5
 S0vdTMAJx8VqRZdLPjfuJuv4tLBkP9RYAbcnW3+Fm+sCW6YZdD+cHyh5E g==;
X-CSE-ConnectionGUID: YQQBkhibS8iquwUzYMSSlg==
X-CSE-MsgGUID: ttMAIvu0Q+W6SPNTT+wMlA==
X-IronPort-AV: E=McAfee;i="6700,10204,11306"; a="23880593"
X-IronPort-AV: E=Sophos;i="6.12,292,1728975600"; d="scan'208";a="23880593"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2025 20:36:15 -0800
X-CSE-ConnectionGUID: fpom6nXlRDuBBTqEbuGcOw==
X-CSE-MsgGUID: C5FJ5vDpS9ufY6o3foYGOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,292,1728975600"; d="scan'208";a="107306328"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orviesa004.jf.intel.com with ESMTP; 05 Jan 2025 20:36:13 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, jani.nikula@intel.com, jeevan.b@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v3 0/6] LOBF enablement fix
Date: Mon,  6 Jan 2025 09:45:10 +0530
Message-Id: <20250106041516.924101-1-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
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

v1: Initial version.
v2: Addressed review comments from Jani.
v3: Addressed review comments from Jouni.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>

Animesh Manna (6):
  drm/i915/lobf: Add lobf enablement in post plane update
  drm/i915/lobf: Add fixed refresh rate check in compute_config()
  drm/i915/lobf: Update lobf if any change in dependent parameters
  drm/i915/lobf: Add debug interface for lobf
  drm/i915/lobf: Check for sink error and disable LOBF
  drm/i915/lobf: Add debug print for LOBF

 drivers/gpu/drm/i915/display/intel_alpm.c     | 138 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_alpm.h     |   6 +
 drivers/gpu/drm/i915/display/intel_ddi.c      |   2 +
 drivers/gpu/drm/i915/display/intel_display.c  |   3 +
 .../drm/i915/display/intel_display_types.h    |   7 +
 drivers/gpu/drm/i915/display/intel_dp.c       |   2 +
 6 files changed, 157 insertions(+), 1 deletion(-)

-- 
2.29.0

