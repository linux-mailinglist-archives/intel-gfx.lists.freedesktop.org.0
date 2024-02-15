Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 297DC85600E
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Feb 2024 11:50:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A37510E5A9;
	Thu, 15 Feb 2024 10:50:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AZVNFZTj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CAD610E4B7
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Feb 2024 10:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707994206; x=1739530206;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=XyPOyXO31UjmUB1VlXJN2Of+Hxdh3yGtYJ6fow+KpVk=;
 b=AZVNFZTjM6RlbbQglAcw05C5W1J+03jRUDk5TO80DiKNK4LBYxjsTlAm
 XsGqfVveSUO5hyGOTfGWaIBag4f97+dPuoa5vskoaylYJIFH+c7O5DZxZ
 l/6VyWCScdfxXAl3ETdr5kZ9MBfvP4DX56RHM6SXY7EulueD29b31PLmR
 khJI6ZLa0rbj8VG4siIp4A8pMw1LEorGIBlyWzD3/Ftp8LfQggimbl/tM
 QyI151NLdi1L75jI5l31m3kK29ZC45jSbeSeRNdWIi9jLAr+dWuKYy6yh
 mOD2rhj17gstCS6eWTzJ3xYi6xcrgzmCKk50Qxa5ekHP/coW+RTvJ4bYk w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10984"; a="2219008"
X-IronPort-AV: E=Sophos;i="6.06,161,1705392000"; 
   d="scan'208";a="2219008"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2024 02:50:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,161,1705392000"; d="scan'208";a="26653229"
Received: from marquiz-desk-2.fi.intel.com (HELO jhogande-mobl1.fi.intel.com)
 ([10.237.72.63])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2024 02:50:03 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Animesh Manna <animesh.manna@intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCH 0/6] ALPM AUX-Less
Date: Thu, 15 Feb 2024 12:49:28 +0200
Message-Id: <20240215104934.2395239-1-jouni.hogander@intel.com>
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

This patch set is implementing calculation of ALPM AUX-Less parameters
for Intel HW and writing them in case of AUX-Less is enabled. It is
also enabling ALPM AUX-Less for eDP Panel Replay. Current code is
currently not allowing Panel Replay on eDP. Patches for this are
coming later.

Cc: Animesh Manna <animesh.manna@intel.com>
Cc: Arun R Murthy <arun.r.murthy@intel.com>

Jouni Högander (6):
  drm/display: Add missing aux less alpm wake related bits
  drm/i915/psr: Calculate aux less wake time
  drm/i915/psr: Calculate aux less switch to active latency
  drm/i915/psr: Silence period and lfps half cycle
  drm/i915/psr: Add missing ALPM AUX-Less register defintions
  drm/i915/psr: Enable ALPM for eDP Panel replay

 .../drm/i915/display/intel_display_types.h    |   4 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 188 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_psr_regs.h |  12 +-
 include/drm/display/drm_dp.h                  |   5 +-
 4 files changed, 200 insertions(+), 9 deletions(-)

-- 
2.34.1

