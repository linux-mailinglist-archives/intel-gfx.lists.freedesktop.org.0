Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DF769A0B60
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2024 15:24:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EC2710E703;
	Wed, 16 Oct 2024 13:24:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DauCcOXZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E159010E6F0
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2024 13:23:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729085039; x=1760621039;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Or+/gRP2Lisv99dkgIMmeQ354WpBpUEO7rR5cDnV8MM=;
 b=DauCcOXZBFkNVn4/rHMqX+IKPpoiqBYOjBbrNM3F8XEJtM1qEcl3vk/B
 j6OjFLC7WKOFiiZR3EqgtnaQ8e6D9MzkCVMSVVHI0bewf8QfilGbBqk8C
 TefL1traS0Zb31R9Is6aVKiNEGEHBRGqIXFQh+GAMPmqV/s5gbEiaY4lw
 xw5dWZ1JW3JDfnfGkyafPPT+ufphIHdz3orFeIiCaW/WIbEx05g8UWezu
 wYV83beYSFg2uMPzjwKxNGR/tFq38w30Uirxpk2lJQX8/Gj1U7BtGENFg
 k/i69BkKo3FdZyB5bzPQv94yXElBognTKMAf3Et7watjEVoMcZuomMrpw A==;
X-CSE-ConnectionGUID: 6odMGkggTGm5p87YEEJXpA==
X-CSE-MsgGUID: tBRcclvIT5qc4X1Bl3nEFw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="46005957"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="46005957"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2024 06:23:37 -0700
X-CSE-ConnectionGUID: QTIerLL5R96xFBaLLpOIEA==
X-CSE-MsgGUID: /5OPel0sTzWV0ozOe4XSCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,208,1725346800"; d="scan'208";a="78384450"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2024 06:23:36 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v3 0/8] drm/i915: Write source OUI for non-eDP sinks
Date: Wed, 16 Oct 2024 16:23:57 +0300
Message-ID: <20241016132405.2231744-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
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

This is v3 of [1] handling a few cases where the source OUI value
written to an eDP sink could be not yet valid or could have gotten
reset after the panel power was disabled (in patches 1, 2, 4, 6, 7).

[1] https://lore.kernel.org/all/20241001123259.616486-1-imre.deak@intel.com

Imre Deak (8):
  drm/i915/dp: Flush modeset commits during connector detection
  drm/i915/dp: Ensure panel power remains enabled during connector
    detection
  drm/i915/dp: Initialize the source OUI write timestamp always
  drm/i915/dp: Track source OUI validity explicitly
  drm/i915/dp: Reuse intel_dp_detect_dsc_caps() for eDP
  drm/i915/dp: Write the source OUI for eDP before detecting sink
    capabilities
  drm/i915/dp: Write the source OUI during connector detection
  drm/i915/dp: Write the source OUI for non-eDP sinks as well

 drivers/gpu/drm/i915/display/g4x_dp.c         |   1 +
 drivers/gpu/drm/i915/display/intel_ddi.c      |   1 +
 .../drm/i915/display/intel_display_types.h    |   1 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 131 ++++++++++++------
 drivers/gpu/drm/i915/display/intel_dp.h       |   2 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |   2 +
 drivers/gpu/drm/i915/display/intel_pps.c      |  17 ++-
 drivers/gpu/drm/i915/display/intel_pps.h      |   1 +
 8 files changed, 113 insertions(+), 43 deletions(-)

-- 
2.44.2

