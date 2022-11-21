Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00A18631A45
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Nov 2022 08:28:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C200E10E157;
	Mon, 21 Nov 2022 07:28:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAFB410E157
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Nov 2022 07:28:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669015720; x=1700551720;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3HEEx0sN9/7TxFXNA2oQ2FYdejVAY8hWY/L61um8zqs=;
 b=dRxW51GLc+M6f9pVfCDxvZRuTKtUXA9iOHa0RD/vl6k42Rl21FzmeWZa
 lgNOGrxeVUWEV8tz1GTdUTAOogxY/otLiwQHS5KmxqqIdkWFFg9UnM93Q
 Mqvva/Z1f9lurKOJE/cAnBQEShhouXIwZ4IOUPDDD85Hel3KmAZGf9r9y
 ePEc9a/7iEz/fCvmmsL1JQsjtR6brZH0HYWaRDN6vBlWLib9ngENp5Vr5
 tQSLrdgKgWP0oBCKhOdIK8Ws8ui2DVMW5P2awtLqEcJPx1uRoXGhw8xF+
 g2/YKqcRARakEndHIY63bK0J0uX/b3tBg1rUWwXwymynMhcOveORL/k3w w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10537"; a="301035824"
X-IronPort-AV: E=Sophos;i="5.96,180,1665471600"; d="scan'208";a="301035824"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2022 23:28:40 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10537"; a="618727871"
X-IronPort-AV: E=Sophos;i="5.96,180,1665471600"; d="scan'208";a="618727871"
Received: from rtauro-desk.iind.intel.com ([10.190.239.41])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2022 23:28:38 -0800
From: Riana Tauro <riana.tauro@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 21 Nov 2022 12:59:43 +0530
Message-Id: <20221121072946.1013463-1-riana.tauro@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 0/3] Add hwmon support for dgfx selftests
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

Riana Tauro (2):
  drm/i915/selftests: Rename librapl library to libpower
  drm/i915/hwmon: Add helper function to obtain energy values

Tilak Tangudu (1):
  drm/i915/selftests: Add hwmon support in libpower for dgfx

 drivers/gpu/drm/i915/Makefile             |  2 +-
 drivers/gpu/drm/i915/gt/selftest_rc6.c    | 12 ++++----
 drivers/gpu/drm/i915/gt/selftest_rps.c    | 26 ++++++++---------
 drivers/gpu/drm/i915/gt/selftest_slpc.c   |  4 +--
 drivers/gpu/drm/i915/i915_hwmon.c         | 17 +++++++++++
 drivers/gpu/drm/i915/i915_hwmon.h         |  1 +
 drivers/gpu/drm/i915/selftests/libpower.c | 35 +++++++++++++++++++++++
 drivers/gpu/drm/i915/selftests/libpower.h | 19 ++++++++++++
 drivers/gpu/drm/i915/selftests/librapl.c  | 34 ----------------------
 drivers/gpu/drm/i915/selftests/librapl.h  | 17 -----------
 10 files changed, 94 insertions(+), 73 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/selftests/libpower.c
 create mode 100644 drivers/gpu/drm/i915/selftests/libpower.h
 delete mode 100644 drivers/gpu/drm/i915/selftests/librapl.c
 delete mode 100644 drivers/gpu/drm/i915/selftests/librapl.h

-- 
2.25.1

