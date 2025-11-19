Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84785C709A4
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Nov 2025 19:16:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74EC710E250;
	Wed, 19 Nov 2025 18:16:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R+fTanJw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2750910E0BA;
 Wed, 19 Nov 2025 18:16:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763576172; x=1795112172;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+K38ZsOEVh49oX9DQPFIpH5dPq6e19uva4b1hdBK6tY=;
 b=R+fTanJw45KrbY+dbGAfv/fwbvJ0gUkgbb7dgfmmLsjogdm2lT0kL79D
 ndYEqYVQNqnohAEb2ZBjmaxorqTHemZvkKoov5moH2H3lva/fbXqxzP8W
 sGHhXlDi+DEHPRpoWjYfet4Fr+dBjfksd3XMp0HYw3MKwkxN325qQnBcU
 PYev7zu5hiU+zNQFihEg+OTA2DGKHHF7Iok34AnhTPhwkbkQgnClIlDaz
 JKcU517Gw5o5NEcqY3c7h/E2RP2bKAPzp88UamnagGE9Ad1Kh+3wRxADg
 prGGaNXdWTKsqsj5v773tyBrEUbw6v5el9KJwPXN839gWXjrb7DswcOcG w==;
X-CSE-ConnectionGUID: sF46vFzmTmqBTI/z+Aw4xw==
X-CSE-MsgGUID: lYkzynmCQDSa7XgTdEVLkw==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="76987727"
X-IronPort-AV: E=Sophos;i="6.19,316,1754982000"; d="scan'208";a="76987727"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 10:16:11 -0800
X-CSE-ConnectionGUID: U0OlUKduSQOkKiiP+k94Kg==
X-CSE-MsgGUID: LV+IL5XISOG6FLCGKVeP5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,316,1754982000"; d="scan'208";a="190916501"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO localhost)
 ([10.124.221.119])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 10:16:11 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 0/6] drm/i915: uapi vs. hw state fixes
Date: Wed, 19 Nov 2025 20:16:00 +0200
Message-ID: <20251119181606.17129-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Spotted a few places using the uapi state when they most
likely should have been using the hw state. Fix those up.

Ville Syrjälä (6):
  drm/i915: Use the proper (hw.crtc) for the cursor unpin vblank worker
  drm/i915/psr: Use hw.crtc instead of uapi.crtc
  drm/i915/psr: Use hw.rotation instead of uapi.rotation
  drm/i915: Use hw.active instead of uapi.active in the initial plane
    readout
  drm/i915/panic: Get the crtc from the correct place
  drm/i915/panic: Clean up the variables

 drivers/gpu/drm/i915/display/intel_crtc.c     |  4 +-
 drivers/gpu/drm/i915/display/intel_plane.c    | 58 +++++++++----------
 .../drm/i915/display/intel_plane_initial.c    |  6 +-
 drivers/gpu/drm/i915/display/intel_psr.c      | 12 ++--
 drivers/gpu/drm/i915/display/intel_psr.h      |  3 +-
 drivers/gpu/drm/xe/display/xe_plane_initial.c |  6 +-
 6 files changed, 45 insertions(+), 44 deletions(-)

-- 
2.49.1

