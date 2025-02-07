Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03312A2D0CB
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2025 23:41:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0922910E2DA;
	Fri,  7 Feb 2025 22:41:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Dxi2d+Ws";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CDB110EBB5;
 Fri,  7 Feb 2025 22:32:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738967522; x=1770503522;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=VAOps/6wsQysi7VB9A+HE9nbNaA/QM+MSCiK8TVJuEE=;
 b=Dxi2d+WsD82VtmLnLm/GyVkyTcMVJahT9FHWsNMC26CwIwaoBoZKyh/I
 M+RLw/D02QEEOpvKDSBFlog2RtkikeLDIEG+bBNCm4ajY0NAQ2ABaVu8i
 m8bPZyxL3CnKQsfzowMN3RwieH0dGLC2NSDxPDcYPv5WWNmjp3F/TcP0x
 GaRZ3myi0KKF+YZLCbDmI1XuBAZn85tEV1StfoOVrL0dXq76hlqSqxkC+
 PdpLdmAbFr+TgfzHWmeqrR2mIm79eRfeoQ6kvlWY9Om55dhlOWDuP3uFA
 sSn4DNQpYZrF0Xa19Xw755FbxUEK9fuKwGcWny1zlynk0vh+zatg4+SWG Q==;
X-CSE-ConnectionGUID: yo4kt/m1SR+EbCcmrnfX2Q==
X-CSE-MsgGUID: g4aieoXdQGG1he45YjI6Pw==
X-IronPort-AV: E=McAfee;i="6700,10204,11338"; a="39313387"
X-IronPort-AV: E=Sophos;i="6.13,268,1732608000"; d="scan'208";a="39313387"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 14:32:02 -0800
X-CSE-ConnectionGUID: RzLDLpC5Q+y1oVEMgUWRmw==
X-CSE-MsgGUID: CtGVKooRRjqbnb7G8YCTIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,268,1732608000"; d="scan'208";a="111857399"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 07 Feb 2025 14:32:00 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 08 Feb 2025 00:31:59 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v2 0/8] drm/i915/vrr: Fix DSB+VRR usage for PTL+
Date: Sat,  8 Feb 2025 00:31:51 +0200
Message-ID: <20250207223159.14132-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
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

Apparently PTL (or I suppose it could have already happened
in either MTL or LNL, didn't have either one to check) changes
the way the VRR hardwre works by ending the safe window as
soon as the push send is triggered. Reorder our DSB programming
sequence to account for that, and try to make sure we catch any
vblank evasion fails that could cause problems with the new
order.

v2: Fix up the issues with wiating for the vblank delay
    so we can make do with a single check of the push bit.
    Also do the check for the mmio path.
    Avoid legacy cursor updates making a mess of things.
    Decode the DSB errors.

Ville Syrjälä (8):
  drm/i915/dsb: Move the +1 usec adjustment into dsb_wait_usec()
  drm/i915/vrr: Don't send push for legacy cursor updates
  drm/i915/vrr: Account for TRANS_PUSH delay
  drm/i915/dsb: Compute use_dsb earlier
  drm/i915/dsb: Introduce intel_dsb_poll()
  drm/i915/vrr: Reorder the DSB "wait for safe window" vs. TRANS_PUSH
  drm/i915/vrr: Check that the push send bit is clear after delayed
    vblank
  drm/i915/dsb: Decode DSB error interrupts

 drivers/gpu/drm/i915/display/intel_color.c   |  9 +++-
 drivers/gpu/drm/i915/display/intel_crtc.c    |  3 +-
 drivers/gpu/drm/i915/display/intel_display.c | 31 +++++++------
 drivers/gpu/drm/i915/display/intel_dsb.c     | 47 +++++++++++++++++---
 drivers/gpu/drm/i915/display/intel_dsb.h     |  3 ++
 drivers/gpu/drm/i915/display/intel_vrr.c     | 31 +++++++++++++
 drivers/gpu/drm/i915/display/intel_vrr.h     |  2 +
 7 files changed, 101 insertions(+), 25 deletions(-)

-- 
2.45.3

