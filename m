Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD83B3ABDCE
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Jun 2021 23:12:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 236916E956;
	Thu, 17 Jun 2021 21:12:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 231736E95A
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Jun 2021 21:12:27 +0000 (UTC)
IronPort-SDR: xDj79sZok95+OnU9chxrsdYMl8Ar2y+rKZSC8h0d+S49V7uOBV9loPouOxaOen+st8UD9kV/LH
 EHBs2y+Tserg==
X-IronPort-AV: E=McAfee;i="6200,9189,10018"; a="227972392"
X-IronPort-AV: E=Sophos;i="5.83,281,1616482800"; d="scan'208";a="227972392"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2021 14:12:26 -0700
IronPort-SDR: EvbWAowYKvPGXdbv7VizZPd/+9Oa05c9FWPK32468KkXptlhaEfHKVUcaJFAPA4MsyK4KXg0ek
 vGbknJmB2ENQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,281,1616482800"; d="scan'208";a="622168078"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by orsmga005.jf.intel.com with ESMTP; 17 Jun 2021 14:12:25 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Jun 2021 14:12:20 -0700
Message-Id: <20210617211225.13549-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/5] Pipe DMC bits + PSR fix
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Pipe DMC series exposed a corner case in PSR patches
that were merged recently. Sending the fix along with
the Pipe DMC bits to get ensure that CI has no
regressions.

Anusha Srivatsa (4):
  drm/i915/dmc: Introduce DMC_FW_MAIN
  drm/i915/xelpd: Pipe A DMC plugging
  drm/i915/adl_p: Pipe B DMC Support
  drm/i915/adl_p: Load DMC

Gwan-gyeong Mun (1):
  drm/i915/display: Limit disabling PSR around cdclk changes to ADL-P

 drivers/gpu/drm/i915/display/intel_cdclk.c    |  22 ++-
 .../drm/i915/display/intel_display_debugfs.c  |   6 +-
 .../drm/i915/display/intel_display_power.c    |   5 +-
 drivers/gpu/drm/i915/display/intel_dmc.c      | 165 ++++++++++--------
 drivers/gpu/drm/i915/display/intel_dmc.h      |  23 ++-
 drivers/gpu/drm/i915/i915_reg.h               |   2 +-
 6 files changed, 139 insertions(+), 84 deletions(-)

-- 
2.32.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
