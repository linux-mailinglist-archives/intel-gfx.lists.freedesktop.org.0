Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD5024CC5B7
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Mar 2022 20:12:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96EBC10EE45;
	Thu,  3 Mar 2022 19:12:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D82B810EE45
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Mar 2022 19:12:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646334730; x=1677870730;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1AUX0w+LE1YhhHYI9VIXR6NZUQqhz83lt8EkXrR3spU=;
 b=B53d0r7rMOxXW0QNioKtfdx36pHPrypbRcHz0vqD47j7h71wj83gipUQ
 rUHSVQMoqyDP8AjO6DDDODR4o9xR7RVa2h1ZWGQED67LTs+MSSW2tXRyC
 cG0Y0N4I5Ehkcm0zEZ13HOEzd6ct7QYD6B0XLRMF4uXj1QU9tFKdW+N5J
 mFsm5QMcIOGVkP0hR2A5N1paVHmBvr/6k8ByX30j38qpkHs/ShKZqNNex
 gs6eaiTjghlKz3jO4xSlL8reV9ZOg3cWDaAdzku/jip94iSBNmAPvXHuP
 LmZ4dozcJglXj8yaTVAkjFcblVdPp+tyboJfShMYB0NUNIcNSNSwUUYUR A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10275"; a="253517333"
X-IronPort-AV: E=Sophos;i="5.90,151,1643702400"; d="scan'208";a="253517333"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2022 11:12:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,151,1643702400"; d="scan'208";a="551889271"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga008.jf.intel.com with SMTP; 03 Mar 2022 11:12:08 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 03 Mar 2022 21:12:07 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Mar 2022 21:11:58 +0200
Message-Id: <20220303191207.27931-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/9] drm/i915: Fix bandwith related cdclk
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

v2: Rebased due to the async flip wm0/ddb stuff

Ville Syrjälä (9):
  drm/i915: Tweak plane ddb allocation tracking
  drm/i915: Split plane data_rate into data_rate+data_rate_y
  drm/i915: Pre-calculate plane relative data rate
  drm/i915: Remove total[] and uv_total[] from ddb allocation
  drm/i915: Nuke intel_bw_calc_min_cdclk()
  drm/i915: Round up when calculating display bandwidth requirements
  drm/i915: Properly write lock bw_state when it changes
  drm/i915: Fix DBUF bandwidth vs. cdclk handling
  drm/i915: Add "maximum pipe read bandwidth" checks

 .../gpu/drm/i915/display/intel_atomic_plane.c | 120 ++++--
 .../gpu/drm/i915/display/intel_atomic_plane.h |   3 +-
 drivers/gpu/drm/i915/display/intel_bw.c       | 254 ++++++++-----
 drivers/gpu/drm/i915/display/intel_bw.h       |  12 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c    |  96 ++---
 drivers/gpu/drm/i915/display/intel_cdclk.h    |   2 +
 drivers/gpu/drm/i915/display/intel_display.c  |  17 +-
 .../drm/i915/display/intel_display_debugfs.c  |   4 +-
 .../drm/i915/display/intel_display_types.h    |  16 +-
 drivers/gpu/drm/i915/intel_pm.c               | 359 ++++++------------
 10 files changed, 431 insertions(+), 452 deletions(-)

-- 
2.34.1

