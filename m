Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 804D13F4E2B
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Aug 2021 18:18:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF4AE89B68;
	Mon, 23 Aug 2021 16:18:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 704E489B68
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Aug 2021 16:18:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10085"; a="239273304"
X-IronPort-AV: E=Sophos;i="5.84,344,1620716400"; d="scan'208";a="239273304"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2021 09:18:26 -0700
X-IronPort-AV: E=Sophos;i="5.84,344,1620716400"; d="scan'208";a="535424697"
Received: from todonova-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.249.44.47])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2021 09:18:24 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 manasi.d.navare@intel.com
Date: Mon, 23 Aug 2021 19:18:01 +0300
Message-Id: <cover.1629735412.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 00/19] drm/i915/dp: dp 2.0 enabling prep work
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

Some review comments addressed, some helpers added for DP 2.0 and UHBR
checks.

BR,
Jani.

Jani Nikula (19):
  drm/dp: add DP 2.0 UHBR link rate and bw code conversions
  drm/dp: use more of the extended receiver cap
  drm/dp: add LTTPR DP 2.0 DPCD addresses
  drm/dp: add helper for extracting adjust 128b/132b TX FFE preset
  drm/i915/dp: use actual link rate values in struct link_config_limits
  drm/i915/dp: read sink UHBR rates
  drm/i915/dg2: add TRANS_DP2_CTL register definition
  drm/i915/dg2: add DG2+ TRANS_DDI_FUNC_CTL DP 2.0 128b/132b mode
  drm/i915/dg2: add TRANS_DP2_VFREQHIGH and TRANS_DP2_VFREQLOW
  drm/i915/dg2: add DG2 UHBR source rates
  drm/i915/dp: add max data rate calculation for UHBR rates
  drm/i915/dp: add helper for checking for UHBR link rate
  drm/i915/dp: use 128b/132b TPS2 for UHBR+ link rates
  drm/i915/dp: select 128b/132b channel encoding for UHBR rates
  drm/i915/dg2: configure TRANS_DP2_CTL for DP 2.0
  drm/i915/dp: add HAS_DP20 macro
  drm/i915/dg2: use 128b/132b transcoder DDI mode
  drm/i915/dg2: configure TRANS_DP2_VFREQ{HIGH,LOW} for 128b/132b
  drm/i915/dg2: update link training for 128b/132b

 drivers/gpu/drm/drm_dp_helper.c               |  42 ++++++-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  61 ++++++---
 drivers/gpu/drm/i915/display/intel_dp.c       | 118 +++++++++++++++---
 drivers/gpu/drm/i915/display/intel_dp.h       |   5 +-
 .../drm/i915/display/intel_dp_link_training.c |  99 ++++++++++-----
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  17 ++-
 drivers/gpu/drm/i915/i915_drv.h               |   1 +
 drivers/gpu/drm/i915/i915_reg.h               |  25 +++-
 include/drm/drm_dp_helper.h                   |   6 +
 9 files changed, 300 insertions(+), 74 deletions(-)

-- 
2.20.1

