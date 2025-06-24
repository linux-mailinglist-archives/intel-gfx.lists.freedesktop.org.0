Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0277AE6D2B
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jun 2025 19:00:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6217110E600;
	Tue, 24 Jun 2025 17:00:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YR71o+Es";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C85D10E5F8;
 Tue, 24 Jun 2025 17:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750784453; x=1782320453;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=t2c1nV7vvL72A78EKZxfqxrGp1iSurwtLUyodZ/fUfk=;
 b=YR71o+EsNA9k0UvENdY8nrIDPs+tfrjZnY1jZkYXY5Hz242zQBPKqxEU
 OuLvWPEgxeELMRge1EYZl4aTPoOnxl390VTunYwOsZRq6UAExQA4Njmph
 +x1MCiqS/+pewnRzTljAKLtZ5d7Ul6tyeI/Jb6cOjZ4Q8VJRiCwcrv8W2
 SrCIgpD0+pFv07JRfXDLEqu47Q574SbxGK92aq1EIsTDihz4PRfVrYw2i
 YWjhAPDyg0AgZYVA0f2dyeBCwmISWW6IpNAWcy0ieZtFC60dedy3W1wky
 /UoKAjgr+4fjER7206aJCSMzaHiaB/8xSjbjEFme5rn0KuA8TmMAmDrDI Q==;
X-CSE-ConnectionGUID: jKBhoVsbRUytCnGHNhQAxw==
X-CSE-MsgGUID: ZodBV+gARb2uZ8jRjzDlpQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11474"; a="56820832"
X-IronPort-AV: E=Sophos;i="6.16,262,1744095600"; d="scan'208";a="56820832"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2025 10:00:52 -0700
X-CSE-ConnectionGUID: OqQPdlgiRyCjFvHqtP/6rA==
X-CSE-MsgGUID: gvD2Y3ZaQD6+1oMtYATepg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,262,1744095600"; d="scan'208";a="157749593"
Received: from vpanait-mobl.ger.corp.intel.com (HELO stinkbox)
 ([10.245.245.73])
 by orviesa005.jf.intel.com with SMTP; 24 Jun 2025 10:00:51 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 24 Jun 2025 20:00:49 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v5 0/9] drm/i915/flipq: Rough flip queue implementation
Date: Tue, 24 Jun 2025 20:00:40 +0300
Message-ID: <20250624170049.27284-1-ville.syrjala@linux.intel.com>
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

Initial stab at implementing the PIPEDMC based flip queue.
Briefly smoke tested on LNL and PTL-A0, not much more.

Still has quite a few warts..

v2: cleaned up a few of the warts at least
    should work on PTL now
v3: Rebase due to DSB GOSUB stuff getting merged
    Try to fix PKG_C_LATENCY
    Ignore INT_VECTOR when opther PIPEDMC interrupt are present
v4: Fix up some DSB issues
    Limit DMC clock gating w/as
    Reload pipe C/D PIPEDMC MMIOs on PTL
    Disable PSR in order to get a bit more CI coverage
v5: DMC and DSB fixes already merged
    Drop the DMC halt w/a for PTL-B0+
    Add some docs

Ville Syrjälä (9):
  drm/i915: Set PKG_C_LATENCY.added_wake_time to 0
  drm/i915: Try to program PKG_C_LATENCY more correctly
  drm/i915/dmc: Define flip queue related PIPEDMC registers
  drm/i915/flipq: Provide the nuts and bolts code for flip queue
  drm/i915/flipq: Implement flip queue based commit path
  drm/i915/flipq: Implement Wa_18034343758
  drm/i915/flipq: Implement Wa_16018781658 for LNL-A0
  drm/i915/flipq: Add intel_flipq_dump()
  drm/i915/flipq: Enable flipq by default for testing

 Documentation/gpu/i915.rst                    |   6 +
 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/intel_display.c  |  53 +-
 .../gpu/drm/i915/display/intel_display_core.h |   6 +
 .../drm/i915/display/intel_display_driver.c   |   3 +
 .../drm/i915/display/intel_display_params.c   |   3 +
 .../drm/i915/display/intel_display_params.h   |   1 +
 .../drm/i915/display/intel_display_types.h    |  20 +
 drivers/gpu/drm/i915/display/intel_dmc.c      |  94 +++-
 drivers/gpu/drm/i915/display/intel_dmc.h      |  11 +
 drivers/gpu/drm/i915/display/intel_dmc_regs.h | 190 +++++++
 drivers/gpu/drm/i915/display/intel_flipq.c    | 484 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_flipq.h    |  37 ++
 drivers/gpu/drm/i915/display/skl_watermark.c  | 109 ++--
 drivers/gpu/drm/xe/Makefile                   |   1 +
 15 files changed, 955 insertions(+), 64 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_flipq.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_flipq.h

-- 
2.49.0

