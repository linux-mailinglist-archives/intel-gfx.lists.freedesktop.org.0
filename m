Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9B0E9B54B4
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 22:10:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5140310E3AE;
	Tue, 29 Oct 2024 21:10:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TuSAlrPB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC81010E3AE
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2024 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730236233; x=1761772233;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+CR2G/5CRH7f+xZBwYSRwe3N/yX9Ep27MD25FxWct6M=;
 b=TuSAlrPBXWWYxp1Qubl+AEWJPrDWhLucQQkBA9h5kWb3zuBaHADMZXEw
 XtQMNHDmWuMbp9UUPHLKazSV9OnGktu8XGZ4IH5d4ozPtrHIKSS/SFJeC
 nMgmJyS8GKkv/88srPcAi8PmgPKHxPFaKEELg3drvn9xbs5LaBkMr3QtZ
 NbiEaUEK7usKZukvBWATxOuaqWjUCkbc3qz+fqeyCmEjzWzbPh3j0oqRD
 EY6JIOfbpyAoZyioQc8poqk4LJkWg3OF++F6mx1g02lFp0zvshzhYOZgR
 Z18R75YqO/vNbsSfqsoHTur20YJd+RPqywsj5gURFFDm9gfwTnCMv/R76 Q==;
X-CSE-ConnectionGUID: 81E/G9GeSe2JVIaPCHpw1w==
X-CSE-MsgGUID: JASNZ+sDRNmurth9HI5AhQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11240"; a="30019405"
X-IronPort-AV: E=Sophos;i="6.11,243,1725346800"; d="scan'208";a="30019405"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 14:10:33 -0700
X-CSE-ConnectionGUID: dqTS4rAWS4uKlq22KMnPSw==
X-CSE-MsgGUID: fyKzEkHTQa6wNOrkhvrdIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,243,1725346800"; d="scan'208";a="82191587"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 29 Oct 2024 14:10:31 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 29 Oct 2024 23:10:30 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/9] drm/i915/scaler: Scaler code cleanups
Date: Tue, 29 Oct 2024 23:10:21 +0200
Message-ID: <20241029211030.13255-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Bunch of cleanups/refactoring in the scaler code.

Ville Syrjälä (9):
  drm/i915/scaler: s/intel_crtc/crtc/ etc.
  drm/i915/scaler: Remove redudant junk from skl_scaler.h
  drm/i915/scaler: Pass the whole atomic state into
    intel_atomic_setup_scalers()
  drm/i915/scaler: Clean up intel_atomic_setup_scalers() a bit
  drm/i915/scaler: Convert the scaler code to intel_display
  drm/i915/scaler: Carve up intel_atomic_setup_scalers()
  drm/i915/scaler: Move pfit scaler into pfit state
  drm/i915/scaler: Make scaler in_use a bool
  drm/i915/scaler: Extract intel_allocate_scaler()

 drivers/gpu/drm/i915/display/intel_crtc.c     |   2 +-
 .../drm/i915/display/intel_crtc_state_dump.c  |   4 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   4 +-
 .../drm/i915/display/intel_display_debugfs.c  |   2 +-
 .../drm/i915/display/intel_display_types.h    |   9 +-
 drivers/gpu/drm/i915/display/intel_psr.c      |   2 +-
 drivers/gpu/drm/i915/display/skl_scaler.c     | 294 +++++++++---------
 drivers/gpu/drm/i915/display/skl_scaler.h     |  11 +-
 8 files changed, 165 insertions(+), 163 deletions(-)

-- 
2.45.2

