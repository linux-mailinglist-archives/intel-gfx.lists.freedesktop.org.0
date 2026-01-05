Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EA4ACF35BC
	for <lists+intel-gfx@lfdr.de>; Mon, 05 Jan 2026 12:51:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A45D010E3B8;
	Mon,  5 Jan 2026 11:51:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ktVNpvpQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B7AA10E180;
 Mon,  5 Jan 2026 11:51:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767613911; x=1799149911;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=UugEG+KoOSNotGntGGP0Ue9pEmiJjI6HCUw5ca/iisI=;
 b=ktVNpvpQqoR39IwJvBQssy3VHNHHURI7zx3XSvFXvviJLmAb3LQfv77s
 Q75Y7YWDy8rQsNjZojpnnQkRrvolzFHqN+FmjT/rkHKjWQ4BovI/iUry8
 qIcITNze8r/F6OpZiyIo0iogfMNkQN1wCY4opNrnkg0eETniStIzwZ99u
 zTi5K87qSizLxmP/q3M21r22Ih/8pQE7kQl3vx4ob9eXVcvj4boG3UD5x
 3zFamL8IwEsGA1GTAaK6VWwSFA5jSL14v3snJED4kMOOKnw5o0+IMYO1n
 2AO7Ll4AZ8cfXQtawdRxp2c4VersQypG06g26YsGSle+Lss8CSr7QUllg Q==;
X-CSE-ConnectionGUID: E3uSlBYMRSmm2vql1+zogQ==
X-CSE-MsgGUID: KoA0hlwISna5zMKcrWHujg==
X-IronPort-AV: E=McAfee;i="6800,10657,11661"; a="69050652"
X-IronPort-AV: E=Sophos;i="6.21,203,1763452800"; d="scan'208";a="69050652"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 03:51:51 -0800
X-CSE-ConnectionGUID: gJSOQZ+CQk6uwXOW4yqNsw==
X-CSE-MsgGUID: IrY1MdcdQweC5VT/iF7A+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,203,1763452800"; d="scan'208";a="202614041"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 03:51:49 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com,
	Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 0/9] drm/i915/display: Fix the SPDX license identifier for C
 headers
Date: Mon,  5 Jan 2026 17:05:34 +0530
Message-ID: <20260105113544.574323-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
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

As per the Linux kernel licensing rules [1], the SPDX license identifier
comment style for a C header file should be:
/* SPDX-License-Identifier: <SPDX License Expression> */

This series fixes the SPDX identifier comments in the header files under
drm/i915/display to align with these rules.

Note : There are some older files that do not have the SPDX license
identifiers at all. Perhaps those can be addressed separately in a future
cleanup series.

[1] https://www.kernel.org/doc/html/latest/process/license-rules.html

Ankit Nautiyal (9):
  drm/i915/intel_alpm: Fix the SPDX identifier comment
  drm/i915/intel_cx0_phy: Fix the SPDX identifier comment
  drm/i915/intel_cx0_phy_regs: Fix the SPDX identifier comment
  drm/i915/intel_display_params: Fix the SPDX identifier comment
  drm/i915/intel_dsb: Fix the SPDX identifier comment
  drm/i915/intel_dsb_buffer: Fix the SPDX identifier comment
  drm/i915/intel_gvt_api: Fix the SPDX identifier comment
  drm/i915/intel_lt_phy: Fix the SPDX identifier comment
  drm/i915/lt_phy_regs: Fix the SPDX identifier comment

 drivers/gpu/drm/i915/display/intel_alpm.h           | 4 ++--
 drivers/gpu/drm/i915/display/intel_cx0_phy.h        | 2 +-
 drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h   | 4 ++--
 drivers/gpu/drm/i915/display/intel_display_params.h | 2 +-
 drivers/gpu/drm/i915/display/intel_dsb.h            | 4 ++--
 drivers/gpu/drm/i915/display/intel_dsb_buffer.h     | 4 ++--
 drivers/gpu/drm/i915/display/intel_gvt_api.h        | 4 ++--
 drivers/gpu/drm/i915/display/intel_lt_phy.h         | 3 ++-
 drivers/gpu/drm/i915/display/intel_lt_phy_regs.h    | 4 ++--
 9 files changed, 16 insertions(+), 15 deletions(-)

-- 
2.45.2

