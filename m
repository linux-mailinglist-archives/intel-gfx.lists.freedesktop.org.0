Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C6B9CC86E3
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Dec 2025 16:28:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D68D10E8BF;
	Wed, 17 Dec 2025 15:28:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WgwEYkRC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B4B410E8BA;
 Wed, 17 Dec 2025 15:28:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765985321; x=1797521321;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=oeFOnEpIeWLH5LLT/A02oLxw/RY3cA7c+faTvUxwb2c=;
 b=WgwEYkRC8Am1odHW/OIDCgwtNdgdskclWVNY86skdLjiymp1glsq7tjT
 e1x7e2GTi+QvMyCGhDAKSzlhQyZFr1oLcKij3GWn/1xnKROf2l9UrWAI9
 mQ5AQDCbEn6UJEqlrg8wmVtAxR2AY7hsbOfFKiK/lCASVSs8B47yrJ88V
 sK5223nGtr8k1oyegjZNPq2qQoh+MvZmThlnNMvK0IgxlKKTXjfLFoQoG
 vck0WOv0/8lm80IZKJPJCycKmv6mdB8UtWo5w98KZnwmKoC4HsRf7CpQl
 xi3yqnSBzMUxVH3L3zXWu7G4C8xDS5s2dV45vVt0TwTczceJzYAJ9y23E g==;
X-CSE-ConnectionGUID: +h/BRGBsQmamqrs55SYGsg==
X-CSE-MsgGUID: eWLutqoeQo+Z7bn0P86qPQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11645"; a="71781408"
X-IronPort-AV: E=Sophos;i="6.21,156,1763452800"; d="scan'208";a="71781408"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2025 07:28:40 -0800
X-CSE-ConnectionGUID: Rll15jJjTc2BzIzGZw/Bog==
X-CSE-MsgGUID: 5xmk+FhKTOGzCj2xzi8JAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,156,1763452800"; d="scan'208";a="198097278"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa009.jf.intel.com with ESMTP; 17 Dec 2025 07:28:38 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
	Imre Deak <imre.deak@intel.com>
Subject: [PATCH v2 00/15] drm/i915/pll: Verify pll dividers and remove
 redundant .clock member
Date: Wed, 17 Dec 2025 17:19:40 +0200
Message-Id: <20251217151955.1690202-1-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
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

Fix the issues in v1 after further testing, review and issues existing
in the current code revealed by the self-tests added by the patchset
and as such gives a background/rationale for adding all the self-test
infra in the patchset (see last 3 items below).

* Fix determining the encoder mode from the crtc_state vs.
   the intel_encoder_is_dp/hdmi() helpers
* Fix termination of PLL parameter list in the PLL tables
* Move changes in the patchset to the patch they logically belong
* Use a stricter +-1kHz allowance for a difference between the
   computed and requested PLL clock rate
* Drop fixed non-FRL HDMI PLL parameter entries, due to a mismatch
   between the fixed PLL dividers and clock rate for these
* Fix 10x-off FRL HDMI clock rates
* Fix DP2.0 10G and 20G and HDMI FRL clock rate determination
   during PLL enabling

https://lore.kernel.org/intel-gfx/20251216083759.383163-1-mika.kahola@intel.com/

Cc: Imre Deak <imre.deak@intel.com>

Mika Kahola (15):
  drm/i915/c10: Move C10 port clock calculation
  drm/i915/c20: Move C20 port clock calculation
  drm/i915/cx0: Drop Cx0 crtc_state from HDMI TMDS pll divider
    calculation
  drm/i915/lt_phy: Drop LT PHY crtc_state for port calculation
  drm/i915/cx0: Drop encoder from port clock calculation
  drm/i915/cx0: Create macro around pll tables
  drm/i915/lt_phy: Create macro for lt phy pll state
  drm/i915/display: Add helper function for fuzzy clock check
  drm/i915/cx0: Fix HDMI FRL clock rates
  drm/i915/cx0: Add a fuzzy check for DP/HDMI clock rates during
    programming
  drm/i915/cx0: Verify C10/C20 pll dividers
  drm/i915/lt_phy: Add verification for lt phy pll dividers
  drm/i915/cx0: Drop C20 25.175 MHz rate
  drm/i915/lt_phy: Drop 27.2 MHz rate
  drm/i915/display: Remove .clock member from eDP/DP/HDMI pll tables

 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 731 ++++++++++--------
 drivers/gpu/drm/i915/display/intel_cx0_phy.h  |   2 +
 drivers/gpu/drm/i915/display/intel_ddi.c      |   4 +-
 drivers/gpu/drm/i915/display/intel_dpll.c     |   3 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  11 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |   3 -
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  18 +-
 drivers/gpu/drm/i915/display/intel_lt_phy.c   | 242 +++---
 drivers/gpu/drm/i915/display/intel_lt_phy.h   |   5 +-
 .../drm/i915/display/intel_snps_hdmi_pll.c    |   2 -
 10 files changed, 549 insertions(+), 472 deletions(-)

-- 
2.34.1

