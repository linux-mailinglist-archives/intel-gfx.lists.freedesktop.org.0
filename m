Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DA9D66EE902
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Apr 2023 22:28:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 283AD10E0C5;
	Tue, 25 Apr 2023 20:28:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8473910E0C5
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Apr 2023 20:28:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682454522; x=1713990522;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tesnUp1VIk2MWi1Jvrvoy2szGJWkX2MqwrHCHlYTtgc=;
 b=I47gIcvxQnoT1uvsBERiOKKQzGUzLMGQJOHwKc717in1+Fw4YCITzfFa
 io4CjaAzwtWQ+SRH4xEG5cOheiT1uBVHazn6jgBvX16W3K1WGfMPphvnL
 tgfNuT76fOgs//fj2vZJFaKcHXmoWBCLI9Dj0UFs0TR3qwDyoo94rgH5E
 H2MAbExBM7SSep0rocOty+jK+gFxHq3+WKvSGYcUhckcBcJXwfUKLg8pr
 nJnafHlKushLvNCw+LisBu7iJJgaZ0AC8IGv5CKA1WAD1f4dtWaMLJQqc
 u9o432h4oEK6N1v+ldWyLxcmO8lA1qMqm765zXQK9Sg5aFE0dlpopFEYb g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="345651622"
X-IronPort-AV: E=Sophos;i="5.99,226,1677571200"; d="scan'208";a="345651622"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2023 13:28:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="724141247"
X-IronPort-AV: E=Sophos;i="5.99,226,1677571200"; d="scan'208";a="724141247"
Received: from aazuev-mobl.ccr.corp.intel.com (HELO vgovind2-mobl3.intel.com)
 ([10.252.59.124])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2023 13:28:32 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Apr 2023 23:28:18 +0300
Message-Id: <20230425202826.1144429-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/8] mtl: add support for pmdemand
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
Cc: ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

pmdemand support patches for MTL

SAGV configuration support for MTL

v2: added one missing patch in the previous version

Mika Kahola (1):
  drm/i915/mtl: Add support for PM DEMAND

Vinod Govindapillai (7):
  drm/i915: fix the derating percentage for MTL
  drm/i915: update the QGV point frequency calculations
  drm/i915: store the peak bw per QGV point
  drm/i915: extract intel_bw_check_qgv_points()
  drm/i915: modify max_bw to return index to intel_bw_info
  drm/i915/mtl: find best QGV point and configure sagv
  drm/i915/display: provision to suppress drm_warn in
    intel_get_crtc_new_encoder

 drivers/gpu/drm/i915/Makefile                 |   3 +-
 drivers/gpu/drm/i915/display/intel_bw.c       | 350 ++++++++++-----
 drivers/gpu/drm/i915/display/intel_bw.h       |   6 +
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  |   2 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  17 +-
 drivers/gpu/drm/i915/display/intel_display.h  |   3 +-
 .../gpu/drm/i915/display/intel_display_core.h |   8 +
 .../drm/i915/display/intel_display_driver.c   |   7 +
 .../drm/i915/display/intel_display_power.c    |   8 +
 drivers/gpu/drm/i915/display/intel_dpll.c     |   8 +-
 .../gpu/drm/i915/display/intel_pch_display.c  |   2 +-
 drivers/gpu/drm/i915/display/intel_pmdemand.c | 406 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_pmdemand.h |  25 ++
 drivers/gpu/drm/i915/display/intel_snps_phy.c |   2 +-
 drivers/gpu/drm/i915/i915_irq.c               |  22 +-
 drivers/gpu/drm/i915/i915_reg.h               |  36 +-
 16 files changed, 772 insertions(+), 133 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_pmdemand.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_pmdemand.h

-- 
2.34.1

