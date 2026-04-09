Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6Dq9GtYN2GmlWwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 22:36:38 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2BC93CF8A4
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 22:36:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7B2B10E12E;
	Thu,  9 Apr 2026 20:36:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f4nI5HbV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6250710E052;
 Thu,  9 Apr 2026 20:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775766993; x=1807302993;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=7gfLzB8DThL8+awFaM0AEeeHbksinJ+rqvsNTvEFvlE=;
 b=f4nI5HbVylfXJ0oT1l33+DPyPSEzfNM0gdBSsJQNaaFmQbGjjrZVOXvu
 donEKaTZl9KVQdqOy6/4SxihM8oV3FGkDs6afE1SKt+TcKjljw80sKXTC
 UGs+u6iIjFAWc4oWMf4uT6NLgQcpSr4+VF1dGIaPNiYoYAUiCMqNVwcx9
 EH1PdAxQgNf9br9/bGpYVxxj99KVGi8RKq5Psmf1Dza39thsVGVXhnEu5
 crxnqKGIDOa7NQIn5/GekiD63IVowjIGSNC6j2g/d+c+dJwAVrvibxdGl
 wt9oBfrqaK5sd6Yn82BHv6c4OiTA/D40q2qOVSHSB/+z1N06IvsDEw+L+ Q==;
X-CSE-ConnectionGUID: E1Sej0GGRTmkiN7S4peqXg==
X-CSE-MsgGUID: sAVJgakGTtqqRNXKB7QABw==
X-IronPort-AV: E=McAfee;i="6800,10657,11754"; a="87410721"
X-IronPort-AV: E=Sophos;i="6.23,170,1770624000"; d="scan'208";a="87410721"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 13:36:32 -0700
X-CSE-ConnectionGUID: c13WNi39SJCjK+TGxfSMKA==
X-CSE-MsgGUID: S/n0EwMKQ0S41l0IShj9Zw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,170,1770624000"; d="scan'208";a="229161704"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.245.216])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 13:36:24 -0700
Date: Thu, 9 Apr 2026 23:36:21 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Kory Maincent <kory.maincent@bootlin.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Dave Airlie <airlied@redhat.com>, Jesse Barnes <jbarnes@virtuousgeek.org>,
 Eric Anholt <eric@anholt.net>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Mark Yacoub <markyacoub@google.com>, Sean Paul <seanpaul@google.com>,
 Louis Chauvet <louis.chauvet@bootlin.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Simona Vetter <simona.vetter@ffwll.ch>
Subject: Re: [PATCH RFC 00/12] Add support for DisplayPort link training
 information report
Message-ID: <adgNxaFhbQaxC5E_@intel.com>
References: <20260409-feat_link_cap-v1-0-7069e8199ce2@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260409-feat_link_cap-v1-0-7069e8199ce2@bootlin.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [0.81 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_MIXED_CHARSET(0.63)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[35];
	FREEMAIL_CC(0.00)[linux.intel.com,intel.com,ursulin.net,gmail.com,ffwll.ch,redhat.com,virtuousgeek.org,anholt.net,kernel.org,suse.de,linaro.org,ideasonboard.com,kwiboo.se,pengutronix.de,collabora.com,chris-wilson.co.uk,bootlin.com,google.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:mid,bootlin.com:email,bootlin.com:url]
X-Rspamd-Queue-Id: A2BC93CF8A4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Apr 09, 2026 at 07:08:16PM +0200, Kory Maincent wrote:
> DisplayPort link training negotiates the physical-layer parameters needed
> for a reliable connection: lane count, link rate, voltage swing,
> pre-emphasis, and optionally Display Stream Compression (DSC). Currently,
> each driver exposes this state in its own way, often through
> driver-specific debugfs entries, with no standard interface for userspace
> diagnostic and monitoring tools.
> 
> This series introduces a generic, DRM-managed framework for exposing DP
> link training state as standard connector properties, modeled after the
> existing HDMI helper drmm_connector_hdmi_init().
> 
> The new drmm_connector_dp_init() helper initializes a DP connector and
> registers the following connector properties to expose the negotiated link
> state to userspace:
> 
> - num_lanes:      negotiated lane count (1, 2 or 4)
> - link_rate:      negotiated link rate
> - dsc_en:         whether Display Stream Compression is active
> - voltage_swingN: per-lane voltage swing level (lanes 0-3)
> - pre_emphasisN:  per-lane pre-emphasis level (lanes 0-3)

I don't see why any real userspace would be interested in those (apart
from maybe DSC). If this is just for diagnostics and whatnot then I
think sysfs/debugfs could be a better fit.

