Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 492041F7242
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2020 04:35:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7DB76E0D0;
	Fri, 12 Jun 2020 02:35:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDAA66E0D0
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jun 2020 02:35:38 +0000 (UTC)
IronPort-SDR: vn/QHuir4ydeLYYDfVcdKsHXky5fNI8tZTQljhOEyERjkHluA2OTEKgvPw6kV0a8tuOsJmHq5q
 MYVCg2/TaM8A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2020 19:35:38 -0700
IronPort-SDR: 9vY5/dBNEVbKIGqIFl2xumcEC8aY7d9WAGNJ7r5+aei3cSgzeaFCtKZU5UYxRLepwQCHY93zG7
 rbSfC9pOZiEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,501,1583222400"; d="scan'208";a="380578172"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by fmsmga001.fm.intel.com with ESMTP; 11 Jun 2020 19:35:38 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Jun 2020 19:35:29 -0700
Message-Id: <20200612023533.3611774-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 0/4] Remaining RKL patches
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

Most of the Rocket Lake enablement patches have landed on drm-tip now,
but there are still a few left awaiting reviews.  Rebasing and resending
the ones that still need attention.

Matt Roper (4):
  drm/i915/rkl: Handle new DPCLKA_CFGCR0 layout
  drm/i915/rkl: Add DPLL4 support
  drm/i915/rkl: Handle HTI
  drm/i915/rkl: Add initial workarounds

 drivers/gpu/drm/i915/display/intel_ddi.c      | 18 +++-
 drivers/gpu/drm/i915/display/intel_display.c  | 45 ++++++++--
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 50 ++++++++++-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  1 +
 drivers/gpu/drm/i915/display/intel_sprite.c   |  5 +-
 drivers/gpu/drm/i915/gt/intel_workarounds.c   | 88 ++++++++++++-------
 drivers/gpu/drm/i915/i915_drv.h               |  3 +
 drivers/gpu/drm/i915/i915_reg.h               | 12 +++
 8 files changed, 175 insertions(+), 47 deletions(-)

-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
