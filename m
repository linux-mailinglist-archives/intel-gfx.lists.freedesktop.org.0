Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D3EA06E179E
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Apr 2023 00:41:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9833510E0D2;
	Thu, 13 Apr 2023 22:41:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD6FC10E0B8;
 Thu, 13 Apr 2023 22:41:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681425691; x=1712961691;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=FCCEh8xDSKV5Qw+1Z/0B4Qnj9BeauPQltzrXKekhxIg=;
 b=NSSyI7ghmWshKTjzXuSJAbZ5AV3fg5HeYFGiKpws4pVgRvfglFH/E/0c
 ME+GH9+fSTSqECaOjtRERvBbXQH7W4qJayZF1AxNBBeQ+rjZS1oSt/18/
 +czsJeCV67e/L9SYh1//iqXn0HTk2lftmRVIOICzFLPYXGeoJVXw2b2ru
 geWmooYYX0OVQ/Uc/7trHgMIDeYzqO4ZYCOgOZVX0z5HXhJVzTrdStAri
 7Uu/S9uQJQcRn+FmyTlLuHVZi2l1pRg5XmT4rO8x0PC1YdAATBNC33Kgw
 gj2Pvgrau3sjmaQXvPVrokvZUA4k9VU8RUp6QTix1yYI6Dfn1tMLDd82X A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="344322239"
X-IronPort-AV: E=Sophos;i="5.99,195,1677571200"; d="scan'208";a="344322239"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 15:41:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="863960664"
X-IronPort-AV: E=Sophos;i="5.99,195,1677571200"; d="scan'208";a="863960664"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.27.27])
 by orsmga005.jf.intel.com with ESMTP; 13 Apr 2023 15:41:30 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Date: Thu, 13 Apr 2023 15:44:10 -0700
Message-Id: <20230413224414.2313507-1-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 i-g-t 0/4] tests/slpc: Add basic IGT test
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

Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>

Vinay Belgaumkar (4):
  lib/debugfs: Add per GT debugfs helpers
  lib: Make SLPC helper function per GT
  i915_pm_freq_api: Add some basic SLPC igt tests
  HAX: tests/i915: Try out the SLPC IGT tests

 lib/igt_debugfs.c                     |  60 ++++++++++
 lib/igt_debugfs.h                     |   4 +
 lib/igt_pm.c                          |  20 ++--
 lib/igt_pm.h                          |   2 +-
 tests/i915/i915_pm_freq_api.c         | 152 ++++++++++++++++++++++++++
 tests/i915/i915_pm_rps.c              |   6 +-
 tests/intel-ci/fast-feedback.testlist |   2 +
 tests/meson.build                     |   1 +
 8 files changed, 233 insertions(+), 14 deletions(-)
 create mode 100644 tests/i915/i915_pm_freq_api.c

-- 
2.38.1

