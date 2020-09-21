Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A650C27313C
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Sep 2020 19:54:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2647C6E517;
	Mon, 21 Sep 2020 17:54:42 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AF1B6E511
 for <Intel-GFX@lists.freedesktop.org>; Mon, 21 Sep 2020 17:54:29 +0000 (UTC)
IronPort-SDR: S3NlDXKHeoP3+Lnb/mNTy9S4TzsA6gxMjPDatbS41hv+r02BL/zZP7ujOfv1kUZ0V8UVjPzwKO
 opO/n+MhEsbA==
X-IronPort-AV: E=McAfee;i="6000,8403,9751"; a="224596829"
X-IronPort-AV: E=Sophos;i="5.77,287,1596524400"; d="scan'208";a="224596829"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2020 10:54:28 -0700
IronPort-SDR: r3a18swf8QRhdMMYuurZ6eD0EHghyTm7OlwI7NBnBngqemn+fNcsY8iyC3DI5JdfqNtgpUtmCy
 ukbj3UFhPNeA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,287,1596524400"; d="scan'208";a="321863505"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga002.jf.intel.com with ESMTP; 21 Sep 2020 10:54:28 -0700
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Mon, 21 Sep 2020 10:54:24 -0700
Message-Id: <20200921175428.2914478-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Subject: [Intel-gfx] [PATCH 0/4] drm/i915/guc: Update to GuC v49
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

John Harrison (3):
  drm/i915/guc: Update to use firmware v49.0.1
  drm/i915/guc: Improved reporting when GuC fails to load
  drm/i915/guc: Clear pointers on free

 drivers/gpu/drm/i915/gt/intel_engine_cs.c    |   3 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc.c       |  18 ---
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c   | 132 +++++++++++++++----
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c    |   1 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c    |  27 +++-
 drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h  |  82 +++++++-----
 drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h   |   5 +
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c     |  27 ++--
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h     |   2 +
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw_abi.h |   6 +-
 drivers/gpu/drm/i915/i915_params.h           |   2 +-
 11 files changed, 207 insertions(+), 98 deletions(-)

-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
