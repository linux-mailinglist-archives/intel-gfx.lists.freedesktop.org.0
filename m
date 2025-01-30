Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9828CA233FC
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2025 19:45:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D44810E038;
	Thu, 30 Jan 2025 18:45:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bFQRQzO7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89EB710E038;
 Thu, 30 Jan 2025 18:45:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738262721; x=1769798721;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=uppP1ES5lfNAddSqpaAGpJBDXw7nTKR2moWuKD8WGa0=;
 b=bFQRQzO7QqIrVMcnQ6zHt3WuW96de4JzKACe0D/kGwSA+NUTm3cTLOr/
 Al2F9oO7KrSPVbx9bEaEsb5Du+/08axjmBI0Pd2uJYGJ2Gh4n96SfnGSO
 tCsc7Oj4YaPSe/XcbomCpVXp9IXXHASfPJthJLY5NwGq53PEEzRsz+fF2
 n85m3ktktpzmYiTexBV25EfNwqT00308bv4l0aN+/MSZC03bd7pBM8moP
 X25uuR677GItsIu/RMqkxGonhUlgm1YjmotnCJ7EZTDSnDX+FOCWDKZ4J
 qojqRd3B5MB/4fGDeKPTntiYlJaYffJ1MiIURHdG4RtkVDPaJBZZiD1rb g==;
X-CSE-ConnectionGUID: VTb5kjyTSBaJu6aXei67lg==
X-CSE-MsgGUID: XfctDjwlRA+PA4QWDl62IA==
X-IronPort-AV: E=McAfee;i="6700,10204,11331"; a="38068225"
X-IronPort-AV: E=Sophos;i="6.13,246,1732608000"; d="scan'208";a="38068225"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 10:45:21 -0800
X-CSE-ConnectionGUID: RqIlJrdHSHa5iIp2XIoG8w==
X-CSE-MsgGUID: 6j6h3y12SbCcossTf2N6pw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,246,1732608000"; d="scan'208";a="109561240"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 30 Jan 2025 10:45:19 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 30 Jan 2025 20:45:18 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 0/3] drm/i915/vrr: Fix DSB+VRR usage for PTL+
Date: Thu, 30 Jan 2025 20:45:15 +0200
Message-ID: <20250130184518.22353-1-ville.syrjala@linux.intel.com>
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

Ville Syrjälä (3):
  drm/i915/dsb: Introduce intel_dsb_poll()
  drm/i915/vrr: Reorder the DSB "wait for safe window" vs. TRANS_PUSH
  drm/i915/vrr: Poll for the push send bit to clear on the DSB

 drivers/gpu/drm/i915/display/intel_color.c   |  3 ++
 drivers/gpu/drm/i915/display/intel_display.c | 13 ++------
 drivers/gpu/drm/i915/display/intel_dsb.c     | 19 ++++++++++++
 drivers/gpu/drm/i915/display/intel_dsb.h     |  3 ++
 drivers/gpu/drm/i915/display/intel_vrr.c     | 31 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_vrr.h     |  2 ++
 6 files changed, 61 insertions(+), 10 deletions(-)

-- 
2.45.3

