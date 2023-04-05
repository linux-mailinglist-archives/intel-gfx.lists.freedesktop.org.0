Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8E3C6D7510
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Apr 2023 09:14:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B6D610E84C;
	Wed,  5 Apr 2023 07:14:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4397F10E30F
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Apr 2023 07:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680678874; x=1712214874;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=H0W/50PTyMQDD4rS/NAMkNzkMYX8H0KCq3EsWsL7pGQ=;
 b=fgNu3t3BRv+GawY5VImQNT7RXgtlnBeSMNqyQoQQUf43KPh+wFnLRfsA
 ko3KtoA5S3lMAxWq5lCdVUiD1c4PCGBCanFlxL9rVLJA+wfZNOH9wWEFU
 bcl50UtMwOzYcfA93pw9RqxnmILvFDADv0ha/FV0Q1ZbI1JvfnnthaPFh
 tY/HI41Oj/jc3hMGXtUru1WYSTzVcHkOyiCRUesXMZl/pJDHHzXgW8ZBw
 QRhEW7awyyzfTS+wHrG63EYEoNht0Y37m48TtbnoRfgsI5+ri9ieVpgww
 c5ntzWtBEoPOgkPucx1H/ZoR7Gd7CJ4QCzNPSXjt5teBV+ABENvaAaSsf g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="370211190"
X-IronPort-AV: E=Sophos;i="5.98,319,1673942400"; d="scan'208";a="370211190"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2023 00:14:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="636797363"
X-IronPort-AV: E=Sophos;i="5.98,319,1673942400"; d="scan'208";a="636797363"
Received: from rtauro-desk.iind.intel.com ([10.190.239.41])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2023 00:14:24 -0700
From: Riana Tauro <riana.tauro@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Apr 2023 12:44:28 +0530
Message-Id: <20230405071432.3582592-1-riana.tauro@intel.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v10 0/4] Add hwmon support for dgfx selftests
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

Rename librapl library to libpower. Add hwmon support in libpower for
dgfx.
Use libpower in selftests.

Rev2 : Update commit message
Rev3 : Remove redundant code
Rev4 : Add hwmon per-gt support
Rev5 : No functional changes.
       Change author for last patch
Rev6 : re-order libpower library patch
       add check for single gt in hwmon function
Rev7 : Same as Rev 5 with a single gt check
       in hwmon function
Rev8 : Skip power comparison in live_rc6_manual for
       discrete graphics
Rev9 : Update commit message
Rev10: No functional changes
       Fix a spelling

Riana Tauro (3):
  drm/i915/selftests: Rename librapl library to libpower
  drm/i915/hwmon: Add helper function to obtain energy values
  drm/i915/selftests: skip comparison of power for discrete graphics

Tilak Tangudu (1):
  drm/i915/selftests: Add hwmon support in libpower for dgfx

 drivers/gpu/drm/i915/Makefile             |  2 +-
 drivers/gpu/drm/i915/gt/selftest_rc6.c    | 22 ++++++++++-----
 drivers/gpu/drm/i915/gt/selftest_rps.c    | 26 ++++++++---------
 drivers/gpu/drm/i915/gt/selftest_slpc.c   |  4 +--
 drivers/gpu/drm/i915/i915_hwmon.c         | 28 +++++++++++++++++++
 drivers/gpu/drm/i915/i915_hwmon.h         |  3 ++
 drivers/gpu/drm/i915/selftests/libpower.c | 33 ++++++++++++++++++++++
 drivers/gpu/drm/i915/selftests/libpower.h | 19 +++++++++++++
 drivers/gpu/drm/i915/selftests/librapl.c  | 34 -----------------------
 drivers/gpu/drm/i915/selftests/librapl.h  | 17 ------------
 10 files changed, 114 insertions(+), 74 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/selftests/libpower.c
 create mode 100644 drivers/gpu/drm/i915/selftests/libpower.h
 delete mode 100644 drivers/gpu/drm/i915/selftests/librapl.c
 delete mode 100644 drivers/gpu/drm/i915/selftests/librapl.h

-- 
2.40.0

