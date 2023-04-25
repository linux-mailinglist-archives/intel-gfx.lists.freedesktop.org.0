Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BEF06EE5BE
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Apr 2023 18:30:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3DC210E09E;
	Tue, 25 Apr 2023 16:30:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74AB610E093;
 Tue, 25 Apr 2023 16:30:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682440220; x=1713976220;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=F9NuwewCZ4YRYhttAGjTtxdpYanuw5WfHG9IKvNkU44=;
 b=I0zbr6el/KLc6YHGZFk63Sh9xmFXNkqCYOu1x3f7o199ruxzcPG1S5vB
 ps0wlEBwN2qKH+11g09DCk7npegwItUmolBOxAHewUXkEdpL2tlKTiZMc
 C0t9ppdXg9os4ePukQL3oAmYDaGMO5/TRL+qpK4rNIk67vr1tBt7P7eCN
 l7ymGx4T/x0+ciYee09SY21iOWEUVWlClZEcVTdIxFSqZTzai/ajl+wQ3
 vFmSCJZ4wqDmkPsXGdSAnadM5ZnUhBHOmGPsIcmC/AIyjn8CONhBvGn8q
 PyAo6vWjvrTwkaf85vkiGWJOrMuF1iiI3G8c523N267UKpdPCjRyPnzPu w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="348744563"
X-IronPort-AV: E=Sophos;i="5.99,225,1677571200"; d="scan'208";a="348744563"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2023 09:29:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="670965201"
X-IronPort-AV: E=Sophos;i="5.99,225,1677571200"; d="scan'208";a="670965201"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.27.27])
 by orsmga006.jf.intel.com with ESMTP; 25 Apr 2023 09:29:59 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Date: Tue, 25 Apr 2023 09:24:01 -0700
Message-Id: <20230425162405.1730513-1-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v7 i-g-t 0/4] tests/slpc: Add basic IGT test
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

Borrow some subtests from xe_guc_pc. Also add per GT debugfs helpers.

v3: Review comments and add HAX patch
v4: Modify the condition for skipping the test
v5: Update the SLPC helper to per GT
v6: Review comments (Ashutosh)

Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>

Vinay Belgaumkar (4):
  lib/debugfs: Add per GT debugfs helpers
  lib: Make SLPC helper function per GT
  i915_pm_freq_api: Add some basic SLPC igt tests
  HAX: tests/i915: Try out the SLPC IGT tests

 lib/igt_debugfs.c                     |  60 ++++++++++
 lib/igt_debugfs.h                     |   4 +
 lib/igt_pm.c                          |  37 +++++--
 lib/igt_pm.h                          |   3 +-
 tests/i915/i915_pm_freq_api.c         | 153 ++++++++++++++++++++++++++
 tests/intel-ci/fast-feedback.testlist |   2 +
 tests/meson.build                     |   1 +
 7 files changed, 250 insertions(+), 10 deletions(-)
 create mode 100644 tests/i915/i915_pm_freq_api.c

-- 
2.38.1

