Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B24DACC8BD
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Jun 2025 16:08:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4A6110E5C2;
	Tue,  3 Jun 2025 14:08:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eI1Jw+8q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 877C410E1F8;
 Tue,  3 Jun 2025 14:08:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748959720; x=1780495720;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/nAz8VcWREnRu5d35afbOqwTrlBcaAUF2Aquf0dvrEo=;
 b=eI1Jw+8qvNtd7q/HEmYeX8VCqNViM5Dum6vtXsKnSmDgg/aQQFXluJ0J
 FkBZNO/kC+etTlmBX5ne7wxS2BlvAtksQ6E8ZsbCpr9f6KmjKdoAQFe2C
 O8Qcwp/BKKmtJ3DFj8Eq15zcaDKYOLFkTGgkrJcPA0iD+5ecJf5IsxeXv
 IhsRMhsJLOwf82mjHy31x5NLPWYTxMk/u1rrGOJZ32oNQApfovmxKtAEi
 zuRlvX82tKCSFFmD1kI6Fy3nLPJw96wOObWX+/bsRZvfVZBiWnlMufHjt
 cSqY481gm2Apz+POXGegHHMzca5cxIyAomAzyNqJ5lni3+FOfOc0ThOYQ Q==;
X-CSE-ConnectionGUID: KhDzouR6Q1+PFG3kImZ/Nw==
X-CSE-MsgGUID: RhsCzminSQ2MIwQtoMEn3w==
X-IronPort-AV: E=McAfee;i="6700,10204,11453"; a="61265800"
X-IronPort-AV: E=Sophos;i="6.16,206,1744095600"; d="scan'208";a="61265800"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2025 07:08:40 -0700
X-CSE-ConnectionGUID: eKCTqqzHRS606S4j637FWA==
X-CSE-MsgGUID: s8FECzMeR2qgXDaS3k99Rw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,206,1744095600"; d="scan'208";a="150155561"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.220])
 by orviesa005.jf.intel.com with SMTP; 03 Jun 2025 07:08:38 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 03 Jun 2025 17:08:36 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v3 00/12] drm/i915/flipq: Rough flip queue implementation
Date: Tue,  3 Jun 2025 17:08:24 +0300
Message-ID: <20250603140836.21432-1-ville.syrjala@linux.intel.com>
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
Briefly smoke tested on LNL, not much more.

Still has quite a few warts..

v2: cleaned up a few of the warts at least
    should work on PTL now
v3: Rebase due to DSB GOSUB stuff getting merged
    Try to fix PKG_C_LATENCY
    Ignore INT_VECTOR when opther PIPEDMC interrupt are present

Ville Syrjälä (12):
  drm/i915/dsb: Use intel_dsb_ins_align() in intel_dsb_align_tail()
  drm/i915/dsb: Provide intel_dsb_head() and intel_dsb_size()
  drm/i915/dsb: Introduce intel_dsb_exec_time_us()
  drm/i915: Set PKG_C_LATENCY.added_wake_time to 0
  drm/i915: Try to program PKG_C_LATENCY more correctly
  drm/i915/dmc: Define flip queue related PIPEDMC registers
  drm/i915/flipq: Provide the nuts and bolts code for flip queue
  drm/i915/flipq: Implement flip queue based commit path
  drm/i915/flipq: Implement Wa_18034343758
  drm/i915/flipq: Implement Wa_16018781658 for LNL-A0
  drm/i915/flipq: Add intel_flipq_dump()
  drm/i915/flipq: Enable flipq by default for testing

 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/intel_display.c  |  53 +-
 .../gpu/drm/i915/display/intel_display_core.h |   6 +
 .../drm/i915/display/intel_display_driver.c   |   3 +
 .../drm/i915/display/intel_display_params.c   |   3 +
 .../drm/i915/display/intel_display_params.h   |   1 +
 .../drm/i915/display/intel_display_types.h    |  20 +
 drivers/gpu/drm/i915/display/intel_dmc.c      |  95 +++-
 drivers/gpu/drm/i915/display/intel_dmc.h      |  11 +
 drivers/gpu/drm/i915/display/intel_dmc_regs.h | 193 ++++++-
 drivers/gpu/drm/i915/display/intel_dsb.c      |  38 +-
 drivers/gpu/drm/i915/display/intel_dsb.h      |   3 +
 drivers/gpu/drm/i915/display/intel_flipq.c    | 469 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_flipq.h    |  37 ++
 drivers/gpu/drm/i915/display/skl_watermark.c  | 108 ++--
 drivers/gpu/drm/xe/Makefile                   |   1 +
 16 files changed, 972 insertions(+), 70 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_flipq.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_flipq.h

-- 
2.49.0

