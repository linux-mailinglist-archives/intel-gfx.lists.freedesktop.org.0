Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BC9623F21D
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Aug 2020 19:45:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 872C2897E3;
	Fri,  7 Aug 2020 17:45:23 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A091897EE
 for <Intel-GFX@lists.freedesktop.org>; Fri,  7 Aug 2020 17:45:22 +0000 (UTC)
IronPort-SDR: 19HNawkuKdGtpDlgphAvy6NUJMvuMSrdUPvT1freZKDUGEztInoo4L3+zRAw4U+NyMJKyy57VX
 qLTK3UIa/VLw==
X-IronPort-AV: E=McAfee;i="6000,8403,9706"; a="132712919"
X-IronPort-AV: E=Sophos;i="5.75,446,1589266800"; d="scan'208";a="132712919"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2020 10:45:21 -0700
IronPort-SDR: dF73hKkYAdMOl8t62UAO4d6tIMwb8C/ZgEvxOT1SYbHL8GgT3Em4nc8qDEPYE///bjS1M6RsA8
 36Sed7xvJZoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,446,1589266800"; d="scan'208";a="307447331"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga002.jf.intel.com with ESMTP; 07 Aug 2020 10:45:21 -0700
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Fri,  7 Aug 2020 10:46:35 -0700
Message-Id: <20200807174637.375324-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Subject: [Intel-gfx] [PATCH 0/2] drm/i915/guc: Update to GuC v45
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: John Harrison <John.C.Harrison@Intel.com>

Update to the latest GuC firmware and enable by default.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>


Daniele Ceraolo Spurio (1):
  drm/i915/uc: turn on GuC/HuC auto mode by default

John Harrison (1):
  drm/i915/guc: Update to GuC v45.0.0

 drivers/gpu/drm/i915/gt/intel_engine_cs.c    |   3 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc.c       | 125 +++++++----
 drivers/gpu/drm/i915/gt/uc/intel_guc_abi.h   | 215 +++++++++++++++++++
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c   | 116 ++++++++--
 drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c    |  21 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h  | 110 ++++------
 drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h   |   5 +
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c     |  27 ++-
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h     |   2 +
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw_abi.h |   6 +-
 drivers/gpu/drm/i915/i915_params.h           |   2 +-
 11 files changed, 486 insertions(+), 146 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_guc_abi.h

-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
