Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DFB963C2CB
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Nov 2022 15:39:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 982D710E3D7;
	Tue, 29 Nov 2022 14:39:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40FE210E3D7
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Nov 2022 14:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669732745; x=1701268745;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=VfxDwHQhbvAk39c0iu9AfmhTSpymxkiBygsoo+NC+O8=;
 b=CkVGROR/11PTGlQiTbvCbfp64lCIVyYb96t68vU4L9x/hJa0Zd3xwa5R
 rz+o5Rv9HvqhxPW2lwxnlRLLwkkmMmFog76aFRrs3oFf7hJdSj01a+NzF
 PrTAZWTFSjpYA2E9z3s5KU0MkDLHenjYA6S9LeM8lsRzq93PzkSFcyWxp
 pB7Ty1bo0VC8elAFRan0LJo8gm8q8OS9gRXkTzVrxX+IvUwlpM9zXltGI
 U2+1HfcUtrXaoiocfphjXtvXoLpPj2e2WIG7Yy3iPAHIhNxGLtjB4lfXw
 urDzx3L7BxhKYvrjhjaW4M8U8IWKwJFqdGUwBIvla7JrkqDtPliNINOQB w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="298471216"
X-IronPort-AV: E=Sophos;i="5.96,203,1665471600"; d="scan'208";a="298471216"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2022 06:39:04 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="768446199"
X-IronPort-AV: E=Sophos;i="5.96,203,1665471600"; d="scan'208";a="768446199"
Received: from rtauro-desk.iind.intel.com ([10.190.239.41])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2022 06:39:01 -0800
From: Riana Tauro <riana.tauro@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Nov 2022 20:10:07 +0530
Message-Id: <20221129144010.2182768-1-riana.tauro@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 0/3] Add hwmon support for dgfx selftests
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

Riana Tauro (3):
  drm/i915/selftests: Rename librapl library to libpower
  drm/i915/hwmon: Add helper function to obtain energy values
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

