Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 67C7A40D094
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Sep 2021 02:06:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF3456EA7E;
	Thu, 16 Sep 2021 00:06:22 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 710C66EA7D;
 Thu, 16 Sep 2021 00:06:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10108"; a="222507673"
X-IronPort-AV: E=Sophos;i="5.85,296,1624345200"; d="scan'208";a="222507673"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2021 17:06:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,296,1624345200"; d="scan'208";a="610393325"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by fmsmga001.fm.intel.com with ESMTP; 15 Sep 2021 17:06:20 -0700
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Cc: DRI-Devel@Lists.FreeDesktop.Org, John Harrison <John.C.Harrison@Intel.com>,
 Katarzyna Cencelewska <katarzyna.cencelewska@intel.com>,
 Tony Ye <tony.ye@intel.com>, Jason Ekstrand <jason.ekstrand@intel.com>,
 Matthew Brost <matthew.brost@intel.com>
Date: Wed, 15 Sep 2021 17:06:18 -0700
Message-Id: <20210916000620.2588179-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] Add support for querying hw info that UMDs
 need
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

From: John Harrison <John.C.Harrison@Intel.com>

Various UMDs require hardware configuration information about the
current platform. A bunch of static information is available in a
fixed table that can be retrieved from the GuC.

Test-with: 20210915215558.2473428-2-John.C.Harrison@Intel.com
UMD: https://github.com/intel/compute-runtime/pull/432/files
UMD: https://github.com/intel/media-driver/pull/1239/files

CC: Katarzyna Cencelewska <katarzyna.cencelewska@intel.com>
CC: Tony Ye <tony.ye@intel.com>
CC: Jason Ekstrand <jason.ekstrand@intel.com>
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
Reviewed-by: Matthew Brost <matthew.brost@intel.com>


John Harrison (1):
  drm/i915/guc: Add fetch of hwconfig table

Rodrigo Vivi (1):
  drm/i915/uapi: Add query for hwconfig table

 drivers/gpu/drm/i915/Makefile                 |   1 +
 .../gpu/drm/i915/gt/uc/abi/guc_actions_abi.h  |   1 +
 .../gpu/drm/i915/gt/uc/abi/guc_errors_abi.h   |   4 +
 drivers/gpu/drm/i915/gt/uc/intel_guc.c        |   3 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |   2 +
 .../gpu/drm/i915/gt/uc/intel_guc_hwconfig.c   | 156 ++++++++++++++++++
 .../gpu/drm/i915/gt/uc/intel_guc_hwconfig.h   |  19 +++
 drivers/gpu/drm/i915/gt/uc/intel_uc.c         |   6 +
 drivers/gpu/drm/i915/i915_query.c             |  23 +++
 include/uapi/drm/i915_drm.h                   |   1 +
 10 files changed, 215 insertions(+), 1 deletion(-)
 create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_guc_hwconfig.c
 create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_guc_hwconfig.h

-- 
2.25.1

