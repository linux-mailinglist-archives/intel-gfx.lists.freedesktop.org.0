Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40EFC8BBECD
	for <lists+intel-gfx@lfdr.de>; Sun,  5 May 2024 01:30:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0E4310FFB2;
	Sat,  4 May 2024 23:29:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KOlX0nJw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED80E10FFB2
 for <intel-gfx@lists.freedesktop.org>; Sat,  4 May 2024 23:29:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714865399; x=1746401399;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QbSKszTXFl7WEoKBL3GqyA0ihgQHo3ZTNnsjBtVK6YQ=;
 b=KOlX0nJwaw77Kdka3xkUXLZbYcqmNBOcR8xrhQzpVFObcsEQtDq22mva
 P3w8Oe4f/n7gMYYkSq8kL4xfYyHMww2iq/s+ZmM1z19Ld1Z42YFYUI8qI
 U6/hcsUgR4rN/owAtqCY3dHvFZG/1ZOWSP+rZIyy905prStQUcGgUewvL
 YhPzWN2/F+MgPZJ/qJ6YZCm+ffLNbpmb4eTnI2JX4NeDJokDLTtoe9qst
 GjOdDcEWN3+K4Mcv4n4ZIFY4qep4L31sNas3S7+E8l3PRhZQ+OF4FuS8k
 +jbi3BHwWYipjxxtWxoceJ4zebWE1YzVCaL0u5RMHNC3/2dPXSZ4i+MnR w==;
X-CSE-ConnectionGUID: pi5u5/vxSNaqHKlMpT7ypQ==
X-CSE-MsgGUID: /KSkFdTTS56dP2j0gXsQcA==
X-IronPort-AV: E=McAfee;i="6600,9927,11063"; a="10770759"
X-IronPort-AV: E=Sophos;i="6.07,255,1708416000"; d="scan'208";a="10770759"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2024 16:29:58 -0700
X-CSE-ConnectionGUID: t3UlaOLnToCndeoeHv1mRA==
X-CSE-MsgGUID: Xqy/RAiHSLCiGgExQqszGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,255,1708416000"; d="scan'208";a="58997444"
Received: from nvishwa1-desk.sc.intel.com ([172.25.29.76])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2024 16:29:58 -0700
From: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/4] drm/xe: Add Indirect Ring State support
Date: Sat,  4 May 2024 16:29:48 -0700
Message-ID: <20240504232955.16022-1-niranjana.vishwanathapura@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

When Indirect Ring State is enabled, the Ring Buffer state and
Batch Buffer state are context save/restored to/form Indirect
Ring State instead of the LRC. It is the recommended mode for
Xe2, hence enable it by default for Xe2 platforms.

Signed-off-by: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>

Niranjana Vishwanathapura (4):
  drm/xe: Minor cleanup in LRC handling
  drm/xe: Add Indirect Ring State support
  drm/xe: Dump Indirect Ring State registers
  drm/xe/xe2: Enable Indirect Ring State support for Xe2

 drivers/gpu/drm/xe/regs/xe_engine_regs.h |   9 +-
 drivers/gpu/drm/xe/regs/xe_lrc_layout.h  |   7 +
 drivers/gpu/drm/xe/xe_gt.c               |   6 +-
 drivers/gpu/drm/xe/xe_gt.h               |   7 +
 drivers/gpu/drm/xe/xe_gt_types.h         |   6 +-
 drivers/gpu/drm/xe/xe_guc_ads.c          |   5 +-
 drivers/gpu/drm/xe/xe_guc_submit.c       |   2 +-
 drivers/gpu/drm/xe/xe_hw_engine.c        |  11 ++
 drivers/gpu/drm/xe/xe_hw_engine_types.h  |   4 +
 drivers/gpu/drm/xe/xe_lrc.c              | 187 +++++++++++++++++++----
 drivers/gpu/drm/xe/xe_lrc.h              |   5 +-
 drivers/gpu/drm/xe/xe_lrc_types.h        |   4 +
 drivers/gpu/drm/xe/xe_pci.c              |   3 +
 drivers/gpu/drm/xe/xe_pci_types.h        |   3 +
 14 files changed, 220 insertions(+), 39 deletions(-)

-- 
2.43.0

