Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id MfrtJbZ2V2p9OgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2026 14:01:58 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3535275DDF5
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2026 14:01:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=HFGeABX4;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B809510F00C;
	Wed, 15 Jul 2026 12:01:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 589A010F008;
 Wed, 15 Jul 2026 12:01:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1784116911; x=1815652911;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=uivZYnE12vtDVX4iYR5SdSwylcLoYWBxL3vJpSj3ZnQ=;
 b=HFGeABX4AHTVSGppRo1L7Fm14XpK6J/ncobw3NTGwjm5+bQIfqtCevLG
 gEpUcZhAZ5sRKh8ufyp0MGWhQ57HAWVT2T/W2x+mkz8yW0mNCVkDS0hTI
 7L9rPQzRvvNMqGDF9b+pMCGVfCd98B8iJHNbKTnTMBchwle9oCvRNmVo/
 OERhDlRL2zl6fbSbFDgrxobrcJx3PxtE9P4N9VhB28CI4bdrvb9sKPYxi
 Z74/MkEGFoQOEXgodDTsUvSxjskd2T8h0CoWxIZkooJzEz/uRAyrP6NaQ
 H+Ah6SFUEuav5IqGixlj8geD8bLRw2lLb88T5lVb2+n6kbsRa5/lQxO2a w==;
X-CSE-ConnectionGUID: cXUorF0uTuuJxQDaDtqdzg==
X-CSE-MsgGUID: HmD7OGpdSoqZ7RMA1ufKZQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11847"; a="72282099"
X-IronPort-AV: E=Sophos;i="6.25,165,1779174000"; d="scan'208";a="72282099"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2026 05:01:50 -0700
X-CSE-ConnectionGUID: 39d1d3RzRyG+j4fwVdKvEw==
X-CSE-MsgGUID: pDUR51TjTRGxFgUZkhcuWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,165,1779174000"; d="scan'208";a="259748816"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.168])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2026 05:01:47 -0700
Date: Wed, 15 Jul 2026 15:01:44 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Uma Shankar <uma.shankar@intel.com>,
 Leandro Ribeiro <leandro.ribeiro@collabora.com>
Subject: Re: [PATCH] drm/i915/display: expose blend mode on alpha-capable
 planes
Message-ID: <ald2qKro09WTer7_@intel.com>
References: <20260715054221.451421-1-chaitanya.kumar.borah@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260715054221.451421-1-chaitanya.kumar.borah@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.36 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.67)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RSPAMD_URIBL_FAIL(0.00)[lists.freedesktop.org:query timed out];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,intel.com:dkim,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,collabora.com:email,linux.intel.com:from_mime,gitlab.freedesktop.org:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3535275DDF5

On Wed, Jul 15, 2026 at 11:12:21AM +0530, Chaitanya Kumar Borah wrote:
> Since commit 860e748bddcc ("drm: ensure blend mode supported if pixel
> format with alpha exposed"), drm_mode_config_validate() warns when a
> plane exposes an alpha pixel format but not the "pixel blend mode"
> property. The cursor (ARGB8888, all platforms) and the VLV/CHV primary
> and sprite planes trip this.
> 
> Userspace has historically assumed premultiplied blending when the
> property is not attached, so it is safe to assume that planes that
> did not expose the property already blended with fixed pre-multiplied
> alpha in hardware. Therefore, expose a "pixel blend mode" property
> advertising only DRM_MODE_BLEND_PREMULTI to match that assumption and
> silence the warning. The cursor call is unconditional; the primary and
> sprite calls are gated to VLV/CHV, the only platforms whose format lists
> include alpha formats.
> 
> Assisted-by: Claude:claude-opus-4-8
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Cc: Leandro Ribeiro <leandro.ribeiro@collabora.com>
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/work_items/16623
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

https://lore.kernel.org/intel-gfx/20260522194935.27411-1-ville.syrjala@linux.intel.com/

> ---
>  drivers/gpu/drm/i915/display/i9xx_plane.c   | 4 ++++
>  drivers/gpu/drm/i915/display/intel_cursor.c | 3 +++
>  drivers/gpu/drm/i915/display/intel_sprite.c | 4 ++++
>  3 files changed, 11 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
> index 70734d32a409..490908f59141 100644
> --- a/drivers/gpu/drm/i915/display/i9xx_plane.c
> +++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
> @@ -1108,6 +1108,10 @@ intel_primary_plane_create(struct intel_display *display, enum pipe pipe)
>  						   DRM_MODE_ROTATE_0,
>  						   supported_rotations);
>  
> +	if (display->platform.valleyview || display->platform.cherryview)
> +		drm_plane_create_blend_mode_property(&plane->base,
> +						     BIT(DRM_MODE_BLEND_PREMULTI));
> +
>  	zpos = 0;
>  	drm_plane_create_zpos_immutable_property(&plane->base, zpos);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
> index 88384dea868b..0673f16f6fd0 100644
> --- a/drivers/gpu/drm/i915/display/intel_cursor.c
> +++ b/drivers/gpu/drm/i915/display/intel_cursor.c
> @@ -1078,6 +1078,9 @@ intel_cursor_plane_create(struct intel_display *display,
>  
>  	intel_cursor_add_size_hints_property(cursor);
>  
> +	drm_plane_create_blend_mode_property(&cursor->base,
> +					     BIT(DRM_MODE_BLEND_PREMULTI));
> +
>  	zpos = DISPLAY_RUNTIME_INFO(display)->num_sprites[pipe] + 1;
>  	drm_plane_create_zpos_immutable_property(&cursor->base, zpos);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
> index 6a65f92e8a03..3e38960bbbd8 100644
> --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> @@ -1722,6 +1722,10 @@ intel_sprite_plane_create(struct intel_display *display,
>  					  DRM_COLOR_YCBCR_BT709,
>  					  DRM_COLOR_YCBCR_LIMITED_RANGE);
>  
> +	if (display->platform.valleyview || display->platform.cherryview)
> +		drm_plane_create_blend_mode_property(&plane->base,
> +						     BIT(DRM_MODE_BLEND_PREMULTI));
> +
>  	zpos = sprite + 1;
>  	drm_plane_create_zpos_immutable_property(&plane->base, zpos);
>  
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
