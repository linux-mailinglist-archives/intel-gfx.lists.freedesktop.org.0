Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A04FB0450C
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Jul 2025 18:08:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1708310E299;
	Mon, 14 Jul 2025 16:08:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ls12mAEW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9946210E299;
 Mon, 14 Jul 2025 16:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752509303; x=1784045303;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=clQZ/0ZHwSKRbPX1GiCCSu7vpXCPSlrUmMxnusFRcDs=;
 b=ls12mAEWhFZjsQROIL2hrvpHiXLlpHVXm7BTJzNOZKxpyg65Rj9Fwhft
 77IAYcoav9bzN5WzIzJjJg4Oty+MPRPCoBRC2v0wsK6hrupp145vWhKi/
 +mEzQfT6LRbgeFr7ZH1E39bgB1cM5NCPxJPagoEh6sgcsLt0eRJ2J4sBV
 buZYCvBypbJ2o9OF2/bIrCNaRm92OZRU459g/QcSxBhlvaCROg9B5Ejlr
 r2QqopXFH8OGG/XF52lEWuTIR/TVqHtfiR8A5G2vIrW/bsx7mFcMtGLOH
 jcy24e8NfgJjDMKCe8ysbML3eVxP2yNV2KimQKtcdY6/yLYz2vdvCk585 g==;
X-CSE-ConnectionGUID: SKtVkD0ZRau2DiaPbDKMtw==
X-CSE-MsgGUID: uPcWmdWbS5Cb4QGkU+s1BQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11491"; a="54855196"
X-IronPort-AV: E=Sophos;i="6.16,311,1744095600"; d="scan'208";a="54855196"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2025 09:08:22 -0700
X-CSE-ConnectionGUID: o3gm0pLnSTu9XTOeL2iSNQ==
X-CSE-MsgGUID: STmnccmZS0mKa9wUgtuigA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,311,1744095600"; d="scan'208";a="156385651"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by orviesa010.jf.intel.com with ESMTP; 14 Jul 2025 09:08:21 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v5 0/1] drm/i915/display: Add no_psr_reason to PSR debugfs
Date: Mon, 14 Jul 2025 18:09:30 +0200
Message-ID: <20250714160931.821383-1-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
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

Next version of v4 [1]. Removed the tag to test if Patchwork will pick
the IGT changes. 

[1] https://lore.kernel.org/intel-gfx/20250711164959.608303-1-michal.grzelak@intel.com

Best regards,
Michał

---
Changelog:
v4->v5
- fix indentation errors from checkpatch

v3->v4
- change format of logging workaround #1136

v2->v3
- change reason description to be more specific [Mika]
- remove BSpecs number & WA number from being written into no_psr_reason
- replace spaces with tabs
- provide correct Test-with tag to the IGT patch, instead of series

v1->v2
- set other reasons than "PSR setup timing not met"
- clear no_psr_reason when activating PSR.

Michał Grzelak (1):
  drm/i915/display: Add no_psr_reason to PSR debugfs

 .../drm/i915/display/intel_display_types.h    |  2 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 38 ++++++++++++-------
 2 files changed, 26 insertions(+), 14 deletions(-)

-- 
2.45.2

