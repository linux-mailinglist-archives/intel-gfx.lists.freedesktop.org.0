Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28788492297
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jan 2022 10:24:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0539710EC1D;
	Tue, 18 Jan 2022 09:23:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F80510EC1D
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jan 2022 09:23:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642497837; x=1674033837;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1dvIb6x5qRU3yxldA9amIdlR9fwlhvkPVvBKaNbESVg=;
 b=Cfb3Xs4iURipx2JMlkZCwiN4sxqZX/dwg9F4DAQdw28nEcGOpoQQgcFX
 IAaL92r3tOKC0ABYLAa+kJb2EqSYmtSTt6jZdsqLe4UvbdNUj5ol6kE5G
 x0X8S9ihHMJXMkxGLWdEukoCyICht/52863ypAd37kBkA/p+TW0qQROUN
 ynkssuKMDCmmbC+1kAdkEaVzGIH9thQq099qzkhPo8vK8doFmKQ44TezO
 i7YoXxJAKHaKwRQ2OFjCbwyKii+BsEFn38LH1+t6zqhsexy8I3FKIXMn6
 Fr/+UcH/zAU4F08BUvDwjVYl/np8rcPU7Yh1UYFmkNFdH22EC4bSsm/6l Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10230"; a="242334019"
X-IronPort-AV: E=Sophos;i="5.88,297,1635231600"; d="scan'208";a="242334019"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2022 01:23:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,297,1635231600"; d="scan'208";a="476910650"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by orsmga006.jf.intel.com with SMTP; 18 Jan 2022 01:23:54 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 18 Jan 2022 11:23:54 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Jan 2022 11:23:39 +0200
Message-Id: <20220118092354.11631-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/15] drm/i915: Fix bandwith related cdclk
 calculations
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

Fix up the dbuf bandwidth cdclk calculations to match the spec,
and also implement the cdclk based pipe max bandwidth limit.

TODO: intel_bw contains two orthogonal things (qgv vs. cdclk).
      We should probably just split it into two parts to life
      less confusing. But as usual naming is hard so I didn't
      go for that yet...

Ville Syrjälä (15):
  drm/i915: Drop pointless dev_priv argument
  drm/i915: Extract skl_ddb_entry_init()
  drm/i915: Fix plane relative_data_rate calculation
  drm/i915: Introduce skl_plane_ddb_iter
  drm/i915: Extract skl_allocate_plane_ddb()
  drm/i915: Extract skl_crtc_calc_dbuf_bw()
  drm/i915: Tweak plane ddb allocation tracking
  drm/i915: Split plane data_rate into data_rate+data_rate_y
  drm/i915: Pre-calculate plane relative data rate
  drm/i915: Remove total[] and uv_total[] from ddb allocation
  drm/i915: Nuke intel_bw_calc_min_cdclk()
  drm/i915: Round up when calculating display bandwidth requirements
  drm/i915: Properly write lock bw_state when it changes
  drm/i915: Fix DBUF bandwidth vs. cdclk handling
  drm/i915: Add "maximum pipe read bandwidth" checks

 .../gpu/drm/i915/display/intel_atomic_plane.c |  93 ++--
 .../gpu/drm/i915/display/intel_atomic_plane.h |   3 +-
 drivers/gpu/drm/i915/display/intel_bw.c       | 272 ++++++----
 drivers/gpu/drm/i915/display/intel_bw.h       |  12 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c    |  96 ++--
 drivers/gpu/drm/i915/display/intel_cdclk.h    |   2 +
 drivers/gpu/drm/i915/display/intel_display.c  |  17 +-
 .../drm/i915/display/intel_display_debugfs.c  |   4 +-
 .../drm/i915/display/intel_display_types.h    |  16 +-
 drivers/gpu/drm/i915/intel_pm.c               | 471 ++++++------------
 10 files changed, 453 insertions(+), 533 deletions(-)

-- 
2.32.0

