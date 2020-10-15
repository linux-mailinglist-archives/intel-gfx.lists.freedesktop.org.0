Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D3E6B28F891
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Oct 2020 20:29:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C3236E1A2;
	Thu, 15 Oct 2020 18:29:04 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D86C06E077
 for <Intel-GFX@lists.freedesktop.org>; Thu, 15 Oct 2020 18:29:02 +0000 (UTC)
IronPort-SDR: y5lNRrPCLhHBTzJ3L1zYcV0L23+pepBQuqUAkqW9KiQVAju4W2oiwYk4GwrVna2QxZgrQI+ZKO
 o6mrHixTl4zA==
X-IronPort-AV: E=McAfee;i="6000,8403,9775"; a="163805175"
X-IronPort-AV: E=Sophos;i="5.77,380,1596524400"; d="scan'208";a="163805175"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2020 11:29:02 -0700
IronPort-SDR: 0uQv5xQHdavdHKB4G68GH58AeNKsp7DJYzRgFp2AYbW3bl6nwEveyPqOS49iGzHqu0yAbJvsUp
 ngn4dk217aLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,380,1596524400"; d="scan'208";a="531364109"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga005.jf.intel.com with ESMTP; 15 Oct 2020 11:29:01 -0700
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Thu, 15 Oct 2020 11:28:57 -0700
Message-Id: <20201015182901.3197788-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Subject: [Intel-gfx] [PATCH CI v2 0/4] drm/i915/guc: Update to GuC v49
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

Update to the latest GuC firmware

v2: Rebase to newer tree, updated a commit message (review feedback
from Daniele) and dropped the patch to enable GuC/HuC loading by
default as apparently this is not allowed.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>


John Harrison (4):
  drm/i915/guc: Update to use firmware v49.0.1
  drm/i915/guc: Improved reporting when GuC fails to load
  drm/i915/guc: Clear pointers on free
  CI: turn on GuC/HuC auto mode by default

 drivers/gpu/drm/i915/gt/intel_engine_cs.c    |   3 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc.c       |  18 ---
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c   | 132 +++++++++++++++----
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c    |   1 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c    |  31 +++--
 drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h  |  80 +++++------
 drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h   |   5 +
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c     |  29 ++--
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h     |   2 +
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw_abi.h |   6 +-
 drivers/gpu/drm/i915/i915_params.h           |   2 +-
 11 files changed, 202 insertions(+), 107 deletions(-)

-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
