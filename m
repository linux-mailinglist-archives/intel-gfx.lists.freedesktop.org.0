Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AC8416E0350
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Apr 2023 02:46:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8917510E9EC;
	Thu, 13 Apr 2023 00:46:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB30E10E9EC;
 Thu, 13 Apr 2023 00:46:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681346769; x=1712882769;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lo19v86+jWv5u463TMiwZrnwIJ4aRuiW7TkQoAVrs9M=;
 b=Qi8BRuYZOrYd1nIJQ137Tx6ruFFf0OU5L1+9WQ2xMOWPdqoKEmOX8j/U
 IzEVlZA6TxtnkAdxHkHus4V4kiOfKjKe+iK7lQ8uXsvVOlkcambgFHNJ3
 zbfNFCDLP2h5ycYxpTUXeQo+2hMTMaU04rd0LiVMT2RMPRwheiNAGwQv1
 ioUNIJLEmUJJo9lWdAf3EloLvKoDxAOlVtTn8SvWwSlI0Ab2wpWOn/439
 Qch7SUSYbXsjDpqtGTBYaMVdQNv1T8+TF/28Bv78ju3Ncxv1BM60wBsDO
 pb5W7Ka2lTibug0Dzw2V59dBgBlSnW7fu9syVmEuv89DmAGxGAzxGhpQS Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="371907837"
X-IronPort-AV: E=Sophos;i="5.98,339,1673942400"; d="scan'208";a="371907837"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2023 17:46:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="753748404"
X-IronPort-AV: E=Sophos;i="5.98,339,1673942400"; d="scan'208";a="753748404"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.27.27])
 by fmsmga008.fm.intel.com with ESMTP; 12 Apr 2023 17:46:08 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Date: Wed, 12 Apr 2023 17:48:47 -0700
Message-Id: <20230413004850.1985672-1-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 i-g-t 0/3] tests/slpc: Add basic IGT test
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

Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>

Vinay Belgaumkar (3):
  lib/debugfs: Add per GT debugfs helpers
  i915_pm_freq_api: Add some basic SLPC igt tests
  HAX: tests/i915: Try out the SLPC IGT tests

 lib/igt_debugfs.c                     |  60 ++++++++++
 lib/igt_debugfs.h                     |   4 +
 tests/i915/i915_pm_freq_api.c         | 152 ++++++++++++++++++++++++++
 tests/intel-ci/fast-feedback.testlist |   2 +
 tests/meson.build                     |   1 +
 5 files changed, 219 insertions(+)
 create mode 100644 tests/i915/i915_pm_freq_api.c

-- 
2.38.1

