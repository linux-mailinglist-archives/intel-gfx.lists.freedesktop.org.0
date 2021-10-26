Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70B9043B0A5
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Oct 2021 12:57:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C656389B98;
	Tue, 26 Oct 2021 10:57:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F8D889B98
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Oct 2021 10:57:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10148"; a="216787831"
X-IronPort-AV: E=Sophos;i="5.87,182,1631602800"; d="scan'208";a="216787831"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2021 03:57:31 -0700
X-IronPort-AV: E=Sophos;i="5.87,182,1631602800"; d="scan'208";a="724084320"
Received: from linux-z370-aorus-gaming-5.iind.intel.com ([10.223.34.160])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2021 03:57:29 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: imre.deak@intel.com, uma.shankar@intel.com, jani.nikula@linux.intel.com,
 animesh.manna@intel.com
Date: Tue, 26 Oct 2021 16:13:40 +0530
Message-Id: <20211026104342.198300-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] Remove check for ComboPHY I/O voltage for
 DP source rate
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

This patch series is continuation of the discussion in:
https://patchwork.freedesktop.org/patch/457398/?series=95444&rev=1

Along with a patch to add debug print voltage configuration for
combo PHY ports.

Ankit Nautiyal (2):
  drm/i915/display: Remove check for low voltage sku for max dp source
    rate
  drm/i915/intel_combo_phy: Print procmon ref values

 .../gpu/drm/i915/display/intel_combo_phy.c    |  4 +++
 drivers/gpu/drm/i915/display/intel_dp.c       | 32 ++-----------------
 2 files changed, 7 insertions(+), 29 deletions(-)

-- 
2.25.1

