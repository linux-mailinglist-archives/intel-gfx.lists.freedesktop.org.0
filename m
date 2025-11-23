Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 907C4C7E326
	for <lists+intel-gfx@lfdr.de>; Sun, 23 Nov 2025 17:01:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C9D210E192;
	Sun, 23 Nov 2025 16:01:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W3fjynJg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BF1410E19F;
 Sun, 23 Nov 2025 16:01:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763913701; x=1795449701;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=n/kTBJjE6lDt+2IdCCJU2D3Kz395SmSoNyBa/UeaLxU=;
 b=W3fjynJgjOv3/rj8ccTt12xH3BYWQ7b4ECmBLaVDMusHoKdu+h2mwPh/
 JkVVFGCmadQ3QaPIAvmb2HmI4lHaPOYKRHZLc3novVFLVJ0o2yHbLuuRd
 sp1eQdDtxeXggaXMImVzu6dNFIrGT5CQsbiM9fE68xEQkFx4D2nhDsYNN
 +GjVEQIWF8pWo2UudYGX0riiSRpgSqaIzSJOw/iHn2BGjwxzPYUTS+4CX
 b3DpsBuZ0IsP7NH3C2VhamW5ajzUuwqDlzypECQqycZA9Zc7nCBNcFl+K
 OFxkm8yR2VEHLmapAi1gn1FSibU+g4S+7lpSZq/SSlOol8zex1E+gWmYs g==;
X-CSE-ConnectionGUID: uUy6C4tlR4CoCe+P9kII2A==
X-CSE-MsgGUID: +R1jqs0ES2amxCBCncehsg==
X-IronPort-AV: E=McAfee;i="6800,10657,11622"; a="77040995"
X-IronPort-AV: E=Sophos;i="6.20,221,1758610800"; d="scan'208";a="77040995"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2025 08:01:41 -0800
X-CSE-ConnectionGUID: eKi0Bl8VT+KwB4e5Sqhl7g==
X-CSE-MsgGUID: +FnWCDoHQaG4HRlAqXgFJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,221,1758610800"; d="scan'208";a="192589027"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO
 vgovind2-mobl4.intel.com) ([10.245.245.206])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2025 08:01:38 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, matthew.d.roper@intel.com,
 gustavo.sousa@intel.com, ville.syrjala@intel.com, jani.nikula@intel.com
Subject: [PATCH v3 0/2] drm/i915/display: Enable system cache support for FBC
Date: Sun, 23 Nov 2025 18:01:25 +0200
Message-ID: <20251123160127.142599-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Use system cacheability configuration register to assign a reserved
area in system cache for FBC

Vinod Govindapillai (2):
  drm/i915/display: Use a sub-struct for fbc operations in intel_display
  drm/i915/xe3p_lpd: Enable display use of system cache for FBC

 drivers/gpu/drm/i915/display/i9xx_plane.c     |  2 +-
 .../gpu/drm/i915/display/intel_display_core.h |  8 +-
 .../drm/i915/display/intel_display_device.h   |  1 +
 drivers/gpu/drm/i915/display/intel_fbc.c      | 99 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_fbc_regs.h | 10 ++
 .../drm/i915/display/skl_universal_plane.c    |  2 +-
 6 files changed, 116 insertions(+), 6 deletions(-)

-- 
2.43.0

