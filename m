Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WGrdFBfOjWn87AAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Feb 2026 13:56:55 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2D1812DA3D
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Feb 2026 13:56:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D442010E262;
	Thu, 12 Feb 2026 12:56:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DKEVFo9D";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8C7D10E262
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Feb 2026 12:56:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770901012; x=1802437012;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=qeAJxdjuUwyRhbhZLNWywzUuXbv9Z1rFNb6yiOhvZEU=;
 b=DKEVFo9DJPa/MTUA86UtNvPRneomPWl6SSw5zDNHq9WCvEG8DgnlczqY
 joqZ1Pv+cxZVuMakaNqpMauPj346MAbfRO3iIYllhvb5UWjQiVjchyEsm
 i+a38nEH/3Qy3jdxgd5gdIx0zLhKaBPqAACMYgIBysjifYPOQwbP3jvfJ
 DAjOVh3wXYDdfvLAWa9M2+YcQaMvMREeJmmzKkNjIXOCARBPKGHsJKdv1
 ml2Dt6+Bpq6WJkjPu7t4Zu2y5zgidKqUciJk8ZJ9j1Z4heWVHtr8OrBnJ
 tQL/XeEPS77GLRf1IQfSv+pDJiDxq3NdawnSZuFVuos02r90kL6oErReR A==;
X-CSE-ConnectionGUID: rfq5S1q6SOOeFkrCBo2KBw==
X-CSE-MsgGUID: GzukHzE6Rmqk+k8clKOGew==
X-IronPort-AV: E=McAfee;i="6800,10657,11699"; a="72116745"
X-IronPort-AV: E=Sophos;i="6.21,286,1763452800"; d="scan'208";a="72116745"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2026 04:56:52 -0800
X-CSE-ConnectionGUID: 9nDcf6fOTVq2vwjXCJ0b7g==
X-CSE-MsgGUID: IWAgS1VvRL6wlh/Wm2K2pQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,286,1763452800"; d="scan'208";a="212698620"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.245.167])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2026 04:56:50 -0800
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 00/16] drm/i915/display: convert a bunch of W/A checks to the
 new framework
Date: Thu, 12 Feb 2026 14:51:49 +0200
Message-ID: <20260212125526.344401-1-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TO_DN_NONE(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	FROM_NEQ_ENVFROM(0.00)[luciano.coelho@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: C2D1812DA3D
X-Rspamd-Action: no action

Hi,

This series convert the "low hanging fruits" of workaround checks to
the new framework.  Some of the workarounds check other values that
are not in the intel_display structure, so they don't directly fit in
the workaround framework and will be left for later.

Please review.

Cheers,
Luca.


Luca Coelho (16):
  drm/i915/display: convert audio workaround to new framework
  drm/i915/display: convert W/As in intel_display_power.c to new
    framework
  drm/i915/display: convert W/As in intel_cdclk.c to new framework
  drm/i915/display: convert W/As in intel_cursor.c to new framework
  drm/i915/display: convert W/As in intel_ddi.c to new framework
  drm/i915/display: convert W/As in intel_display.c to new framework
  drm/i915/display: convert W/As in intel_display_device.c to new
    framework
  drm/i915/display: convert W/As in intel_dp_mst.c to new framework
  drm/i915/display: convert W/As in intel_fbc.c to new framework
  drm/i915/display: convert W/As in intel_flipq.c to new framework
  drm/i915/display: convert W/As in intel_modeset_setup.c to new
    framework
  drm/i915/display: convert W/As in intel_overlay.c to new framework
  drm/i915/display: convert W/As in intel_pmdemand.c to new framework
  drm/i915/display: convert W/As in intel_psr.c to new framework
  drm/i915/display: convert W/As in skl_universal_plane.c to new
    framework
  drm/i915/display: convert W/As in skl_watermark.c to new framework

 drivers/gpu/drm/i915/display/intel_audio.c    | 16 +----
 drivers/gpu/drm/i915/display/intel_cdclk.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_cursor.c   |  3 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  4 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  4 +-
 .../drm/i915/display/intel_display_device.c   |  3 +-
 .../drm/i915/display/intel_display_power.c    | 22 +++---
 .../gpu/drm/i915/display/intel_display_wa.c   | 67 +++++++++++++++++++
 .../gpu/drm/i915/display/intel_display_wa.h   | 26 +++++++
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  3 +-
 drivers/gpu/drm/i915/display/intel_fbc.c      |  4 +-
 drivers/gpu/drm/i915/display/intel_flipq.c    | 13 +---
 .../drm/i915/display/intel_modeset_setup.c    |  3 +-
 drivers/gpu/drm/i915/display/intel_overlay.c  |  1 +
 drivers/gpu/drm/i915/display/intel_pmdemand.c |  8 ++-
 drivers/gpu/drm/i915/display/intel_psr.c      | 20 +++---
 .../drm/i915/display/skl_universal_plane.c    |  6 +-
 drivers/gpu/drm/i915/display/skl_watermark.c  |  3 +-
 18 files changed, 144 insertions(+), 64 deletions(-)

-- 
2.51.0