> 
> Two runtime helpers update and clear these properties when link training
> completes or the link goes down:
> - drm_connector_dp_set_link_train_properties()
> - drm_connector_dp_reset_link_train_properties()
> 
> Two drivers are updated as reference implementations: i915 (direct
> connector path) and MediaTek (via the bridge connector framework using a
> new DRM_BRIDGE_OP_DP flag). The i915 patches are preceded by a series of
> conversions to DRM managed resources, which are required before adopting
> drmm_connector_dp_init().
> 
> The MST case in i915 driver is not supported yet.
> 
> Patches 1-3:  Fix two error-path cleanup bugs in i915 sdvo and lvds
> [Will probably be sent standalone]
> Patches 4-8: Convert i915 display resources to DRM managed lifetime
> Patch 9: Introduce the core drmm_connector_dp_init() framework
> Patch 10: Wire the i915 DP connector to use the new helpers
> Patch 11: Introduce DRM_BRIDGE_OP_DP and wire bridge connectors
> Patch 12: Wire the MediaTek DP bridge to the new helpers [untested]
> 
> Signed-off-by: Kory Maincent <kory.maincent@bootlin.com>
> ---
> Kory Maincent (12):
>       drm/i915/display/intel_sdvo: Fix double connector destroy in error paths
>       drm/i915/display/intel_lvds: Drop redundant manual cleanup on init failure
>       drm/i915/display/intel_dp: Drop redundant intel_dp_aux_fini() on init failure
>       drm/i915/display: Switch to drmm_mode_config_init() and drop manual cleanup
>       drm/i915/display: Switch to managed for crtc
>       drm/i915/display: Switch to managed for plane
>       drm/i915/display: Switch to managed for encoder
>       drm/i915/display: Switch to managed for connector
>       drm: Introduce drmm_connector_dp_init() with link training state properties
>       drm/i915/display/dp: Adopt dp_connector helpers to expose link training state
>       drm/bridge: Wire drmm_connector_dp_init() via new DRM_BRIDGE_OP_DP flag
>       drm/mediatek: Use dp_connector helpers to report link training state
> 
>  drivers/gpu/drm/Makefile                           |   1 +
>  drivers/gpu/drm/display/drm_bridge_connector.c     |  26 +-
>  drivers/gpu/drm/drm_dp_connector.c                 | 344 +++++++++++++++++++++
>  drivers/gpu/drm/i915/display/g4x_dp.c              |  39 +--
>  drivers/gpu/drm/i915/display/g4x_hdmi.c            |  27 +-
>  drivers/gpu/drm/i915/display/i9xx_plane.c          |  97 +++---
>  drivers/gpu/drm/i915/display/icl_dsi.c             |  50 ++-
>  drivers/gpu/drm/i915/display/intel_connector.c     |  26 +-
>  drivers/gpu/drm/i915/display/intel_connector.h     |   5 +-
>  drivers/gpu/drm/i915/display/intel_crt.c           |  28 +-
>  drivers/gpu/drm/i915/display/intel_crtc.c          | 102 +++---
>  drivers/gpu/drm/i915/display/intel_cursor.c        |  41 ++-
>  drivers/gpu/drm/i915/display/intel_ddi.c           |  64 ++--
>  drivers/gpu/drm/i915/display/intel_display.c       |   8 -
>  drivers/gpu/drm/i915/display/intel_display.h       |   1 -
>  .../gpu/drm/i915/display/intel_display_driver.c    |  37 ++-
>  drivers/gpu/drm/i915/display/intel_dp.c            |  43 ++-
>  .../gpu/drm/i915/display/intel_dp_link_training.c  |  25 ++
>  drivers/gpu/drm/i915/display/intel_dp_mst.c        |  33 +-
>  drivers/gpu/drm/i915/display/intel_dvo.c           |  43 +--
>  drivers/gpu/drm/i915/display/intel_encoder.c       |   6 +-
>  drivers/gpu/drm/i915/display/intel_encoder.h       |   3 +-
>  drivers/gpu/drm/i915/display/intel_hdmi.c          |  15 +-
>  drivers/gpu/drm/i915/display/intel_lvds.c          |  45 ++-
>  drivers/gpu/drm/i915/display/intel_plane.c         |  45 +--
>  drivers/gpu/drm/i915/display/intel_plane.h         |   5 +-
>  drivers/gpu/drm/i915/display/intel_sdvo.c          | 134 +++-----
>  drivers/gpu/drm/i915/display/intel_sprite.c        | 119 ++++---
>  drivers/gpu/drm/i915/display/intel_tv.c            |  26 +-
>  drivers/gpu/drm/i915/display/skl_universal_plane.c | 102 +++---
>  drivers/gpu/drm/i915/display/vlv_dsi.c             |  42 +--
>  drivers/gpu/drm/mediatek/mtk_dp.c                  |  34 +-
>  include/drm/drm_bridge.h                           |  13 +
>  include/drm/drm_connector.h                        |  38 +++
>  include/drm/drm_dp_connector.h                     | 109 +++++++
>  35 files changed, 1125 insertions(+), 651 deletions(-)
> ---
> base-commit: db5a75cfd29766536be62aece9f19c6e7a858fa6
> change-id: 20260226-feat_link_cap-20cbb6f31d40
> 
> Best regards,
> -- 
> Köry Maincent, Bootlin
> Embedded Linux and kernel engineering
> https://bootlin.com

-- 
Ville Syrjälä
Intel
