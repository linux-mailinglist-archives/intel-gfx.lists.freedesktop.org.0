Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F345046EFB2
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Dec 2021 18:02:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60E5310EDE1;
	Thu,  9 Dec 2021 16:54:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A07E889E86
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Dec 2021 16:51:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639068716; x=1670604716;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tuSxJFiZtsOA3lNM2c1a+Mk+5EepZiLg6wZ+syu713g=;
 b=F7bAPGVPp7c8Zx+HPdQBJ9bnJ35I406MW5fp9wce5HQ7QY4+6IYaBkxk
 RL+rLI9xO76/9eolFB40co+KF5EDImYmfpI+kLPWEUswRCe95yYxalPSX
 rQrQGrNB5zHArTGieP/J7a3GNil7Y+P6dsQw3fhn8c8Ya4TonAmqIQ3Ej
 qe64dprPh27ncSxT95IKl7Xtoiq5xw8VtEEYt/JwdoT1wz3WZ0J126Nix
 A+TlQgoDr6dKE89QayafrCO2i4GvDa8y+uUnJ6OFQAix541oPb65Ie/Ps
 qfOJcN8fc+jXICnjmn2CzCODHqb+83FNQV4KNkOsIURBeMeIrWkgCHKBc Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10193"; a="237953324"
X-IronPort-AV: E=Sophos;i="5.88,193,1635231600"; d="scan'208";a="237953324"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 08:51:32 -0800
X-IronPort-AV: E=Sophos;i="5.88,193,1635231600"; d="scan'208";a="463313491"
Received: from cwilso3-mobl.fi.intel.com (HELO localhost) ([10.252.19.112])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 08:51:30 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Dec 2021 18:51:21 +0200
Message-Id: <cover.1639068649.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/4] drm/i915/cdclk: improve abstractions
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Clean up the cdclk header dependencies.

Jani Nikula (4):
  drm/i915/cdclk: move intel_atomic_check_cdclk() to intel_cdclk.c
  drm/i915/cdclk: un-inline intel_cdclk_state functions
  drm/i915/cdclk: hide struct intel_cdclk_vals
  drm/i915/cdclk: turn around i915_drv.h and intel_cdclk.h dependency

 drivers/gpu/drm/i915/display/intel_atomic.c  |  1 +
 drivers/gpu/drm/i915/display/intel_cdclk.c   | 81 +++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_cdclk.h   | 26 +++----
 drivers/gpu/drm/i915/display/intel_display.c | 55 +------------
 drivers/gpu/drm/i915/i915_drv.h              |  6 +-
 5 files changed, 96 insertions(+), 73 deletions(-)

-- 
2.30.2

