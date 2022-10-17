Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3C7C601121
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Oct 2022 16:30:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C8A510E516;
	Mon, 17 Oct 2022 14:30:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5C3810EBBB
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Oct 2022 14:30:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666017018; x=1697553018;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=IezcFrIqxilIZjbeTrVt9n4UVPCHfEJeVkyYxUM9GAU=;
 b=MYDXaN++FpWKoFDGS0Sb0mlr/M5pdt7yNNwDgIjvk31Qvra9by4PaEqe
 YkOERuF7ZO4LXgLBfZkIuDEzbCa+ldZm1Ik/K0R/5DRisekuiwwZqoBnU
 lR+5aaMFxB4I2Qf5JbnKSCn2KtDytky7uqe1jDCETlxGtxkPnRietM0nj
 RzpvzsoIRKM5kaOT0iEyTmSNx9YcSbtioiJdlhqnSD3dOVaUou2tCJQNG
 VMZv01MT/C/MYfuJlTxivCQ4MJfp8P/J5+bW3PxfVqI+Mb3+DEb1wRn1X
 0WJllqpWwSqxsQIWpnVwH22F/8oMkooTbNmkavBJJVUPXtKrZLThOoXaa g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="332348777"
X-IronPort-AV: E=Sophos;i="5.95,191,1661842800"; d="scan'208";a="332348777"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2022 07:30:17 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="957353048"
X-IronPort-AV: E=Sophos;i="5.95,191,1661842800"; d="scan'208";a="957353048"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2022 07:30:15 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 17 Oct 2022 20:00:36 +0530
Message-Id: <20221017143038.1748319-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] Defeature Interlace modes for Display >= 12
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

This patch series is a contination of patch:
https://patchwork.freedesktop.org/patch/506835/?series=109646&rev=1

Added change for DP as well as HDMI in the patch series.
Also added a clean up patch to remove check for doublescan modes
as that is no longer required.

Ankit Nautiyal (2):
  drm/i915/display: Drop check for doublescan mode in modevalid
  drm/i915/display: Prune Interlace modes for Display >=12

 drivers/gpu/drm/i915/display/intel_dp.c   |  7 ++-----
 drivers/gpu/drm/i915/display/intel_hdmi.c | 11 +++++++----
 2 files changed, 9 insertions(+), 9 deletions(-)

-- 
2.25.1

