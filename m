Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03C6597D500
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2024 13:57:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27E2510E0A4;
	Fri, 20 Sep 2024 11:57:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kmheiADS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 255F510E0A4;
 Fri, 20 Sep 2024 11:57:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726833420; x=1758369420;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=bkDm3YWx2/Kudp7aQloswpjkWIquehbkozSL84H5V7s=;
 b=kmheiADSvd2lvCq3qBC4dSw9cRw1s9JV2+uR3sE/L5gWVIBhaw7vIW7V
 cZeWvSWc2yu5JTZyajVLvhRCSQ/QNZD5gusnWZ9ure5lh78jXi8qCJo+6
 WMP7IfiIkEInIByknv3VHSdc5CTkX8gcQvnGkVKNrV3kvOXGppsUm8kUM
 oaKEaZSXD8ljFWeFhMpWiWn6mOX8JOBC1w8wByN0K1qUk+zXvZDWimzvy
 1sfI5HoDJ30TDqC2qVeF0EosZlyaFVS6Z3F0jOUEG7s4XGV+I7Ihq5tPK
 mP/WrY5HDD79swpzY7M2T8t2SFvDeap0pASuUq384bYbvg6LgfjGQhgPZ w==;
X-CSE-ConnectionGUID: FkjZDW/vSj2WDl7YIM0CUw==
X-CSE-MsgGUID: PJD9BXkQTJC5nG4tuep+yg==
X-IronPort-AV: E=McAfee;i="6700,10204,11200"; a="25779516"
X-IronPort-AV: E=Sophos;i="6.10,244,1719903600"; d="scan'208";a="25779516"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2024 04:57:00 -0700
X-CSE-ConnectionGUID: 3bfNXmlKRlWMAWAkYJ+dcQ==
X-CSE-MsgGUID: BjQyDZQ+SB6Ff1vBtxHhsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,244,1719903600"; d="scan'208";a="101013315"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.155])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2024 04:56:58 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 0/9] drm/i915/dp: clean up DP testing
Date: Fri, 20 Sep 2024 14:56:42 +0300
Message-Id: <cover.1726833193.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Whenever I look at doing anything in intel_dp.c I think it's grown too
big. It's over 7k lines.

The DP test functionality is fairly isolated, and mostly irrelevant for
normal operation. Move it all to its own file. This reduces intel_dp.c
by about 500 lines, and intel_display_debugfs.c by about 200 lines. And
intel_dp->compliance is now fully handled within intel_dp_test.c.

BR,
Jani.

Jani Nikula (9):
  drm/i915/dp: split out intel_dp_test.[ch] to a dedicated file
  drm/i915/dp: fix style issues in intel_dp_test.c
  drm/i915/dp: convert intel_dp_test.c struct intel_display
  drm/i915/dp: clean up intel_dp_test.[ch] interface
  drm/i915/dp: move DP test debugfs files next to the functionality
  drm/i915/dp: fix style issues in DP test debugfs
  drm/i915/display: remove the loop in fifo underrun debugfs file
    creation
  drm/i915/dp: convert DP test debugfs to struct intel_display
  drm/i915/dp: add intel_dp_test_reset() and intel_dp_test_short_pulse()

 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/g4x_dp.c         |   7 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |   7 +-
 .../drm/i915/display/intel_display_debugfs.c  | 214 +----
 drivers/gpu/drm/i915/display/intel_dp.c       | 520 +-----------
 drivers/gpu/drm/i915/display/intel_dp.h       |   9 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |   5 +-
 drivers/gpu/drm/i915/display/intel_dp_test.c  | 765 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp_test.h  |  23 +
 drivers/gpu/drm/xe/Makefile                   |   1 +
 10 files changed, 816 insertions(+), 736 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_dp_test.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_dp_test.h

-- 
2.39.2

