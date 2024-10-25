Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15FAD9B090C
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 18:02:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B189610EB08;
	Fri, 25 Oct 2024 16:02:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SMD7gKZg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11D8F10EB08
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Oct 2024 16:02:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729872148; x=1761408148;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=6l6QfhDJlg4Rw4ULQe/oNtg6b2sbjLlNjQpDn4V0wvw=;
 b=SMD7gKZgmJulcJGLgwrQi4DliV770NC1B6WCSJvjxfMZ76T3TMIlOM5U
 cu2pFL8nLLHyKXhhkL7mdCxImZcYR1VeDrU4CfvO4O7MyVU61ynVbt0x1
 AXRsaiY90XRFIVNQWMQOtVS6e162KiberVEl8XFVr7JBPyaAxSzEIQ2Xs
 DVUHzab/f61VAwuaHCtVIGOT0O0MSB3RbilX+j5XqqFSQlKCZO+KGoCtd
 lPwnEtuRDFVjaBrviLKdV2Lzi7jNiNzUKpqRPJhEQBFLnU8fg0HYg+0Ev
 Di4KxiXGQHSVnmbwQSSIHy2js1Newe4cJQ7kkO7RUupWVeA7ue/gKdZ+r g==;
X-CSE-ConnectionGUID: esCbPWUUTtCcaFpIsBMrFw==
X-CSE-MsgGUID: V0GMXtc+TnC60jDNjuOA5Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="33242375"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="33242375"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 09:02:28 -0700
X-CSE-ConnectionGUID: FnMv6EvmQlqkuD4a2fl/cg==
X-CSE-MsgGUID: TcVdGF6tSkOWCVD3jFES7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,232,1725346800"; d="scan'208";a="81783688"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 09:02:27 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH v5 0/8] drm/i915: Write source OUI for non-eDP sinks
Date: Fri, 25 Oct 2024 19:02:51 +0300
Message-ID: <20241025160259.3088727-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

This is v5 of [1], with Ville's and Jani's review comments addressed
(patch 1, 2) and Reviewed-bys added (patch 1-7).

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>

[1] https://lore.kernel.org/all/20241016132405.2231744-1-imre.deak@intel.com

Imre Deak (8):
  drm/i915/dp: Flush modeset commits during connector detection
  drm/i915/dp: Ensure panel power remains enabled during connector
    detection
  drm/i915/dp: Initialize the source OUI write timestamp always
  drm/i915/dp: Track source OUI validity explicitly
  drm/i915/dp: Reuse intel_dp_detect_dsc_caps() for eDP
  drm/i915/dp: Write the source OUI for eDP before detecting sink
    capabilities
  drm/i915/dp: Write the source OUI during connector detection
  drm/i915/dp: Write the source OUI for non-eDP sinks as well

 drivers/gpu/drm/i915/display/g4x_dp.c         |   1 +
 drivers/gpu/drm/i915/display/intel_ddi.c      |   1 +
 .../drm/i915/display/intel_display_types.h    |   1 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 129 ++++++++++++------
 drivers/gpu/drm/i915/display/intel_dp.h       |   2 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |   2 +
 drivers/gpu/drm/i915/display/intel_pps.c      |  20 ++-
 drivers/gpu/drm/i915/display/intel_pps.h      |   1 +
 8 files changed, 111 insertions(+), 46 deletions(-)

-- 
2.44.2

