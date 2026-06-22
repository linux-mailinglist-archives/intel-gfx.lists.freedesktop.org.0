Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id rb1+MLs8OWokpAcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2026 15:46:35 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 177986AFFBC
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2026 15:46:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=VlGY7gsq;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BF7F10E6F5;
	Mon, 22 Jun 2026 13:46:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B322A10E6F5;
 Mon, 22 Jun 2026 13:46:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782135993; x=1813671993;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=A2UzNKd2gW6PAovjyGl2F+4t1yHAlvP/jlfMEYzJr10=;
 b=VlGY7gsqCxPXQ+abOPvClCjK4SXq28Ko0o2xUWdR91R1cYX8Zc16D47n
 srAuggn4cc+2kByyN1MQIqCuPF8Q8cr1dR/DrEEZQ5T0/PbWFbUC/ADZ1
 EvSq30y+ve/+keDumZuJpyWirzZYo+pD1zvMnMrDj0ETDpJJgkKGcXNk3
 0kXNrYbwT/9UlelmvQPgoPkZqHlXYvjTIvZJuk45H8V2RI6QGYDKnMwIt
 ZL5Gf9lYMZc+D/CGnjVxVmDkYVasls2MX6ZjCeoOqussmbSgXH+Dar2mx
 kt2Xp8WFUw8tfI073FyIo1f1WEEYaTftoRqc4uaAinKa81gldBkjBnkFj Q==;
X-CSE-ConnectionGUID: vq6/6vP8SHmzSlFwMgskbQ==
X-CSE-MsgGUID: tS+3650HThSg1SGuIE9+oA==
X-IronPort-AV: E=McAfee;i="6800,10657,11824"; a="82733878"
X-IronPort-AV: E=Sophos;i="6.24,218,1774335600"; d="scan'208";a="82733878"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2026 06:46:32 -0700
X-CSE-ConnectionGUID: z/vXY2WhS1eLsVTeT4nSyQ==
X-CSE-MsgGUID: +xYy4NdJS4esxCSWYrpZMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,218,1774335600"; d="scan'208";a="273306007"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO [10.245.245.192])
 ([10.245.245.192])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2026 06:46:31 -0700
Message-ID: <3038ba5c-eff2-4af1-818e-ef3fc070311a@linux.intel.com>
Date: Mon, 22 Jun 2026 15:46:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] drm/modes: Add DRM_MODE_MATCH_TIMINGS_VRR
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20260612144203.31715-1-ville.syrjala@linux.intel.com>
 <20260612144203.31715-2-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
In-Reply-To: <20260612144203.31715-2-ville.syrjala@linux.intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[maarten.lankhorst@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,linux.intel.com:mid,linux.intel.com:from_mime,intel.com:dkim,intel.com:email,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 177986AFFBC

For inclusion through drm-intel:

Acked-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

On 6/12/26 16:42, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Add a new mode matching flag DRM_MODE_MATCH_TIMINGS_VRR. This is
> identical to DRM_MODE_MATCH_TIMINGS, except it requires the vsync
> pulse to remain anchored to the end of vtotal, as opposed to the
> start of the frame. VRR capable hardware can therefore treat
> matching modes as just variants of the same mode with a different
> vblank lengths.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/drm_modes.c | 23 +++++++++++++++++++++++
>  include/drm/drm_modes.h     |  1 +
>  2 files changed, 24 insertions(+)
>
> diff --git a/drivers/gpu/drm/drm_modes.c b/drivers/gpu/drm/drm_modes.c
> index 3f8e025fd6d9..e1eed13a8e94 100644
> --- a/drivers/gpu/drm/drm_modes.c
> +++ b/drivers/gpu/drm/drm_modes.c
> @@ -1469,6 +1469,25 @@ struct drm_display_mode *drm_mode_duplicate(struct drm_device *dev,
>  }
>  EXPORT_SYMBOL(drm_mode_duplicate);
>  
> +static bool drm_mode_match_timings_vrr(const struct drm_display_mode *mode1,
> +				       const struct drm_display_mode *mode2)
> +{
> +	int mode1_vsync_start_offset = mode1->vtotal - mode1->vsync_start;
> +	int mode1_vsync_end_offset = mode1->vtotal - mode1->vsync_end;
> +	int mode2_vsync_start_offset = mode2->vtotal - mode2->vsync_start;
> +	int mode2_vsync_end_offset = mode2->vtotal - mode2->vsync_end;
> +
> +	return mode1->hdisplay == mode2->hdisplay &&
> +		mode1->hsync_start == mode2->hsync_start &&
> +		mode1->hsync_end == mode2->hsync_end &&
> +		mode1->htotal == mode2->htotal &&
> +		mode1->hskew == mode2->hskew &&
> +		mode1->vdisplay == mode2->vdisplay &&
> +		mode1_vsync_start_offset == mode2_vsync_start_offset &&
> +		mode1_vsync_end_offset == mode2_vsync_end_offset &&
> +		mode1->vscan == mode2->vscan;
> +}
> +
>  static bool drm_mode_match_timings(const struct drm_display_mode *mode1,
>  				   const struct drm_display_mode *mode2)
>  {
> @@ -1538,6 +1557,10 @@ bool drm_mode_match(const struct drm_display_mode *mode1,
>  	if (!mode1 || !mode2)
>  		return false;
>  
> +	if (match_flags & DRM_MODE_MATCH_TIMINGS_VRR &&
> +	    !drm_mode_match_timings_vrr(mode1, mode2))
> +		return false;
> +
>  	if (match_flags & DRM_MODE_MATCH_TIMINGS &&
>  	    !drm_mode_match_timings(mode1, mode2))
>  		return false;
> diff --git a/include/drm/drm_modes.h b/include/drm/drm_modes.h
> index b9bb92e4b029..6e3eccc3c349 100644
> --- a/include/drm/drm_modes.h
> +++ b/include/drm/drm_modes.h
> @@ -193,6 +193,7 @@ enum drm_mode_status {
>  #define DRM_MODE_MATCH_FLAGS (1 << 2)
>  #define DRM_MODE_MATCH_3D_FLAGS (1 << 3)
>  #define DRM_MODE_MATCH_ASPECT_RATIO (1 << 4)
> +#define DRM_MODE_MATCH_TIMINGS_VRR (1 << 5)
>  
>  /**
>   * struct drm_display_mode - DRM kernel-internal display mode structure

