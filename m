Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3059A6DE888
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Apr 2023 02:39:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F65E10E0B9;
	Wed, 12 Apr 2023 00:39:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BC4510E0B9;
 Wed, 12 Apr 2023 00:39:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681259994; x=1712795994;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2gIU6cqQyiYB6JKcaV4bwxsJOQcCDQENZuAy+4pht7g=;
 b=LeLvTg5NlKhLCVzwx8FmWWni2x5KBMPZCrNEeihlmwFJ5vLK6r0QozsJ
 L2APUzsd1p8TbNUR6aIRTqNWtIFPH8oOfnpm0Va5ATKevpm+tg0NhdyhU
 Ws067JqzmY4+3kGHOcU02DCZ0lZhWtMKiJz8ouOBVG/0Bo74ITd6UMzUo
 ZSK8fH+FmG9HTY11efvEJbBOI5+xQRQl32FYBRrFRMT2kuyNgRixcHK6Z
 Mj80ZoX3clfwKQwUc4O5SZ+Pwz5k/mwT3eozmphtpECVXK3SavcbNiEPD
 AZk+1jv3SZveknkUmRntxoYeS3sZ5U3xYsMN6fD94cyBCk4s0hj5AYR/2 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10677"; a="345557263"
X-IronPort-AV: E=Sophos;i="5.98,336,1673942400"; d="scan'208";a="345557263"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2023 17:39:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10677"; a="719166833"
X-IronPort-AV: E=Sophos;i="5.98,336,1673942400"; d="scan'208";a="719166833"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.27.27])
 by orsmga008.jf.intel.com with ESMTP; 11 Apr 2023 17:39:53 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Date: Tue, 11 Apr 2023 17:42:15 -0700
Message-Id: <20230412004218.1634893-1-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v3 0/3] tests/slpc: Add basic IGT test
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

Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>

Vinay Belgaumkar (3):
  lib/debugfs: Add per GT debugfs helpers
  i915_pm_freq_api: Add some basic SLPC igt tests
  HAX: tests/i915: Try out the SLPC IGT tests

 lib/igt_debugfs.c                     |  60 ++++++++++
 lib/igt_debugfs.h                     |   4 +
 tests/i915/i915_pm_freq_api.c         | 151 ++++++++++++++++++++++++++
 tests/intel-ci/fast-feedback.testlist |   2 +
 tests/meson.build                     |   1 +
 5 files changed, 218 insertions(+)
 create mode 100644 tests/i915/i915_pm_freq_api.c

-- 
2.38.1

