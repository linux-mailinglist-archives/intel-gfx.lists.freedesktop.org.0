Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 446C8728975
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jun 2023 22:31:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E98D510E087;
	Thu,  8 Jun 2023 20:31:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0B7510E087
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jun 2023 20:31:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686256262; x=1717792262;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=cqSOT3Bw8xasfdzjIY5q3TCNwdb2Wh7ybK9Ei1zCf/w=;
 b=g9BlrZlFRbZT9rTM3lHI2J5GOgek41GdIeRwyuVvzGJDJjSqtlo9M0vP
 zn6ZmTKZnk0Pg+MAqxUwUIFIdew9AijNto4c5jWCkcePe9QuUpvNgdWuU
 0FSpaXTcBegALRfYhWoKGzSXfB0BUDcwFbyLwzJILzaYBRbio3JU2FgnT
 lSmWv35WFcx5JEbypHwGih8UvB2HAFUv4h2LQGdtbyl35fW93YdYO66NG
 uGnddzytZ94Zgx75yeYaRXWIXjOhv2CRXKtsBMZ5qZbrTA7EMJc0VVzzL
 pctbWgsvE88vjwwCZBGmxDGUf0jpiUd8KMH8D2SS7+RO3XcCu1jCAFvTQ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="421012610"
X-IronPort-AV: E=Sophos;i="6.00,227,1681196400"; d="scan'208";a="421012610"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 13:31:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="710100591"
X-IronPort-AV: E=Sophos;i="6.00,227,1681196400"; d="scan'208";a="710100591"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga002.jf.intel.com with SMTP; 08 Jun 2023 13:30:58 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 08 Jun 2023 23:30:57 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Jun 2023 23:30:44 +0300
Message-Id: <20230608203057.23759-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 00/13] drm/i915/dsi: ICL+ DSI modeset
 sequence fixes
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

Rebase of the ICL+ DSI modeset sequence stuff.

Ville Syrjälä (13):
  drm/i915/dsi: Do panel power on + reset deassert earlier on icl+
  drm/i915/dsi: Do display on sequence later on icl+
  drm/i915/dsi: Print the VBT MIPI sequence delay duration
  drm/i915/dsi: Split icl+ D-PHY vs. DSI timing steps
  drm/i915/dsi: Gate DSI clocks earlier
  drm/i915/dsi: Respect power cycle delay on icl+
  drm/i915/dsi: Implement encoder->shutdown() for icl+
  drm/i915/dsi: Move most things from .disable() into .post_disable() on
    icl+
  drm/i915/dsi: Do DSC/scaler disable earlier on icl+
  drm/i915/dsi: Respect power_off_delay on icl+
  drm/i915/dsi: Move panel reset+power off to be the last thing
  drm/i915/dsi: Grab the crtc from the customary place
  drm/i915/dsi: Remove weird has_pch_encoder asserts

 drivers/gpu/drm/i915/display/icl_dsi.c       | 127 +++++++++++--------
 drivers/gpu/drm/i915/display/intel_dsi.c     |  20 +++
 drivers/gpu/drm/i915/display/intel_dsi.h     |   2 +
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c |   2 +-
 drivers/gpu/drm/i915/display/vlv_dsi.c       |  23 ----
 5 files changed, 100 insertions(+), 74 deletions(-)

-- 
2.39.3

