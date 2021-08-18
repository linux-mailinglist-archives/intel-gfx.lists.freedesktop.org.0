Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A75933F0ACE
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Aug 2021 20:11:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91F656E88E;
	Wed, 18 Aug 2021 18:11:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 497A46E88E
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Aug 2021 18:11:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10080"; a="196652119"
X-IronPort-AV: E=Sophos;i="5.84,332,1620716400"; d="scan'208";a="196652119"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2021 11:10:59 -0700
X-IronPort-AV: E=Sophos;i="5.84,332,1620716400"; d="scan'208";a="531793985"
Received: from jcarwana-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.249.42.192])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2021 11:10:57 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, manasi.d.navare@intel.com,
 ville.syrjala@linux.intel.com
Date: Wed, 18 Aug 2021 21:10:35 +0300
Message-Id: <cover.1629310010.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/17] drm/i915/dp: dp 2.0 enabling prep work
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

Start enabling DP 2.0 features. It's not complete, but it's a good
start, and should not conflict with anything existing.

Jani Nikula (17):
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
  drm/i915/dp: use 128b/132b TPS2 for UHBR+ link rates
  drm/i915/dp: select 128b/132b channel encoding for UHBR rates
  drm/i915/dg2: configure TRANS_DP2_CTL for DP 2.0
  drm/i915/dg2: use 128b/132b transcoder DDI mode
  drm/i915/dg2: configure TRANS_DP2_VFREQ{HIGH,LOW} for 128b/132b
  drm/i915/dg2: update link training for 128b/132b

 drivers/gpu/drm/drm_dp_helper.c               |  42 ++++++-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  61 +++++++---
 drivers/gpu/drm/i915/display/intel_dp.c       | 109 ++++++++++++++----
 drivers/gpu/drm/i915/display/intel_dp.h       |   4 +-
 .../drm/i915/display/intel_dp_link_training.c |  99 +++++++++++-----
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  17 ++-
 drivers/gpu/drm/i915/i915_reg.h               |  25 +++-
 include/drm/drm_dp_helper.h                   |   6 +
 8 files changed, 289 insertions(+), 74 deletions(-)

-- 
2.20.1

