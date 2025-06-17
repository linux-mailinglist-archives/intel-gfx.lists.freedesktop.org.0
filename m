Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 021B8ADD9A3
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Jun 2025 19:08:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 871C010E771;
	Tue, 17 Jun 2025 17:08:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lAxmBrxV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80BFD10E771;
 Tue, 17 Jun 2025 17:08:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750180104; x=1781716104;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=NsEcHlnB6+JnUECsEJ4EOLZgrXEg7pg7nSyYjg0l+pc=;
 b=lAxmBrxVOCurlQE+OLZrWBAUd51ixRa8m2QHd4xd+4ssK4TfrAZefdqj
 LyaE7KbHIJ7i+nwjoC7VG0GEHRmYnw1qcm2NsgOg5b+XGY/lFfDcJpXZ+
 b2d2PeN8ZJEob23oA4w5AjyN8pckaEEz+NrIHwiOpcgZ0u6IyfNmTnuC+
 zMKs2XuNM5YHLh2qUHSvWfZ1N+DHPVG//h4OWMIBS/UlmN6YjGRTGKL57
 YoIXOi6OisKhLVNeHYZMqBb6Bmfh2b3tsPkP4fzZ+bmZmh4lZwaSzo1t0
 xGQkNBQyEMUU09OfNt3a6Gl7G+ELcnfWqk6vWcWSHI2Nr3eCkVfiUCnRD g==;
X-CSE-ConnectionGUID: x5v1YYVhT8SG+qBfAWZJsA==
X-CSE-MsgGUID: 5UfqjQi2TIe1j/ENkxLKBw==
X-IronPort-AV: E=McAfee;i="6800,10657,11467"; a="62644608"
X-IronPort-AV: E=Sophos;i="6.16,243,1744095600"; d="scan'208";a="62644608"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2025 10:08:03 -0700
X-CSE-ConnectionGUID: n2/NRYdkSPuf7KVlCfLkPw==
X-CSE-MsgGUID: huosjqdLQ4eaxN+fFBexIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,243,1744095600"; d="scan'208";a="154138404"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO stinkbox)
 ([10.245.245.184])
 by orviesa005.jf.intel.com with SMTP; 17 Jun 2025 10:08:01 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 17 Jun 2025 20:07:59 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v2 0/9] drm/i915/dmc: Deal with loss of pipe DMC state
Date: Tue, 17 Jun 2025 20:07:50 +0300
Message-ID: <20250617170759.19552-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
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

Attempt to deal with the fact that pipe DMCs can sometimes
lose their state.

v2: Handle more platforms

Ville Syrjälä (9):
  drm/i915/dmc: Limit pipe DMC clock gating w/a to just ADL/DG2/MTL
  drm/i915/dmc: Parametrize MTL_PIPEDMC_GATING_DIS
  drm/i915/dmc: Shuffle code around
  drm/i915/dmc: Extract dmc_load_program()
  drm/i915/dmc: Reload pipe DMC state on TGL when enabling pipe A
  drm/i915/dmc: Reload pipe DMC MMIO registers for pipe C/D on various
    platforms
  drm/i915/dmc: Assert DMC is loaded harder
  drm/i915/dmc: Pass crtc_state to intel_dmc_{enable,disable}_pipe()
  drm/i915/dmc: Do not enable the pipe DMC on TGL when PSR is possible

 drivers/gpu/drm/i915/display/intel_display.c  |  16 +-
 .../i915/display/intel_display_power_well.c   |   4 +-
 drivers/gpu/drm/i915/display/intel_dmc.c      | 371 ++++++++++++------
 drivers/gpu/drm/i915/display/intel_dmc.h      |   7 +-
 .../drm/i915/display/intel_modeset_setup.c    |   2 +-
 drivers/gpu/drm/i915/i915_reg.h               |   3 +-
 6 files changed, 269 insertions(+), 134 deletions(-)

-- 
2.49.0

