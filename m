Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D6BD5EEEA1
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Sep 2022 09:15:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0B9D10E973;
	Thu, 29 Sep 2022 07:15:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2F9310E919
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Sep 2022 07:15:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664435725; x=1695971725;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=FdpaKsLr7HMhDeV1ojrH9mUx/st1ViZSahdK3hRkGME=;
 b=TZUTdYPTK1JtpRQjtKuVoya4uv4U9GoBR17egXgK2Iyt3BpZVqfmzV7T
 TqnT3mVCyCFj5JVCFkGqlnr2SQBwKJAEmVb80/pqGdBR7EjarResiX71r
 Xrqj3Lfd5pwkGfHQL34ZKMrwibIWH0DIfTUvuao23cRGVjNhQCAgUqTcN
 wsg6ALvrkqYO21Th9yie2WSWeJQMPhQ7UdzvpCNsgCfCDZ+l+yfblCNu7
 Fi4mSJL9zYTWS0pNYHrQT6ne2bTCcLxzE3fjpfbBN9CZTv64RTnK/Ls5L
 pbBPDrvYZRpYwJf1W2n/LFNgK7uiPt6uYMpkVXZ2Za6xL/Qu5VVHENM8c Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="303302674"
X-IronPort-AV: E=Sophos;i="5.93,354,1654585200"; d="scan'208";a="303302674"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2022 00:15:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="867274381"
X-IronPort-AV: E=Sophos;i="5.93,354,1654585200"; d="scan'208";a="867274381"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga006.fm.intel.com with SMTP; 29 Sep 2022 00:15:22 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 29 Sep 2022 10:15:21 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 29 Sep 2022 10:15:11 +0300
Message-Id: <20220929071521.26612-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/10] drm/i915: Prep work for finishing
 (de)gamma readout
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

Add another layer of LUT blobs in order to make gamma
state readout/check possible on ilk-skl. As a bonus we
can also simplify the glk degamma vs. csc mess.

The actual state readout/checker stuff that we're
currently missing will follow later.

Ville Syrjälä (10):
  drm/i915: Remove PLL asserts from .load_luts()
  drm/i915: Split up intel_color_init()
  drm/i915: Simplify the intel_color_init_hooks() if ladder
  drm/i915: Clean up intel_color_init_hooks()
  drm/i915: Change glk_load_degamma_lut() calling convention
  drm/i915: Make ilk_load_luts() deal with degamma
  drm/i915: Introduce crtc_state->{pre,post}_csc_lut
  drm/i915: Assert {pre,post}_csc_lut were assigned sensibly
  drm/i915: Get rid of glk_load_degamma_lut_linear()
  drm/i915: Stop loading linear degammma LUT on glk needlessly

 drivers/gpu/drm/i915/display/intel_atomic.c   |   8 +
 drivers/gpu/drm/i915/display/intel_color.c    | 356 ++++++++++--------
 drivers/gpu/drm/i915/display/intel_color.h    |   6 +-
 drivers/gpu/drm/i915/display/intel_crtc.c     |   3 +-
 .../drm/i915/display/intel_crtc_state_dump.c  |  10 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   9 +-
 .../gpu/drm/i915/display/intel_display_core.h |   5 +
 .../drm/i915/display/intel_display_types.h    |   4 +
 .../drm/i915/display/intel_modeset_setup.c    |   6 +
 9 files changed, 251 insertions(+), 156 deletions(-)

-- 
2.35.1

