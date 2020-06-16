Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA4C1FC279
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2020 01:58:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05F4E6E0E2;
	Tue, 16 Jun 2020 23:58:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F3C36E0E2
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jun 2020 23:58:14 +0000 (UTC)
IronPort-SDR: 8qRj5leQjjnqMY+RwhsWg+kG1Fg9gzvKdkIJU4HBHvan2ME6QotiG2w9jK2+tcoIbIX1WLQzUp
 YpmmXOZTGh+w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2020 16:58:14 -0700
IronPort-SDR: gV3oQW8Id5irhdbxSPYeWjWg9lXlOg1aavcGNz0wlUIKMSzq8n6VsrqKKm7W/uotgj35K0RXPj
 uwczL9c5mrsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,520,1583222400"; d="scan'208";a="277097119"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by orsmga006.jf.intel.com with ESMTP; 16 Jun 2020 16:58:13 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 16 Jun 2020 16:58:05 -0700
Message-Id: <20200616235810.3848540-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 0/5] Remaining RKL patches
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

Pretty much the same as v5 (and v4).  The only changes are:
 * Extend Wa_1604555607 to RKL in patch #4.
 * Add display Wa_14011224835 as a new patch #5.

Matt Roper (5):
  drm/i915/rkl: Handle new DPCLKA_CFGCR0 layout
  drm/i915/rkl: Add DPLL4 support
  drm/i915/rkl: Handle HTI
  drm/i915/rkl: Add initial workarounds
  drm/i915/rkl: Add Wa_14011224835 for PHY B initialization

 .../gpu/drm/i915/display/intel_combo_phy.c    | 26 ++++++
 drivers/gpu/drm/i915/display/intel_ddi.c      | 18 +++-
 drivers/gpu/drm/i915/display/intel_display.c  | 45 ++++++++--
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 50 ++++++++++-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  1 +
 drivers/gpu/drm/i915/display/intel_sprite.c   |  5 +-
 drivers/gpu/drm/i915/gt/intel_workarounds.c   | 88 ++++++++++++-------
 drivers/gpu/drm/i915/i915_drv.h               |  3 +
 drivers/gpu/drm/i915/i915_reg.h               | 25 +++++-
 9 files changed, 213 insertions(+), 48 deletions(-)

-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
