Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 371517DE071
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Nov 2023 12:42:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BAB110E6CB;
	Wed,  1 Nov 2023 11:42:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE2C010E6CB
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Nov 2023 11:42:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698838935; x=1730374935;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=NAyFI5n9kRRAn/tM0wqEqrpXGjaXK1cISxyd0IG83Po=;
 b=gxvSr6kRDtJkcEkaI2qllLsepG1kSruH9DAa6ZClEVBnOqzq+dGA6rPc
 S5s9HfBgCYP6pT0cRMoJQzBOITs7dhuwAv18GXfkDdx7ZHvHXMEA8D+jd
 wVpPwcE7oNdXhYuhEzM9FtEqXgd0gA52OxJMgx8b7vsg3jV8lM0MSQfLK
 H0HD4iSaizgQ9imQlLHHyzyol3F92SH+ptTxLkmuMNRt6VL+b4Ryn/P5b
 ZMkzBHymNxhyNK0kLBSASBxOSMheOLjW4TmuvtBf6zvtusoHM1TuH0WR/
 bOhpYXktE3KyFSlCg7mocgG6U39/uLZYHYxIt+vUzGlt316sDvn+8/DwM w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10880"; a="392338768"
X-IronPort-AV: E=Sophos;i="6.03,268,1694761200"; d="scan'208";a="392338768"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2023 04:42:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10880"; a="754450228"
X-IronPort-AV: E=Sophos;i="6.03,268,1694761200"; d="scan'208";a="754450228"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 01 Nov 2023 04:42:12 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 01 Nov 2023 13:42:12 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Nov 2023 13:42:07 +0200
Message-ID: <20231101114212.9345-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/5] drm/i915: Some register cleanups
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

Clean up some messy stuff related to determining
some register offsets.

Ville Syrjälä (5):
  drm/i915: Extract hsw_chicken_trans_reg()
  drm/i915: Stop using a 'reg' variable
  drm/i915: Extract mchbar_reg()
  drm/i915/dsi: Remove dead GLK checks
  drm/i915/dsi: Extract port_ctrl_reg()

 drivers/gpu/drm/i915/display/intel_ddi.c     |  9 ++++++
 drivers/gpu/drm/i915/display/intel_ddi.h     |  2 ++
 drivers/gpu/drm/i915/display/intel_display.c | 33 +++++++-------------
 drivers/gpu/drm/i915/display/intel_dp_mst.c  |  8 ++---
 drivers/gpu/drm/i915/display/intel_psr.c     | 11 +++----
 drivers/gpu/drm/i915/display/vlv_dsi.c       | 21 +++++++------
 drivers/gpu/drm/i915/soc/intel_gmch.c        | 27 ++++++++--------
 7 files changed, 55 insertions(+), 56 deletions(-)

-- 
2.41.0

