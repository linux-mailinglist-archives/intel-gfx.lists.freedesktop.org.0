Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4EnaDw38jmljGwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Feb 2026 11:25:17 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A07C5135066
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Feb 2026 11:25:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 355FE10E7C2;
	Fri, 13 Feb 2026 10:25:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gOfk5v/K";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5DE510E7BD;
 Fri, 13 Feb 2026 10:25:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770978313; x=1802514313;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=KnVzkutQ1fIuynBWuwMD5/4yF5kLm2C9Ny+SAh9oAP4=;
 b=gOfk5v/KihiwGwIJpY2kXgXZeDkG5SpiyfmMIdSc3R0PesVjbkOFgBRg
 CNk3SzWw/hE5oe7wjnR+qrWkkXcbKT6qCL/GFAcKmo92KoNjLmRp49pqg
 GH3ET+j18PIiQ3ISpwZUQu6SFrCb0ou9hVgqxaFvva1m7pzje6b6MzOEm
 Jc3Nub+p+oS7wjLANrZFFtxN8hkWhiKWKEAUUhYAx7y2i/PRqvTKwAZpw
 aKqn6x5EU+IWbL9aQLJwNlP7jcIzG6umx4Lvz92vo9si2Ij1Ce/33vBBn
 w/0yN0PWSYCR7J8ymgTa3FDo9rWy/uFTV4ubo7V+lBiYWtw29MPmRRt/X g==;
X-CSE-ConnectionGUID: VNrAtjQUR5mNCqd3q8B2wg==
X-CSE-MsgGUID: Cvt7r3MQQqqRixFT3DnEWw==
X-IronPort-AV: E=McAfee;i="6800,10657,11699"; a="72150641"
X-IronPort-AV: E=Sophos;i="6.21,288,1763452800"; d="scan'208";a="72150641"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2026 02:25:13 -0800
X-CSE-ConnectionGUID: 3UgEP7M1QKW0nht0n+NPZg==
X-CSE-MsgGUID: BMJTwZWCQl+jVMSognp3CA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,288,1763452800"; d="scan'208";a="212919531"
Received: from abityuts-desk.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.244.16])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2026 02:25:12 -0800
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v3 00/16] drm/i915/display: convert a bunch of W/A checks to
 the new framework
Date: Fri, 13 Feb 2026 12:23:28 +0200
Message-ID: <20260213102500.406925-1-luciano.coelho@intel.com>
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
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[luciano.coelho@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: A07C5135066
X-Rspamd-Action: no action

Hi,

This series convert the "low hanging fruits" of workaround checks to
the new framework.  Some of the workarounds check other values that
are not in the intel_display structure, so they don't directly fit in
the workaround framework and will be left for later.

In v2:
   * Added intel-xe in Cc for xe CI (Jani);
   * Removed NOP intel-overlay.c patch (Jani).

In v3:
   * Added a comment back (accidentally removed) (Ville);
   * Inverted the logic of W/A 16025596647 (Ville);
   * Removed macro magic (Ville).

Please review.

Cheers,
Luca.


Luca Coelho (16):
  drm/i915/display: remove enum macro magic in intel_display_wa()
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

 drivers/gpu/drm/i915/display/intel_audio.c    | 24 +++----
 drivers/gpu/drm/i915/display/intel_cdclk.c    |  7 +-
 drivers/gpu/drm/i915/display/intel_cursor.c   |  3 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  4 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  6 +-
 .../drm/i915/display/intel_display_device.c   |  3 +-
 .../drm/i915/display/intel_display_power.c    | 22 +++---
 .../i915/display/intel_display_power_well.c   |  4 +-
 .../gpu/drm/i915/display/intel_display_wa.c   | 67 ++++++++++++++++++-
 .../gpu/drm/i915/display/intel_display_wa.h   | 27 +++++++-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  3 +-
 drivers/gpu/drm/i915/display/intel_fbc.c      | 12 ++--
 drivers/gpu/drm/i915/display/intel_flipq.c    | 13 +---
 drivers/gpu/drm/i915/display/intel_gmbus.c    |  6 +-
 .../drm/i915/display/intel_modeset_setup.c    |  3 +-
 drivers/gpu/drm/i915/display/intel_pmdemand.c |  8 ++-
 drivers/gpu/drm/i915/display/intel_psr.c      | 20 +++---
 drivers/gpu/drm/i915/display/skl_scaler.c     |  2 +-
 .../drm/i915/display/skl_universal_plane.c    |  6 +-
 drivers/gpu/drm/i915/display/skl_watermark.c  |  3 +-
 20 files changed, 164 insertions(+), 79 deletions(-)

-- 
2.51.0

