Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DB176E2A88
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Apr 2023 21:15:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8778710EE6C;
	Fri, 14 Apr 2023 19:15:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F08310EE6C;
 Fri, 14 Apr 2023 19:15:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681499728; x=1713035728;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Gdovd2FoAEpwgEND2sQIyYJQdTAY75wHsZHLvjpyCBA=;
 b=MjfeEcfwg6Ny9Bvql4ZO5i9Jg2waCndVPmdlz/vqNlIeEQm10EvtPlCT
 hgRt0+GDukq6NZC3UQSJ0nvepwAbLytvG+LNdXvsDnhikRRql+aITURaB
 R8cbBPClDYU4KjrEyN6u8PxcrPZuYhDEZqnWuW6nuFMauluo+m9FRG/qA
 beoWDg2ea9T3KXJ5yaEAvS8As5N8agILts/iK+x2kNhmlrIHjnfi6e9kG
 KUxcGkm4BxixVIOgSVBw0+zbbDuMY+j4emDiPLsbCKucpnf+NQJbe/7JK
 09g5jRmz26RifyiHhKXW3B0vvcKfQ4lODV2oALmFHor8QyUAQ7ttJi2O/ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10680"; a="430841933"
X-IronPort-AV: E=Sophos;i="5.99,197,1677571200"; d="scan'208";a="430841933"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2023 12:15:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10680"; a="667304436"
X-IronPort-AV: E=Sophos;i="5.99,197,1677571200"; d="scan'208";a="667304436"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.27.27])
 by orsmga006.jf.intel.com with ESMTP; 14 Apr 2023 12:15:28 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Date: Fri, 14 Apr 2023 12:16:35 -0700
Message-Id: <20230414191639.2565389-1-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 i-g-t 0/4] tests/slpc: Add basic IGT test
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
 lib/igt_pm.c                          |  36 ++++--
 lib/igt_pm.h                          |   3 +-
 tests/i915/i915_pm_freq_api.c         | 152 ++++++++++++++++++++++++++
 tests/intel-ci/fast-feedback.testlist |   2 +
 tests/meson.build                     |   1 +
 7 files changed, 247 insertions(+), 11 deletions(-)
 create mode 100644 tests/i915/i915_pm_freq_api.c

-- 
2.38.1

