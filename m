Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A44AB6EB689
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Apr 2023 03:01:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4139610E102;
	Sat, 22 Apr 2023 01:01:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 818E210E102;
 Sat, 22 Apr 2023 01:01:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682125284; x=1713661284;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xGc8ODmnrQ14sisQOIZ5mfniYRRHdsZIi4vqPZ5Bt1Q=;
 b=Vh1PFVqcFbg1eUg89sgtpLqKZ9y3PsaCrud0bY9QxbRXh78jqbR4vva9
 2XgvEEGfIXQdykaw7iiqhK67/csBbaOUrDtA0MzhdFmqd9Uxw+u8Rz9nu
 DB+bWFVToGFJDt+x9NaNAkbe4jQYToFG1lU9zu6oeVkZD0e0v6UwLBuO+
 COqzK0OCTCymgtTKw8kenzaeORuir/syOVP3FtJDoSDPth6K00dDzg4aj
 tauBH9XAkw8sZpcJaiLPwOoG4QJu90qVZzSwLzjTYt1IwwQqGtTcoHX1u
 yGdNTPv86zI5TjLWr4LDDGYDHCbDyVbV+cJOCnwvh45OwLOi4fQMGZUTO A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10687"; a="411385206"
X-IronPort-AV: E=Sophos;i="5.99,216,1677571200"; d="scan'208";a="411385206"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 18:01:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10687"; a="938678615"
X-IronPort-AV: E=Sophos;i="5.99,216,1677571200"; d="scan'208";a="938678615"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.27.27])
 by fmsmga006.fm.intel.com with ESMTP; 21 Apr 2023 18:01:23 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Date: Fri, 21 Apr 2023 18:00:59 -0700
Message-Id: <20230422010103.1028886-1-vinay.belgaumkar@intel.com>
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

Borrow some subtests from xe_guc_pc. Also add per GT SLPC debugfs helpers.

v3: Review comments and add HAX patch
v4: Modify the condition for skipping the test
v5: Update the SLPC helper to per GT
v6: Review comments (Ashutosh)
v6: Review comments for SLPC debugfs patch (Ashutosh)
v7: More comments (Ashutosh)

Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>


Vinay Belgaumkar (4):
  lib/debugfs: Add per GT debugfs helpers
  lib: Make SLPC helper function per GT
  i915_pm_freq_api: Add some basic SLPC igt tests
  HAX: tests/i915: Try out the SLPC IGT tests

 lib/igt_debugfs.c                     |  60 ++++++++++
 lib/igt_debugfs.h                     |   4 +
 lib/igt_pm.c                          |  34 ++++--
 lib/igt_pm.h                          |   3 +-
 tests/i915/i915_pm_freq_api.c         | 152 ++++++++++++++++++++++++++
 tests/intel-ci/fast-feedback.testlist |   2 +
 tests/meson.build                     |   1 +
 7 files changed, 246 insertions(+), 10 deletions(-)
 create mode 100644 tests/i915/i915_pm_freq_api.c

-- 
2.38.1

