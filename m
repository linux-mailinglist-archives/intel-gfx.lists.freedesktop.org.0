Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A9C766EE0A6
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Apr 2023 12:54:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5B7910E28E;
	Tue, 25 Apr 2023 10:54:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8540110E28E
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Apr 2023 10:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682420093; x=1713956093;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=S75AjbViKvL0ybRxVEmeiJaCxSt4tQByNh/DRsPFkHQ=;
 b=gpQ1bVFl630VoygYl3PEWoh8fYrHHvxZCyijDNbIfnMXZ8oifywxzWzB
 CJ/RkVkISqAahVGLLh6Em+mVIipgWdbQ58vX+YLNBTrnzg7xM8kf4UX1u
 fK6vd1/yDInN38bOS9rI9DysJTG97dppF+9e+FGAAA1XU4zknx0Dqvlrc
 sIWcspy2Ncy0lBL7/EFSyWdElUpgZ2QyIyKHzweaxzrLdRqarzYBKZPWH
 zeUG1ubAVpINHP7O7YnhhTGfHNyWxc3yfvVPUaUK9oJZnxYPbqRl7J+/v
 nqVlaiR2QzCHUDGlMnF/qGoqDwR+KHNSeLZYbDiLCoKOvTljjUKtyRkkr g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="412019593"
X-IronPort-AV: E=Sophos;i="5.99,225,1677571200"; d="scan'208";a="412019593"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2023 03:54:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="687367330"
X-IronPort-AV: E=Sophos;i="5.99,225,1677571200"; d="scan'208";a="687367330"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga007.jf.intel.com with SMTP; 25 Apr 2023 03:54:51 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 25 Apr 2023 13:54:50 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Apr 2023 13:54:36 +0300
Message-Id: <20230425105450.18441-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/14] drm/i915/dsi: ICL+ DSI modeset sequence
 fixes
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

A bunch of changes to the ICL+ DSI modeset sequences.
The hope is that these might help with
https://gitlab.freedesktop.org/drm/intel/-/issues/7717

Ville Syrjälä (14):
  drm/i915/icl: Do panel power on + reset deassert earlier on icl+
  drm/i915/dsi: Do display on sequence later on icl+
  drm/i915/dsi: Always do panel power up delay on icl+
  drm/i915/dsi: Print the VBT MIPI sequence delay duration
  drm/i915/dsi: Split icl+ D-PHY vs. DSI timing steps
  drm/i915/dsi: Gate DSI clocks earlier
  drm/i915/dsi: Respect power cycle delay on icl+
  drm/i915/dsi: Implement encoder->shutdown() for icl+
  drm/i915/dsi: Move most things from .enable() into .post_disable()
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
2.39.2

