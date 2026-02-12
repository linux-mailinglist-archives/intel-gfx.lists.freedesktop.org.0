Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ADLSKHsgjmk+/wAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Feb 2026 19:48:27 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E347130675
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Feb 2026 19:48:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0E1C10E293;
	Thu, 12 Feb 2026 18:48:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cKKNiqZl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DFA510E289;
 Thu, 12 Feb 2026 18:48:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770922103; x=1802458103;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tNlBaglZ2un3woa2RpJSVT+Y4WohjUmstN3DsXNWUfo=;
 b=cKKNiqZlIoygOgaWIRbogMbIHFv0hT0yaX2jlwA/E3lHWY7e4jhWTsKJ
 Pl4M7Qp6+PbhBuAOPrSZrmlolBs8tEeiw5F3GL5y4Ha6iV8S+BQCsJtSb
 L4B7ZQ4DF1EiNhKXMZk3NrodlPwmp/AKjl+jzKklQpwHUFkGr01BzGwqS
 DGmBya5TcEirKQTI1ymYqEwPMGMWDxxXqZ1tk6I1gU7VH00mnPvOIwoX/
 ZDGh+ZEh3Uh6zkCIwmtIKjTYX/MOaJWG7t0n8roFt1AS7GV7YP3aitz1z
 PF6i+oS/x0EVtxRVJhnZyb1L9kQiQVHsKBasZCU+SdQc2AhXThAR+dgSt A==;
X-CSE-ConnectionGUID: JjG+khrVRH6woSPgvuXzxw==
X-CSE-MsgGUID: yBv3FR27ToGL0APyOtnGxw==
X-IronPort-AV: E=McAfee;i="6800,10657,11699"; a="72204100"
X-IronPort-AV: E=Sophos;i="6.21,287,1763452800"; d="scan'208";a="72204100"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2026 10:48:23 -0800
X-CSE-ConnectionGUID: PhSWmBxBQOGc3HCV3wneqQ==
X-CSE-MsgGUID: BAjSZZ2NTF2Uz1tguJ37EQ==
X-ExtLoop1: 1
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.245.217])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2026 10:48:22 -0800
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v2 00/15] drm/i915/display: convert a bunch of W/A checks to
 the new framework
Date: Thu, 12 Feb 2026 20:45:58 +0200
Message-ID: <20260212184737.352515-1-luciano.coelho@intel.com>
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[luciano.coelho@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 2E347130675
X-Rspamd-Action: no action

Hi,

This series convert the "low hanging fruits" of workaround checks to
the new framework.  Some of the workarounds check other values that
are not in the intel_display structure, so they don't directly fit in
the workaround framework and will be left for later.

In v2:
   * Added intel-xe in Cc for xe CI (Jani);
   * Removed NOP intel-overlay.c patch (Jani).

Please review.

Cheers,
Luca.


Luca Coelho (15):
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
 .../drm/i915/display/intel_display_power.c    | 22 +++----
 .../gpu/drm/i915/display/intel_display_wa.c   | 65 +++++++++++++++++++
 .../gpu/drm/i915/display/intel_display_wa.h   | 25 +++++++
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  3 +-
 drivers/gpu/drm/i915/display/intel_fbc.c      |  4 +-
 drivers/gpu/drm/i915/display/intel_flipq.c    | 13 +---
 .../drm/i915/display/intel_modeset_setup.c    |  3 +-
 drivers/gpu/drm/i915/display/intel_pmdemand.c |  8 ++-
 drivers/gpu/drm/i915/display/intel_psr.c      | 20 +++---
 .../drm/i915/display/skl_universal_plane.c    |  6 +-
 drivers/gpu/drm/i915/display/skl_watermark.c  |  3 +-
 17 files changed, 140 insertions(+), 64 deletions(-)

-- 
2.51.0

