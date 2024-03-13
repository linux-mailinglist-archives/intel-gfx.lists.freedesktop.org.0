Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F6B587A55B
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Mar 2024 11:00:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E2DA10F58B;
	Wed, 13 Mar 2024 10:00:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JX/qrdIi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 710F710F210
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Mar 2024 10:00:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710324005; x=1741860005;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=sXDGmYaKd1XPp2ujo9jKHOi1kFPzQ498LfeCiLvJeEI=;
 b=JX/qrdIi6Hm61XOPIL9yHQm+H33TNo6n5DeTL2wIz2xQOaCsP8kdPTlP
 Zmvx8av2FOgpiLB+zeGfqUUjNyUhI6/IDFoJFxxAu1zvGACuSlKxaUF1a
 3fBo2PRcvhKf78u1WwkMVHefQQg9sLaU81/M7R5IdeNZA/kMkhKAnyqHX
 seoIJBl07vmKur6KGDzQP1SU1XZ8eOJcWD4mdCtmvWi/eyb3Y2PzRmu29
 r8AkIbGfpSu0rkS14N1VTePlRDVTeOYJ1yJEEAxl3dICfmIATRbuNk2BW
 l87RDcoDfZpd/dG+74zraXQqUrk+a3QhTRGsqCbyUsZS0YLfYCQfqnmCk w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11011"; a="8885957"
X-IronPort-AV: E=Sophos;i="6.07,122,1708416000"; 
   d="scan'208";a="8885957"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2024 02:59:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,122,1708416000"; d="scan'208";a="11931448"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by fmviesa006.fm.intel.com with ESMTP; 13 Mar 2024 02:59:50 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Stanislav.Lisovskiy@intel.com, jani.saarinen@intel.com,
 ville.syrjala@linux.intel.com, vidya.srinivas@intel.com
Subject: [PATCH 0/6] Bigjoiner refactoring
Date: Wed, 13 Mar 2024 11:59:43 +0200
Message-Id: <20240313095949.6898-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
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

There are few things we need to do for bigjoiner, in order
to improve code maintenance and also make testing for Bigjoiner
easier.
Those series contain addition of bigjoiner force debugfs option,
in order to be able to force bigjoiner even if there is no display
support, also we refactor pipe vs transcoder logic, as currently
it is a bit scattered between *_commit_modeset_enables/disables
and *_crtc_enable/disable functions. Same applies to encoders.
We made a decision to handle all the slaves in correspondent master
hook, so slaves and slave checks no longer would be in modesetting
level logic.

Stanislav Lisovskiy (5):
  drm/i915: Add a small helper to compute the set of pipes for crtc
  drm/i915: Extract intel_ddi_post_disable_hdmi_or_sst()
  drm/i915: Utilize intel_crtc_joined_pipe_mask() more
  drm/i915: Handle joined pipes inside hsw_crtc_disable()
  drm/i915: Handle joined pipes inside hsw_crtc_enable()

Vidya Srinivas (1):
  drm/i915: Allow bigjoiner for MST

 drivers/gpu/drm/i915/display/intel_ddi.c     |  96 +++++---
 drivers/gpu/drm/i915/display/intel_display.c | 231 ++++++++++---------
 drivers/gpu/drm/i915/display/intel_display.h |   8 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c  |  57 +++--
 4 files changed, 238 insertions(+), 154 deletions(-)

-- 
2.37.3

