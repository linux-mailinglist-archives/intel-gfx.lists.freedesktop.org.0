Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55AB58CFE9A
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2024 13:11:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64C1A10E819;
	Mon, 27 May 2024 11:11:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IgITGiv+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C241B10E819
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2024 11:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716808260; x=1748344260;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=eC5htfBVdUitUtlqKnHkUsPor8V6Y0AMIrYiq3Ew0G4=;
 b=IgITGiv+S7IEQ8uzCvz9iXD6Bt/Nfit91D0HtQfgTLyWqsX/GIbqeZYc
 1jythcuMb7Lra2vHVobubJJt9ZoqK69P4EYrhbih9v0mGpQcKNiCsrU9k
 qGKy47BHSUle3IaHEEcpag5HiNQ9GZjTuMEiwbYgFT8B+83qt0tLFtnBB
 8UyX+B8Ux01r0hR5zNy2YjA0BaGDbp5H1JLoEunr8XAq7Kru/gdEmsQrT
 oNnGClz2HMVBpxITIUfsiaHvI7AJgIUqCsXvDQ8iOTZgIlCkXGdUgjveV
 WjiLpo4PoeHPdMSiYV/g/Kw1yEY6YRjrEHv0svhdSX6JKEdfHA+6PLdNB w==;
X-CSE-ConnectionGUID: eDoU3EFXTy6jElxRAEXJ0Q==
X-CSE-MsgGUID: XKXq30iKTsuT+dhXFxrMjA==
X-IronPort-AV: E=McAfee;i="6600,9927,11084"; a="24246603"
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="24246603"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 04:10:59 -0700
X-CSE-ConnectionGUID: RR1cJfj7TgC9iFmc782dKw==
X-CSE-MsgGUID: xVQ3V+ZCRp+sgYwPynE4Qw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="72152902"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.200])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 04:10:59 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 00/11] drm/i915: pass dev_priv explicitly to DIP regs
Date: Mon, 27 May 2024 14:10:42 +0300
Message-Id: <cover.1716808214.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
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

Continue removing implicit dev_priv references.

Jani Nikula (11):
  drm/i915: pass dev_priv explicitly to HSW_TVIDEO_DIP_CTL
  drm/i915: pass dev_priv explicitly to HSW_TVIDEO_DIP_GCP
  drm/i915: pass dev_priv explicitly to HSW_TVIDEO_DIP_AVI_DATA
  drm/i915: pass dev_priv explicitly to HSW_TVIDEO_DIP_VS_DATA
  drm/i915: pass dev_priv explicitly to HSW_TVIDEO_DIP_SPD_DATA
  drm/i915: pass dev_priv explicitly to HSW_TVIDEO_DIP_GMP_DATA
  drm/i915: pass dev_priv explicitly to HSW_TVIDEO_DIP_VSC_DATA
  drm/i915: pass dev_priv explicitly to GLK_TVIDEO_DIP_DRM_DATA
  drm/i915: pass dev_priv explicitly to ICL_VIDEO_DIP_PPS_DATA
  drm/i915: pass dev_priv explicitly to ICL_VIDEO_DIP_PPS_ECC
  drm/i915: pass dev_priv explicitly to ADL_TVIDEO_DIP_AS_SDP_DATA

 drivers/gpu/drm/i915/display/intel_dp.c     |  3 ++-
 drivers/gpu/drm/i915/display/intel_hdmi.c   | 27 +++++++++++----------
 drivers/gpu/drm/i915/display/intel_lspcon.c |  2 +-
 drivers/gpu/drm/i915/i915_reg.h             | 22 ++++++++---------
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c | 12 ++++-----
 5 files changed, 34 insertions(+), 32 deletions(-)

-- 
2.39.2

