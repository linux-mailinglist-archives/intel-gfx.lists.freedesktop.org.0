Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C120A72CDA1
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Jun 2023 20:15:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11A5310E1FB;
	Mon, 12 Jun 2023 18:15:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE18110E1FB
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Jun 2023 18:15:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686593740; x=1718129740;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=aLyjgv2nY3+Fa+1w5XxDm1Yok5qrgFEQpHnPKdkws48=;
 b=JF/vGywO6i+xBNXnO5LNpXrjeHjntVJ66oXbi+Zm15hDZhofsshzWIFm
 wdDLIkI8Wk+4LeTso8Xs1OIhfRXnsdtY+6WwT2KJH4whSgzp/Dl1zKthY
 XOrkGZ2X61SVIToVU+J9sejHA1jtEXdcF5gygy2vbln0J4EFa5jFnZOYU
 C6sGSB9XXBOjouy4FUa0Vvbxp5uNrm05ouR5RHHkZIwBJx18oUOW0Ctq8
 L9mbJocq2rgrpG4PBBNuy4oiEczUNwR2QSRGtWE/Is76wSY5ZcA8u7qb2
 ssBipsBEjbhs44eIFYre3z2VoNI01oiDGHk1PKQD5sqrqMgLm5FW+bgNI g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10739"; a="337761449"
X-IronPort-AV: E=Sophos;i="6.00,236,1681196400"; d="scan'208";a="337761449"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2023 11:15:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10739"; a="661678753"
X-IronPort-AV: E=Sophos;i="6.00,236,1681196400"; d="scan'208";a="661678753"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2023 11:15:37 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Jun 2023 11:15:25 -0700
Message-Id: <20230612181529.2222451-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 0/4] drm/i915: GSC FW support for MTL
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

Last chunk of the required support for the GSC FW. This includes some
fixes to the GSC memory allocation, FW idefinition and version
management, plus a new debugfs for debug information.

The FW team has asked to not send the current FW blob to
linux-firmware yet, as they're planning some updates. Therefore, the
FW definition patch will be sent separately and merged to the
topic/core-for-CI branch.
The series has already been tested with the FW definition patch applied
(see CI results on previous rev), so this is a re-send for CI to make
sure everything works without that patch before merging.

Daniele Ceraolo Spurio (4):
  drm/i915/gsc: fixes and updates for GSC memory allocation
  drm/i915/mtl/gsc: extract release and security versions from the gsc
    binary
  drm/i915/mtl/gsc: query the GSC FW for its compatibility version
  drm/i915/mtl/gsc: Add a gsc_info debugfs

 drivers/gpu/drm/i915/Makefile                 |   3 +-
 .../drm/i915/gt/uc/intel_gsc_binary_headers.h |  75 ++++-
 drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c     | 307 +++++++++++++++---
 drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.h     |   2 +
 drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c     | 124 ++++++-
 drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.h     |  21 ++
 .../gpu/drm/i915/gt/uc/intel_gsc_uc_debugfs.c |  39 +++
 .../gpu/drm/i915/gt/uc/intel_gsc_uc_debugfs.h |  14 +
 .../i915/gt/uc/intel_gsc_uc_heci_cmd_submit.h |   1 +
 drivers/gpu/drm/i915/gt/uc/intel_huc.c        |   6 +-
 drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c     |  13 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc_debugfs.c |   2 +
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c      |  80 +++--
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h      |   4 +
 drivers/gpu/drm/i915/i915_reg.h               |  26 +-
 15 files changed, 615 insertions(+), 102 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_debugfs.c
 create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_debugfs.h

-- 
2.40.0

