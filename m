Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76E31645356
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Dec 2022 06:16:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BA4410E35A;
	Wed,  7 Dec 2022 05:16:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8690410E358
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Dec 2022 05:16:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670390196; x=1701926196;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=EqT4gH8PghDjUTFPtOCvFUYIsIOxuN+iyZsXGW21RMA=;
 b=j7vTpd8Aimw1toyWw75SOPjP8VvQBgLqgEIAY5Ivs1+OV4JiQwP2dbnC
 hsopyUwX2yi/NSB6p9/zzZ5Lhb1JEwwh6SOxeuSUgAe/fn9RKrvTJ3KnY
 r7aTQ5O0w4HPi+fI+AA1NHgzv1jmKzg6t2D5cjHOMrqJUMK0IU2O5Twn4
 4hIWZ8z9czV3AbHyzDp8YuNWOAdKi/+cDEEEwzJoOsomhmQ2ikE0P315J
 SwReIl554qgWY5dVSKyfQLlhQ1ptH/c4oFGB5+qPFmsMQuTu7NS0TQetD
 pestANbfo2iGIQmHf1loX2aT7qZRaKOydr4uwVDTa9AqnvAN2w1wJT1m/ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="297158309"
X-IronPort-AV: E=Sophos;i="5.96,223,1665471600"; d="scan'208";a="297158309"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 21:16:35 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="679006010"
X-IronPort-AV: E=Sophos;i="5.96,223,1665471600"; d="scan'208";a="679006010"
Received: from rtauro-desk.iind.intel.com ([10.190.239.41])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 21:16:21 -0800
From: Riana Tauro <riana.tauro@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Dec 2022 10:47:44 +0530
Message-Id: <20221207051747.3212925-1-riana.tauro@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 0/3] Add hwmon support for dgfx selftests
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


Riana Tauro (2):
  drm/i915/selftests: Rename librapl library to libpower
  drm/i915/hwmon: Add hwmon support in libpower for dgfx

Tilak Tangudu (1):
  drm/i915/selftests: use libpower to get power consumption

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

