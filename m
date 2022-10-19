Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C21C603986
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Oct 2022 08:04:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8717410E9AE;
	Wed, 19 Oct 2022 06:04:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D457510E415
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Oct 2022 06:04:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666159471; x=1697695471;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8xiFnKsaZ6fTXloPgs3WiJ1HZqK34mBa6KAh1ywWQ6Y=;
 b=Hs13YqFfvSlN1wbHeg6HXZ7XrXsPW8m646YVs1NLomWMgvx5YjCbjqKt
 7Epn+0Ex47lx/0pKaLCQakinxcAv26ne4yi6KHTyzBrF2XztWfMheUQSK
 OXSBZKS8IXj8s8+UhnvxvwmPlypbrU2CgX0G76BRjpGgc5oUWaDuPUWbG
 vUT7yn+JiMcF/pkccEMCTI7rXhBKfibdv4kgIQyAYbWmS65/0zgGRC5km
 hz0k8rmgAq7akKzFH/Yi9TUShyo8tPf5D0P4DAk2NU0k2Db26ZXZjzDyK
 TXV4zYkRfUE0/wtxM2nZ9w0As1N5qZ+BnYG1Kss6ZU9Yb1wdZUo8KaQ9/ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="368367029"
X-IronPort-AV: E=Sophos;i="5.95,195,1661842800"; d="scan'208";a="368367029"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2022 23:04:31 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="580170657"
X-IronPort-AV: E=Sophos;i="5.95,195,1661842800"; d="scan'208";a="580170657"
Received: from rtauro-desk.iind.intel.com ([10.190.239.41])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2022 23:04:29 -0700
From: Riana Tauro <riana.tauro@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 19 Oct 2022 11:33:59 +0530
Message-Id: <20221019060402.2807360-1-riana.tauro@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/3] Add hwmon support for dgfx selftests
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

Riana Tauro (2):
  drm/i915/selftests: Rename librapl library to libpower
  drm/i915/hwmon: Add helper function to obtain energy values

Tilak Tangudu (1):
  drm/i915/selftests: Add hwmon support in libpower for dgfx

 drivers/gpu/drm/i915/Makefile             |  2 +-
 drivers/gpu/drm/i915/gt/selftest_rc6.c    | 12 ++++----
 drivers/gpu/drm/i915/gt/selftest_rps.c    | 26 ++++++++---------
 drivers/gpu/drm/i915/gt/selftest_slpc.c   |  4 +--
 drivers/gpu/drm/i915/i915_hwmon.c         | 23 +++++++++++++--
 drivers/gpu/drm/i915/i915_hwmon.h         |  1 +
 drivers/gpu/drm/i915/selftests/libpower.c | 35 +++++++++++++++++++++++
 drivers/gpu/drm/i915/selftests/libpower.h | 19 ++++++++++++
 drivers/gpu/drm/i915/selftests/librapl.c  | 34 ----------------------
 drivers/gpu/drm/i915/selftests/librapl.h  | 17 -----------
 10 files changed, 97 insertions(+), 76 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/selftests/libpower.c
 create mode 100644 drivers/gpu/drm/i915/selftests/libpower.h
 delete mode 100644 drivers/gpu/drm/i915/selftests/librapl.c
 delete mode 100644 drivers/gpu/drm/i915/selftests/librapl.h

-- 
2.25.1

