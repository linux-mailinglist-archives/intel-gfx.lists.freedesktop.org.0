Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0963D63CEB9
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Nov 2022 06:33:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0775610E28A;
	Wed, 30 Nov 2022 05:33:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD0ED10E28A
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Nov 2022 05:33:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669786391; x=1701322391;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=aLqg+6HhjmXr6n5dFORnc8pA9QJ9dcHHvbJrvjxCjRA=;
 b=F5WqaxSdCpgAp1l7CCVOZONuVA2iQuVeZyHucHUuYRvV198JEZE4jkRY
 vxr/hhw0ZaIdSK7I0na44JDs2l8Ci93Nzt0G2jx8ZE4DMMdqR7iXYbNKc
 OUPWbb8l09SLNUlongxrvVIuK5yCNPscAKRMrlqgPrC6BVPmdf6Xf3ekS
 auoGLMrxwUprycZwYrmrHVnJiLMu6SlpRQ60aSymwgCYI0mHuFLz6K+Io
 vdhkizB5WW+3YIMtLe7EmTL+DRAOkNh9AGoT9OyRGFYR06WVRd3Nc4ynV
 F+rncy9Qerh+bnJqdnWK4gL8AoOryjXTyeqjpb8ju6Y4fz4BzLM0ry473 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="401588242"
X-IronPort-AV: E=Sophos;i="5.96,205,1665471600"; d="scan'208";a="401588242"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2022 21:33:10 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="818498592"
X-IronPort-AV: E=Sophos;i="5.96,205,1665471600"; d="scan'208";a="818498592"
Received: from rtauro-desk.iind.intel.com ([10.190.239.41])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2022 21:33:08 -0800
From: Riana Tauro <riana.tauro@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Nov 2022 11:04:24 +0530
Message-Id: <20221130053427.2207600-1-riana.tauro@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 0/3] Add hwmon support for dgfx selftests
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

Riana Tauro (2):
  drm/i915/selftests: Rename librapl library to libpower
  drm/i915/hwmon: Add helper function to obtain energy values

Tilak Tangudu (1):
  drm/i915/selftests: Add hwmon support in libpower for dgfx

 drivers/gpu/drm/i915/Makefile             |  2 +-
 drivers/gpu/drm/i915/gt/selftest_rc6.c    | 12 ++++----
 drivers/gpu/drm/i915/gt/selftest_rps.c    | 26 ++++++++---------
 drivers/gpu/drm/i915/gt/selftest_slpc.c   |  4 +--
 drivers/gpu/drm/i915/i915_hwmon.c         | 28 +++++++++++++++++++
 drivers/gpu/drm/i915/i915_hwmon.h         |  3 ++
 drivers/gpu/drm/i915/selftests/libpower.c | 33 ++++++++++++++++++++++
 drivers/gpu/drm/i915/selftests/libpower.h | 19 +++++++++++++
 drivers/gpu/drm/i915/selftests/librapl.c  | 34 -----------------------
 drivers/gpu/drm/i915/selftests/librapl.h  | 17 ------------
 10 files changed, 105 insertions(+), 73 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/selftests/libpower.c
 create mode 100644 drivers/gpu/drm/i915/selftests/libpower.h
 delete mode 100644 drivers/gpu/drm/i915/selftests/librapl.c
 delete mode 100644 drivers/gpu/drm/i915/selftests/librapl.h

-- 
2.25.1

