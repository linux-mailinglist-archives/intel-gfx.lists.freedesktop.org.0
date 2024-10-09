Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF63D9974CF
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 20:22:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91E5110E7AC;
	Wed,  9 Oct 2024 18:22:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bjrfAEO7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACD4A10E7AC
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Oct 2024 18:22:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728498131; x=1760034131;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=46K3yOx5rmPIAjzlKO4aNDhapaHB0Du7b2blYFWQGtU=;
 b=bjrfAEO7uY4fP1tKCqpyHnRE2tBhczwpc57kcqm/o+tDFqh6w24c43/l
 LcHxD+eWxu9EKQN7wg3AyoFLOpyzaOZOvH62K8URq8BtAjQxUH3fO76co
 7IAr6AB0TUxS2b10Llh9JvZDbn2UIcHO29GiGLNQZsDt+YbXzFO6DjBrg
 6tLjhgZcslT+YRiz5Ee5DOAdogHoAeNMaVttTa9XKhfOYtSmZKJKK5G2H
 bsNgEkn2c7WS7DpdinqLXeTVy1Smkt1sADnoA56qhgtcteeybL/gSLwWF
 ruyXRcYdFZq7yGQ06vaEMPoxwuvYnOKx5/yy3KpLOa9M9J+1hdu6BnwOG A==;
X-CSE-ConnectionGUID: pXl5P120SoiZsqHdapY4cg==
X-CSE-MsgGUID: 9gCibxSHSlurPd7eHBw4Kg==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="15438992"
X-IronPort-AV: E=Sophos;i="6.11,190,1725346800"; d="scan'208";a="15438992"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 11:22:10 -0700
X-CSE-ConnectionGUID: 94xrbkOEQRmOhX5RyFVkmQ==
X-CSE-MsgGUID: xGdENT13RwGOt8PBgn0VRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,190,1725346800"; d="scan'208";a="76430326"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 09 Oct 2024 11:22:09 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 09 Oct 2024 21:22:07 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/9] drm/i915: Async flip + compression,
 and some plane cleanups
Date: Wed,  9 Oct 2024 21:21:58 +0300
Message-ID: <20241009182207.22900-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Enable async flips with compressed buffers on icl+, disable
the VT-d scanout workarounds for TGL+, and follow up with
some cleanups to make the code less messy.

Ville Syrjälä (9):
  drm/i915: Allow async flips with render compression on TGL+
  drm/i915: Allow async flips with compression on ICL
  drm/i915: Introduce plane->can_async_flip()
  drm/i915: Use plane->can_async_flip() for alignment exceptions
  drm/i915: Reuse vlv_primary_min_alignment() for sprites as well
  drm/i915: Disable scanout VT-d workaround for TGL+
  drm/i915: Nuke ADL pre-production Wa_22011186057
  drm/i915: Relocate xe AUX hack
  drm/i915: Carve up skl_get_plane_caps()

 drivers/gpu/drm/i915/display/i9xx_plane.c     |  64 +++---
 drivers/gpu/drm/i915/display/i9xx_plane.h     |   4 +
 .../gpu/drm/i915/display/intel_atomic_plane.c |   5 +
 .../gpu/drm/i915/display/intel_atomic_plane.h |   1 +
 drivers/gpu/drm/i915/display/intel_display.c  |  44 +---
 .../drm/i915/display/intel_display_types.h    |   1 +
 drivers/gpu/drm/i915/display/intel_sprite.c   |  17 +-
 .../drm/i915/display/skl_universal_plane.c    | 212 +++++++++++++-----
 .../drm/i915/display/skl_universal_plane.h    |   3 +
 9 files changed, 225 insertions(+), 126 deletions(-)

-- 
2.45.2

