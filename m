Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C4E86D7409
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Apr 2023 08:00:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01A6C10E06C;
	Wed,  5 Apr 2023 06:00:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AC6210E06C
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Apr 2023 06:00:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680674440; x=1712210440;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=IQ/U80SxW54e93lPCUm9Nt52CW4bfk5Og7wP1QihMiQ=;
 b=J42WA2zsx6HCWwfCmkOxjyvMs8seU3apE8bV17uxqAbIQXc3KzUiHsDp
 /U35/M4szGk/Tmb649n8U3Kw6qkUgpvr+0rVzY64Z4C7NaAaQLGAzXsjp
 xKFKzRDjk/QIFwZmotWBe+hivE/OK1ryX18ZfILiNvpOmVQb5ax1m4xp2
 Yc4hb0mlmsNmnJDt9YLSyGNVBVqH23udfuFl9tvfmfkG3xWTmKwd2Ck61
 iFWePmULEb8qJDd8OTmN2qgj+NTmaXhucWeNt8sgoouK6or950fEnZr68
 c3K/OjYOH1eq9AMk/Btu442LksqXEyojY79y4v3/Tmefp+rdgXEsHS3Xt w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="326412444"
X-IronPort-AV: E=Sophos;i="5.98,319,1673942400"; d="scan'208";a="326412444"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 23:00:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="860849538"
X-IronPort-AV: E=Sophos;i="5.98,319,1673942400"; d="scan'208";a="860849538"
Received: from rtauro-desk.iind.intel.com ([10.190.239.41])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 23:00:37 -0700
From: Riana Tauro <riana.tauro@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Apr 2023 11:30:25 +0530
Message-Id: <20230405060029.3574262-1-riana.tauro@intel.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v8 0/4] Add hwmon support for dgfx selftests
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


Riana Tauro (3):
  drm/i915/selftests: Rename librapl library to libpower
  drm/i915/hwmon: Add helper function to obtain energy values
  drm/i915/selftests: skip comparison of power for discrete graphics

Tilak Tangudu (1):
  drm/i915/selftests: Add hwmon support in libpower for dgfx

 drivers/gpu/drm/i915/Makefile             |  2 +-
 drivers/gpu/drm/i915/gt/selftest_rc6.c    | 20 ++++++++-----
 drivers/gpu/drm/i915/gt/selftest_rps.c    | 26 ++++++++---------
 drivers/gpu/drm/i915/gt/selftest_slpc.c   |  4 +--
 drivers/gpu/drm/i915/i915_hwmon.c         | 28 +++++++++++++++++++
 drivers/gpu/drm/i915/i915_hwmon.h         |  3 ++
 drivers/gpu/drm/i915/selftests/libpower.c | 33 ++++++++++++++++++++++
 drivers/gpu/drm/i915/selftests/libpower.h | 19 +++++++++++++
 drivers/gpu/drm/i915/selftests/librapl.c  | 34 -----------------------
 drivers/gpu/drm/i915/selftests/librapl.h  | 17 ------------
 10 files changed, 112 insertions(+), 74 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/selftests/libpower.c
 create mode 100644 drivers/gpu/drm/i915/selftests/libpower.h
 delete mode 100644 drivers/gpu/drm/i915/selftests/librapl.c
 delete mode 100644 drivers/gpu/drm/i915/selftests/librapl.h

-- 
2.40.0

