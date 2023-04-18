Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9A546E6F15
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Apr 2023 00:06:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19EFF10E2FC;
	Tue, 18 Apr 2023 22:06:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D30510E07B
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Apr 2023 22:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681855565; x=1713391565;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Yytgqq4vsrJgogtjkyALokJKA8LXSDBYElWaACf2qlw=;
 b=IR6WzxyDKiehi5+aTimss5+VlqiqDOsvlAj4EpKvSr1KxfLarke9r0FC
 EMtZBL23p2F3C2kNmYvz1f7r5lhVbAOv2g6IGrchdnn5Z0TJz1AeolsbK
 Z57IjI16kZFiTBvQpyAkx/zUu16IRaE144//mTMKvcaiIH9ObjzIkoc5k
 Fo42M9FADZPpWbNRv5aTj+ltDlM/ZeMn4lCc1JHazT+1CShtY5gPyKZ4z
 AurFSLiz0sGYB9zc5Q3yILTVqT7Um/CetV2k0p4qLQ07NtCzGnxZPMhwe
 xy3QaW8QYh0BtIIOA19a/DNhY+jKTt68zH3bv0JYY3CKGK6XpJZT1R9hU g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="334101436"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="334101436"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2023 15:06:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="684761344"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="684761344"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2023 15:05:58 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Apr 2023 15:04:42 -0700
Message-Id: <20230418220446.2205509-1-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/4] More MTL WA and powerwell patches
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

This series adds 2 MTL WA's and 2 patches to fix re-use
"DC off" power wells.

v2:
Haridhar Kalvala (1):
  drm/i915/mtl: WA to clear RDOP clock gating

Madhumitha Tolakanahalli Pradeep (1):
  drm/i915/mtl: Extend Wa_22011802037 to MTL A-step

Matt Roper (2):
  drm/i915: Use separate "DC off" power well for ADL-P and DG2
  drm/i915/mtl: Re-use ADL-P's "DC off" power well

 .../i915/display/intel_display_power_map.c    | 57 +++++++++++++------
 drivers/gpu/drm/i915/gt/intel_workarounds.c   |  3 +
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 12 ++--
 3 files changed, 48 insertions(+), 24 deletions(-)

-- 
2.34.1

