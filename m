Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48E149F04D7
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2024 07:35:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF16B10EF0C;
	Fri, 13 Dec 2024 06:35:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CvXROExp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0EF410EF06;
 Fri, 13 Dec 2024 06:35:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734071741; x=1765607741;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fO0y6tDVIqGA5mzwN39O4gXCOpR2X4WNAoeAiZh5mn0=;
 b=CvXROExpw00+B44YYwecnSj/PNiTn4GrxS98Z/F7mOJ4lmmkI0M7AsMn
 3dPp4EOaglpilxD5UWVLKEKQA0HgiJWoulZ/xnWhul8M6nDH4LT2pAmEA
 vxyyKiVYx+NvUzkA/EEbB2XUwZ7J9rUkUtAqmFmXG3ytNgg/XnbDEhQga
 Ha97AEY0qlGvc0+6eHaG7JSBIEYuHh6jK7tuHEBi9+Wnt+WbJPGUqlWl4
 1iYxJBerZa7hfHO3sLDlWws7mf/RQYNA6hEcWFPUPri/oOhrQsHT/bpJi
 fDTmIPrG3+z5AxbGZhLn1928XSWnrmPTUh/v5HaWazvDHA9MHiombWzJb w==;
X-CSE-ConnectionGUID: roTY9rqPQaSbWmaMuwdXIg==
X-CSE-MsgGUID: ONRmrBsYT3635fWCtCcH6Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11284"; a="33846819"
X-IronPort-AV: E=Sophos;i="6.12,230,1728975600"; d="scan'208";a="33846819"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2024 22:35:41 -0800
X-CSE-ConnectionGUID: C8bMkDKSQtOzALawbofPdA==
X-CSE-MsgGUID: OhgDRduqSOOCcLKRFPpnZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="96307683"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.191])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2024 22:35:40 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 00/10] PSR DSB support
Date: Fri, 13 Dec 2024 08:35:18 +0200
Message-Id: <20241213063528.2759659-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

This patch set is doing necessary modifications to support PSR update
using DSB on LunarLake onwards

It is not necessary to wait for PSR1 to idle or PSR2 to exit DEEP
sleep at the begin of commit This is left out from DSB commit. There
might be room for optimization for non-DSB as well because such wait
is not supposed to be necessary at the begin of update.

PSR mutex is not locked when performing DSB commit. It is not
necessary as we are currently using DSB only when sending updates
towards panel. I.e. not using it when chaning PSR mode. Also necessary
changes are made to use PSR2_MAN_TRK_CTL only in DSB. Frontbuffer
updates and legacy cursor updates are using SFF_CTL register to
perform full frame updates.

Jouni Högander (10):
  drm/i915/psr: Use PSR2_MAN_TRK_CTL CFF bit only to send full update
  drm/i915/psr: Rename psr_force_hw_tracking_exit as
    intel_psr_force_update
  drm/i915/psr: Split setting sff and cff bits away from
    intel_psr_force_update
  drm/i915/psr: Add register definitions for SFF_CTL and CFF_CTL
    registers
  drm/i915/psr: Ensure SFF/CFF bits are not written at their sample
    point
  drm/i915/psr: Use SFF_CTL on invalidate/flush for LunarLake onwards
  drm/i915/psr: Allow writing PSR2_MAN_TRK_CTL using DSB
  drm/i915/psr: Changes for PSR2_MAN_TRK_CTL handling when DSB is in use
  drm/i915/psr: Remove DSB_SKIP_WAITS_EN chicken bit
  drm/i915/psr: Allow DSB usage when PSR is enabled

 drivers/gpu/drm/i915/display/intel_display.c  |   8 +-
 drivers/gpu/drm/i915/display/intel_dsb.c      |   5 +-
 drivers/gpu/drm/i915/display/intel_psr.c      | 134 +++++++++---------
 drivers/gpu/drm/i915/display/intel_psr.h      |   4 +-
 drivers/gpu/drm/i915/display/intel_psr_regs.h |   8 ++
 5 files changed, 87 insertions(+), 72 deletions(-)

-- 
2.34.1

