Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8DC28CA1E8
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2024 20:18:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4B1310E828;
	Mon, 20 May 2024 18:18:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g4zMxSdg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DE6F10E7FA;
 Mon, 20 May 2024 18:18:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716229105; x=1747765105;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ffjUfPJVLJQjzJFF3e4KbuGQTEe6XEhLAmWn/DmExeI=;
 b=g4zMxSdghBWgh/PrtOISs8fhyjelqPiyoPt7g3ur1KxUpgoJrgYKR6Zl
 T0juYB5DCV6K6N2U51Bn/0g6PW5DC2I/y2f0NOZJQLeO7AjHdyCMSTHnK
 oT2qmJsVMr1iC9Op1kMsvrQA5v/6db6oT6mFJCkSpVnU5b9D90vGzT3AO
 doNZKetGlLECawRsigv78OoHv/fFGQRIFyQrbd8MjZkjVclKrt9aYhRmC
 miWNI/1P3gJJP3pr4tZBuyzNgKgJDApXs75rYfZgE0dSDy6z2lOEMiTxJ
 Cg900+3Br9inL5HOluFENYnWUb+NcNFx2sj6aUChOvii1gkvHMQXhTVZ+ Q==;
X-CSE-ConnectionGUID: av3djz5XTKaKH8htejWtEw==
X-CSE-MsgGUID: K9z3tX8OTESYKSZirr4oSA==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="34894559"
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="34894559"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 11:18:25 -0700
X-CSE-ConnectionGUID: 06TxQ+AbQiaHNsMtfJmJ4w==
X-CSE-MsgGUID: MubSNb5tR8imUoJ4n/tj9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="37466497"
Received: from mwajdecz-mobl.ger.corp.intel.com ([10.246.25.139])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 11:18:23 -0700
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 Jani Nikula <jani.nikula@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Subject: [PATCH 0/3] drm/xe: Cleanup xe_mmio.h
Date: Mon, 20 May 2024 20:18:11 +0200
Message-Id: <20240520181814.2392-1-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0
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

Unfortunately, this is cross i915/Xe series.

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>

Michal Wajdeczko (3):
  drm/i915/display: Add missing include to intel_vga.c
  drm/xe: Don't rely on indirect includes from xe_mmio.h
  drm/xe: Cleanup xe_mmio.h

 drivers/gpu/drm/i915/display/intel_vga.c | 1 +
 drivers/gpu/drm/xe/xe_device.c           | 2 ++
 drivers/gpu/drm/xe/xe_gsc.c              | 2 ++
 drivers/gpu/drm/xe/xe_gt_ccs_mode.c      | 1 +
 drivers/gpu/drm/xe/xe_guc_ads.c          | 1 +
 drivers/gpu/drm/xe/xe_huc.c              | 2 ++
 drivers/gpu/drm/xe/xe_mmio.c             | 7 +++++--
 drivers/gpu/drm/xe/xe_mmio.h             | 9 +--------
 drivers/gpu/drm/xe/xe_mocs.c             | 1 +
 drivers/gpu/drm/xe/xe_ttm_stolen_mgr.c   | 1 +
 drivers/gpu/drm/xe/xe_uc_fw.c            | 1 +
 11 files changed, 18 insertions(+), 10 deletions(-)

-- 
2.43.0

