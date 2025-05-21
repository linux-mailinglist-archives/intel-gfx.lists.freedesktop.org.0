Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E45FDABFCA9
	for <lists+intel-gfx@lfdr.de>; Wed, 21 May 2025 20:16:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6CB810E729;
	Wed, 21 May 2025 18:16:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hFNyHyvc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A72210E729;
 Wed, 21 May 2025 18:16:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747851410; x=1779387410;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=aXrKt1oZMS5y6wPYOBVfAFfHuJ0lImmNDsxYRS9p8OI=;
 b=hFNyHyvc54voKD8ZNN49+1lPsjexNGquh3Q0i0k5XykyE6y6gR3G0k8N
 LPGswcjxtsFivS9NrKgNs0xZzn2HcS8mkPa3S0tqDauyYCrfFSrc58Xey
 N4UwX4OIopRdMPhHGll7shkaRLuWpFpsxsStuqVWBV6MSHcu9rEAaeJqN
 q4cP0HDn2nGmhROeBAw3qSjWmRiglyWOb4svx5AC4rexhNfK+Ac6RdL4n
 WCWYk+y2NbJ/h4tld1Aww8hXcXEOilrp3Fp732QGGSGiphbwvi/ONutsn
 A1ky4P2vzs6x9f1lNgzwMq7jWaQIMi4UcjMoBtMR8GiJv6EPOu0PJppVT w==;
X-CSE-ConnectionGUID: J7m9M0O9SYKLzkAUYuQC+g==
X-CSE-MsgGUID: bn3fAu6zTWeL3gyX3V5puQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11440"; a="75244698"
X-IronPort-AV: E=Sophos;i="6.15,304,1739865600"; d="scan'208";a="75244698"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2025 11:16:49 -0700
X-CSE-ConnectionGUID: nDnkTrUISZa3+SQUyksO/g==
X-CSE-MsgGUID: yHsm3syCS5mQi1rOgmjPdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,304,1739865600"; d="scan'208";a="145322267"
Received: from oandoniu-mobl3.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.255])
 by orviesa005.jf.intel.com with SMTP; 21 May 2025 11:16:46 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 21 May 2025 21:16:45 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v2 00/13] drm/i915/flipq: Rough flip queue implementation
Date: Wed, 21 May 2025 21:16:32 +0300
Message-ID: <20250521181645.32737-1-ville.syrjala@linux.intel.com>
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
    whould work on PTL now

Ville Syrjälä (13):
  drm/i915/dsb: Extract intel_dsb_ins_align()
  drm/i915/dsb: Use intel_dsb_ins_align() in intel_dsb_align_tail()
  drm/i915/dsb: Extract assert_dsb_tail_is_aligned()
  drm/i915/dsb: Extract intel_dsb_{head,tail}()
  drm/i915/dsb: Provide intel_dsb_head() and intel_dsb_size()
  drm/i915/dsb: Introduce intel_dsb_exec_time_us()
  drm/i915/dmc: Define flip queue related PIPEDMC registers
  drm/i915/flipq: Provide the nuts and bolts code for flip queue
  drm/i915/flipq: Implement flip queue based commit path
  drm/i915/flipq: Implement Wa_18034343758
  drm/i915/flipq: Implement Wa_16018781658 for LNL-A0
  drm/i915/flipq: Add intel_flipq_dump()
  drm/i915/flipq: Enable flipq by default for testing

 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/intel_display.c  |  68 ++-
 .../drm/i915/display/intel_display_driver.c   |   3 +
 .../drm/i915/display/intel_display_params.c   |   3 +
 .../drm/i915/display/intel_display_params.h   |   1 +
 .../drm/i915/display/intel_display_types.h    |  20 +
 drivers/gpu/drm/i915/display/intel_dmc.c      |  91 +++-
 drivers/gpu/drm/i915/display/intel_dmc.h      |  11 +
 drivers/gpu/drm/i915/display/intel_dmc_regs.h | 189 +++++++-
 drivers/gpu/drm/i915/display/intel_dsb.c      |  89 +++-
 drivers/gpu/drm/i915/display/intel_dsb.h      |   3 +
 drivers/gpu/drm/i915/display/intel_flipq.c    | 456 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_flipq.h    |  36 ++
 drivers/gpu/drm/xe/Makefile                   |   1 +
 14 files changed, 936 insertions(+), 36 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_flipq.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_flipq.h

-- 
2.49.0

