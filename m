Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A3C18748EC0
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jul 2023 22:21:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D70DA10E3BF;
	Wed,  5 Jul 2023 20:21:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A70D110E3BF
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jul 2023 20:21:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688588486; x=1720124486;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tVtneILFreTJWUYhECD0Q/sbQi1FueBhm9OSAwpyUIE=;
 b=eoP+aPCzH/BrlIYUbAynCkQV+YGW7Gf89sKQdDHOo1kYGXa2GMvaioFU
 sougvpXnyu4FZx3rrRX7mRsI79WWn5Wuq7ghj97j95mWbVsSIIN+g6Kis
 RVTkn40g6JNAkLu2V+bzrUxz/rclpI5dahBCg7N3Uf4xTPjMBbHRNpGxq
 Kh5ygIOenYNJRZtazM9SBFFnM0DTgD+hn6t2Q/+Lp3wbqFGGGwW1NA9RF
 j48jANUy7Xgd0TESlYtZi/VZG/idYBJaBYlghhpjwrvXjC6xkrBoRVgXV
 blNM2zQQnEBfbRgD84EHRqYcBms+YBNg6fuPjRC/XxtDdbo5szp6sBd9l A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="353268989"
X-IronPort-AV: E=Sophos;i="6.01,184,1684825200"; d="scan'208";a="353268989"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2023 13:21:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="754491058"
X-IronPort-AV: E=Sophos;i="6.01,184,1684825200"; d="scan'208";a="754491058"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga001.jf.intel.com with SMTP; 05 Jul 2023 13:21:23 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 05 Jul 2023 23:21:22 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Jul 2023 23:21:09 +0300
Message-Id: <20230705202122.17915-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/13] drm/i915/sdvo: DDC rework and fixes
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

I have plans to switch the whole driver over to using
drm_connector_init_with_ddc(), and thus populate the
sysfs "ddc" consistently. The biggest hurdle is the 
SDVO DDC handling, so start by cleaning that up.

I also found some other issues with the SDVO code so
some additional fixes are also included.

Ville Syrjälä (13):
  drm/i915/sdvo: Issue SetTargetOutput prior ot GetAttachedDisplays
  drm/i915/sdvo: Protect macro args
  drm/i915/sdvo: s/sdvo_inputs_mask/sdvo_num_inputs/
  drm/i915: Don't warn about zero N/P in *_calc_dpll_params()
  drm/i915: Fully populate crtc_state->dpll
  drm/i915/sdvo: Pick the TV dotclock from adjusted_mode
  drm/i915/sdvo: Fail gracefully if the TV dotclock is out of range
  drm/i915/sdvo: Nuke attached_output tracking
  drm/i915/sdvo: Initialize the encoder ealier
  drm/i915/sdvo: Nuke the duplicate sdvo->port
  drm/i915/sdvo: Get rid of the per-connector i2c symlink
  drm/i915/sdvo: Rework DDC bus handling
  drm/i915/sdvo: Print out the i2c pin and slave address

 drivers/gpu/drm/i915/display/intel_dpll.c     |  54 ++-
 drivers/gpu/drm/i915/display/intel_sdvo.c     | 357 +++++++++---------
 .../gpu/drm/i915/display/intel_sdvo_regs.h    |   2 +-
 3 files changed, 219 insertions(+), 194 deletions(-)

-- 
2.39.3

