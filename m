Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CCFE2794B5
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Sep 2020 01:26:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 840336ED76;
	Fri, 25 Sep 2020 23:26:40 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DABD96ED72
 for <Intel-GFX@lists.freedesktop.org>; Fri, 25 Sep 2020 23:26:38 +0000 (UTC)
IronPort-SDR: 9Z+MPvy+O53g3JMt6PcIO9bS5fJViePzRXg5H3n82ae4bQjlNt7zHwD1m7Oji0fv7Cax0SQYgU
 e4S7e1vVXdjA==
X-IronPort-AV: E=McAfee;i="6000,8403,9755"; a="162564368"
X-IronPort-AV: E=Sophos;i="5.77,303,1596524400"; d="scan'208";a="162564368"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2020 16:26:37 -0700
IronPort-SDR: tSO89XEfuQX6jgnCZZUBnEDbjXGywsvxBviDWTcD0pNE6CbRD0oLI3HgbVqzrYZeVqZ5aiTIH4
 Tpz7z/EVYquA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,303,1596524400"; d="scan'208";a="337048717"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by fmsmga004.fm.intel.com with ESMTP; 25 Sep 2020 16:26:37 -0700
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Fri, 25 Sep 2020 16:26:33 -0700
Message-Id: <20200925232637.1968039-1-John.C.Harrison@Intel.com>
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
 drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c    |  31 +++--
 drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h  |  80 +++++------
 drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h   |   5 +
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c     |  27 ++--
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h     |   2 +
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw_abi.h |   6 +-
 drivers/gpu/drm/i915/i915_params.h           |   2 +-
 11 files changed, 201 insertions(+), 106 deletions(-)

-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
