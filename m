Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mMSZNj1DzmlQmQYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 12:21:49 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68627387A2C
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 12:21:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D04F10F1D1;
	Thu,  2 Apr 2026 10:21:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BI7v0OYy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1F6810F1D1;
 Thu,  2 Apr 2026 10:21:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775125307; x=1806661307;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=r8OIHaDH9mhmWCoI3RvEepwyzKkXC8Cq0Oq25l1etyc=;
 b=BI7v0OYyR7PyVW1QEDUsyhpvm5mLwzyAe99NpRonpuyfGC9WLBahgf3B
 tHxaBNBwU6xKFB+rmfPgTbtWCwYRW+M4is5TiYxcSLGQqra/KPbASKoBp
 x0bFjvtLIqoIFhSpwX90xH/kgQ5aVIbJlkPFzCWISetl/CCRWOUX19xET
 OeLxvqFoM7LdYvMdhrwc4F3PxcDCrjx4KXWQ8M/lUfGvvlh5EujOxy5hL
 eQJQ3nBEHBZ6Sn7iDcBNGzGusnsybLbLyMNfgjY5MMHy8yQclElSXkB5C
 W0MQzjZ2Rs6OVY06KBvJkHYKdbRh9VPgd01ClxmohPNUZ/RKzRK4h8lXq Q==;
X-CSE-ConnectionGUID: 1Vx+oeDiTHOcZHRXVhj9Pw==
X-CSE-MsgGUID: UK/S7ZoFRwyo+bEx9Rg1qw==
X-IronPort-AV: E=McAfee;i="6800,10657,11746"; a="98793705"
X-IronPort-AV: E=Sophos;i="6.23,155,1770624000"; d="scan'208";a="98793705"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2026 03:21:46 -0700
X-CSE-ConnectionGUID: jx4ZlDhOQTGhKcMeeq2qIA==
X-CSE-MsgGUID: XYhPmpXmRzyZh9gvB3z5/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,155,1770624000"; d="scan'208";a="227207442"
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost) ([10.245.245.62])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2026 03:21:42 -0700
Date: Thu, 2 Apr 2026 13:21:39 +0300
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
To: Dave Airlie <airlied@gmail.com>, Simona Vetter <simona.vetter@ffwll.ch>
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Matthew Brost <matthew.brost@intel.com>,
 Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 Oded Gabbay <ogabbay@kernel.org>, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dim-tools@lists.freedesktop.org
Subject: [PULL] drm-intel-fixes
Message-ID: <ac5DM1IpBkuaT58e@jlahtine-mobl>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[joonas.lahtinen@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.993];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,gitlab.freedesktop.org:url,intel.com:dkim]
X-Rspamd-Queue-Id: 68627387A2C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Dave & Sima,

Here goes this week's drm-intel-fixes PR towards 7.0(-rc7). Three display fixes.

Fix for blank screen on Huawei Matebook E, flicker regression fix for Lenovo
ThinkPad P16v Gen 1 and finally eDP enhanced framing fix for IVB/HSW era laptops.

Regards, Joonas

***

drm-intel-fixes-2026-04-02:

- Fix for #12045: Huawei Matebook E (DRR-WXX): Persistent Black Screen on Boot with i915 and Gen11: Modesetting and Backlight Control Malfunction
- Fix for #15826: i915: Raptor Lake-P [UHD Graphics] display flicker/corruption on eDP panel
- Use crtc_state->enhanced_framing properly on ivb/hsw CPU eDP

The following changes since commit 7aaa8047eafd0bd628065b15757d9b48c5f9c07d:

  Linux 7.0-rc6 (2026-03-29 15:40:00 -0700)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/i915/kernel.git tags/drm-intel-fixes-2026-04-02

for you to fetch changes up to 9c9a57e4e337f94e23ddf69263fd0685c91155fb:

  drm/i915/dp: Use crtc_state->enhanced_framing properly on ivb/hsw CPU eDP (2026-03-31 07:49:53 +0300)

----------------------------------------------------------------
- Fix for #12045: Huawei Matebook E (DRR-WXX): Persistent Black Screen on Boot with i915 and Gen11: Modesetting and Backlight Control Malfunction
- Fix for #15826: i915: Raptor Lake-P [UHD Graphics] display flicker/corruption on eDP panel
- Use crtc_state->enhanced_framing properly on ivb/hsw CPU eDP

----------------------------------------------------------------
Ville Syrjälä (3):
      drm/i915/dsi: Don't do DSC horizontal timing adjustments in command mode
      drm/i915/cdclk: Do the full CDCLK dance for min_voltage_level changes
      drm/i915/dp: Use crtc_state->enhanced_framing properly on ivb/hsw CPU eDP

 drivers/gpu/drm/i915/display/g4x_dp.c      |  2 +-
 drivers/gpu/drm/i915/display/icl_dsi.c     |  4 +--
 drivers/gpu/drm/i915/display/intel_cdclk.c | 54 ++++++++++++++++++++++++++++++
 3 files changed, 57 insertions(+), 3 deletions(-)
