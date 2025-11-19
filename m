Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B9ECC6F1E8
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Nov 2025 15:04:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71FF010E625;
	Wed, 19 Nov 2025 14:04:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TNL6Xolv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C6B710E625;
 Wed, 19 Nov 2025 14:04:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763561078; x=1795097078;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=HSdPweAl7FLGbU6IXU4jJXpCzragn7Cu3V7NUL0ie6w=;
 b=TNL6Xolvl5/wTcvKLsRChiJjiNL1l3qvVX15C3YJDAabutiP0Z6hdaKU
 xU7zwodDNq/muCHUzuvtb/yXYVefbAAt2AO7ptLNgDaH6CEQvHNSRlGvW
 g7P9uPXh4NTaVFW1r/Loub+HLEwqL5Flt6+rKv0PZ3Z3rmT6jYkxbUU55
 rPr4I/3eUgiQQAcOdii5i2zkdLr0wbqSC9hIZRu7fUFCTWzxwCTdUdpoE
 HDNutWqjOnn8P76iYrFS8nbJmbcBTvHZU53Hi7WSLoc//t8Y18VwEjpYV
 XnA7zZqf/OJ0sQIW8l29Fb25A99+IQMkmBa9USahBfd7C92qhL3ZLchPz Q==;
X-CSE-ConnectionGUID: kK/Lu6QOTaazA0ubXVDxyQ==
X-CSE-MsgGUID: 2eyjOYozR6qva0ZNw29uyw==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="91077049"
X-IronPort-AV: E=Sophos;i="6.19,315,1754982000"; d="scan'208";a="91077049"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 06:04:34 -0800
X-CSE-ConnectionGUID: dY+KNiu4Q0y6DBziFFuS8w==
X-CSE-MsgGUID: d9QO1ii8SPauechTkAIj0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,315,1754982000"; d="scan'208";a="191191840"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 06:04:31 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, ville.syrjala@linux.intel.com,
 animesh.manna@intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 0/5] LOBF fixes
Date: Wed, 19 Nov 2025 19:21:47 +0530
Message-ID: <20251119135152.673276-1-ankit.k.nautiyal@intel.com>
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

Fix lobf to use computed guardband and set context latency.
Also disable LOBF while switching to LRR/seamlessMN modes.

Rev2:
 - Use is_enabling/disabling macros for lobf checks and other suggested
   changes from Ville.

Ankit Nautiyal (5):
  drm/i915/alpm: Compute LOBF late after guardband is already determined
  drm/i915/alpm: Allow LOBF only if window1 > alpm check_entry lines
  drm/i915/alpm: Allow LOBF only for platform that have Always on VRR TG
  drm/i915/alpm: Simplify and align LOBF checks in pre/post plane update
  drm/i915/alpm: Disable LOBF around transitioning for LRR/seamless MN

 drivers/gpu/drm/i915/display/intel_alpm.c    | 134 ++++++++++++-------
 drivers/gpu/drm/i915/display/intel_alpm.h    |   9 +-
 drivers/gpu/drm/i915/display/intel_display.c |  32 ++++-
 drivers/gpu/drm/i915/display/intel_dp.c      |   2 +
 drivers/gpu/drm/i915/display/intel_intel.c   |   0
 drivers/gpu/drm/i915/display/intel_vrr.c     |   2 +
 6 files changed, 125 insertions(+), 54 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_intel.c

-- 
2.45.2

