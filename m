Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 498D96BDA1B
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 21:26:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F36510E362;
	Thu, 16 Mar 2023 20:26:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C19510E362
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 20:26:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678998390; x=1710534390;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=XXhrHXVzyJpDbgmQPE6V3pxRMqcbKu+gNamtpqznOsg=;
 b=QKZ0o0pEepQ5TPOw0pNBLLNN2UbkGevMAyDEiBU+7Lp1bhwagbIm3Nio
 ADthyS2Yeb68wrXmtBx5bwlMD7/8rdwdSic3wzhE3icxirskeL/L4YMEt
 e4dNglVnImVIQObdajyY6el+qJJUx5B1Zfe9D3irAqxmlgouOnjYwelfC
 CSJP+dt6IWyIL/XudApc1rxDJaiXMc3zsmdKY6EjID5MbYm0gm4HK+E6G
 D1I4YI7lE2Yhrz9ZQsukcQN8Idgetlgjy4v+lNwUx4zZNJ+uI2xQokClw
 1ZdjrHflnZYhJB02sfsmgU6yNkvQJC+zy00hYnntZGIDcMx77Qn9LysHS w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="340475486"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="340475486"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 13:26:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="680031875"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="680031875"
Received: from invictus.jf.intel.com ([10.165.21.134])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 13:26:27 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Mar 2023 13:25:44 -0700
Message-Id: <20230316202549.1764024-1-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/5] More MTL WA and powerwell patches
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
Cc: lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This series adds 2 MTL WA's, 2 patches to fix re-use
"DC off" power wells and another patch to sync BIOS and
driver for C6 enabling.

Haridhar Kalvala (1):
  drm/i915/mtl: WA to clear RDOP clock gating

Madhumitha Tolakanahalli Pradeep (1):
  drm/i915/mtl: Extend Wa_22011802037 to MTL A-step

Matt Roper (2):
  drm/i915: Use separate "DC off" power well for ADL-P and DG2
  drm/i915/mtl: Re-use ADL-P's "DC off" power well

Vinay Belgaumkar (1):
  drm/i915/mtl: Synchronize i915/BIOS on C6 enabling

 .../i915/display/intel_display_power_map.c    | 57 +++++++++++++------
 drivers/gpu/drm/i915/gt/intel_rc6.c           | 21 +++++++
 drivers/gpu/drm/i915/gt/intel_rc6_types.h     |  1 +
 drivers/gpu/drm/i915/gt/intel_workarounds.c   |  3 +
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  4 +-
 5 files changed, 67 insertions(+), 19 deletions(-)

-- 
2.34.1

