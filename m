Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2FB7881526
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Mar 2024 17:04:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 187C510E35F;
	Wed, 20 Mar 2024 16:04:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ws4Mm7xk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E57410E35F
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Mar 2024 16:04:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710950668; x=1742486668;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ZTwChqMSMZKzZXMJaD7GyuTegCOjKFgQxPZDKhgx+XI=;
 b=Ws4Mm7xkbr/08N+wlmJtzg6fTrqDUwtdujG6Iufdd9yFnTMNDbWHN/Wn
 1RBef0u3+R6YTXheLmVpdZgMu4r9BV4s8PhL5wcHR26Un1m3V2Lb8yICS
 Ci512stV/oocEQ0jBYh8DeitJ3l+V0JsFR/eLasN/4TY2GwjKhz0gB2q4
 MsNTT7/nOdN3qbPgCTy4T+rm+ufLMECNmZdTYD4VKe4LI1ct/XLZNB7VH
 MtOK8UaHfWVW9CInBUVLjbk8DYuRbyiXTVLX90XVoWrCTVd5WvvCbdj9A
 2KQZi+/Lybe64R/WkviFjnK9thFwfWiv140OsC7LB6keEEhg5ls1ImXFd Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11019"; a="8834760"
X-IronPort-AV: E=Sophos;i="6.07,140,1708416000"; 
   d="scan'208";a="8834760"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2024 09:04:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11019"; a="827782597"
X-IronPort-AV: E=Sophos;i="6.07,140,1708416000"; d="scan'208";a="827782597"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 20 Mar 2024 09:04:25 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 20 Mar 2024 18:04:24 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/6] drm/i915: Allow the first async flip to change modifier
Date: Wed, 20 Mar 2024 18:04:18 +0200
Message-ID: <20240320160424.700-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
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

Xorg/modesetting expects to be able to change the modifier already
when submitting the first async flip. Let's convert the first async
flip to a sync flip so that we can accommodate it. For now I limit
this behaviour to skl+ since earlier platforms don't support async
flips with anything but X-tile anyway, but we could extend this if
needed to allow eg. stride changes/etc.

We already convert the first async flip to a sync flip on on ADL+
to reprogram the watermarks/DDB, and on BDW-GLK the hardware
anyway converts the first async flip to a sync flip (due to the
double buffering behaviour of the async flip bit). So actually
this will only slow down the first async flip on ICL and TGL.

I've also included a workaround for async flip GGTT/DMAR faults
on ADL. Just bumping the alignment to 16k seems effective, and
so that seems like a reasonable enough solution for the moment.
But this probably needs further analysis later.

Test-with: 20240319202443.27951-1-ville.syrjala@linux.intel.com

Ville Syrjälä (6):
  drm/i915: Align PLANE_SURF to 16k on ADL for async flips
  drm/i915: Reject async flips if we need to change DDB/watermarks
  drm/i915: Allow the initial async flip to change modifier
  drm/i915: Eliminate extra frame from skl-glk sync->async flip change
  drm/i915: s/need_async_flip_disable_wa/need_async_flip_toggle_wa/
  drm/i915: Extract ilk_must_disable_lp_wm()

 drivers/gpu/drm/i915/display/i9xx_plane.c     |   7 +-
 .../gpu/drm/i915/display/intel_atomic_plane.c | 118 ++++++++++++------
 drivers/gpu/drm/i915/display/intel_display.c  |   9 +-
 .../drm/i915/display/intel_display_types.h    |   2 +-
 drivers/gpu/drm/i915/display/intel_dpt.c      |   7 +-
 drivers/gpu/drm/i915/display/intel_dpt.h      |   3 +-
 drivers/gpu/drm/i915/display/intel_fb.c       |  17 ++-
 drivers/gpu/drm/i915/display/intel_fb_pin.c   |  10 +-
 .../drm/i915/display/skl_universal_plane.c    |   8 +-
 drivers/gpu/drm/i915/display/skl_watermark.c  |  12 ++
 10 files changed, 137 insertions(+), 56 deletions(-)

-- 
2.43.2

