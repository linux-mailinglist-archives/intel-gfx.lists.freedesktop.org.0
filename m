Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9ADCB91D67
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Sep 2025 17:03:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A0DC10E477;
	Mon, 22 Sep 2025 15:03:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="enyi9zMR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F032210E477;
 Mon, 22 Sep 2025 15:03:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758553401; x=1790089401;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=YpqmWVkQpvj6Wfty+NAkbwjzMFJU0Q1lMX2+UakAIwY=;
 b=enyi9zMRb0C8/pOYPiv4lE3AvtwnqEWEinss6hQAvKUOqfJgwfnlr8hU
 4VSfd/M/cn2TkKb0kV01QPUtdVgvYQIb5NMbfnPaPkBoWeCCLhZurGfkk
 wxKmqJIQIt7Krb8r+9hZzyvg6Op9MJCLv4Bp93h1N/EhY47+C7iBMI/wu
 gli47FAv79sEa8mp5nRhR1xzcc2vUD6oNIcSr/wmSrEu0RLtyLXW7tCJj
 ts0288OhSrcRGyesbE2hlXyRznb/3zq2pOrkRG6G3y8zLwReqMNitNNxV
 P9cwHnQJG0jlt/Xdox0huYTcJHm73p16qmtU94pwa1inhXmdqJvC8BqZP A==;
X-CSE-ConnectionGUID: qwi6mGdNTsOEw/0sNXk6ug==
X-CSE-MsgGUID: P4wumxaoQrmtmg1tJY2VSA==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="71922173"
X-IronPort-AV: E=Sophos;i="6.18,285,1751266800"; d="scan'208";a="71922173"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2025 08:03:20 -0700
X-CSE-ConnectionGUID: dBrRCaPjQ4OVU0WvtqtcXA==
X-CSE-MsgGUID: X+d7Z5LoSCKTKol7wupAoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,285,1751266800"; d="scan'208";a="180511444"
Received: from dbhadane-mobl1.iind.intel.com ([10.190.239.58])
 by orviesa003.jf.intel.com with ESMTP; 22 Sep 2025 08:03:19 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Subject: [PATCH v3 0/3] drm/i915/xe3: Restrict PTL intel_encoder_is_c10phy()
 to only PHY A
Date: Mon, 22 Sep 2025 20:33:14 +0530
Message-ID: <20250922150317.2334680-1-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.51.0
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

- Add WCL as subplatform and update the definition struct. 
- Update condition required to distinguish WCL C10 PHY selection
on port B.

Dnyaneshwar Bhadane (3):
  drm/pcids: Split PTL pciids group to make wcl subplatform
  drm/i915/display: Add definition for wcl as subplatform
  drm/i915/xe3: Restrict PTL intel_encoder_is_c10phy() to only PHY A

 drivers/gpu/drm/i915/display/intel_cx0_phy.c       | 14 ++++++--------
 .../gpu/drm/i915/display/intel_display_device.c    | 13 +++++++++++++
 .../gpu/drm/i915/display/intel_display_device.h    |  4 +++-
 drivers/gpu/drm/xe/xe_pci.c                        |  1 +
 include/drm/intel/pciids.h                         |  5 ++++-
 5 files changed, 27 insertions(+), 10 deletions(-)

-- 
2.51.0

