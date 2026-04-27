Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UIhTGthZ72n5AQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2026 14:43:04 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C71E6472A9E
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2026 14:43:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEAED10E730;
	Mon, 27 Apr 2026 12:43:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iGIdCW5C";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9828B10E72D;
 Mon, 27 Apr 2026 12:43:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777293781; x=1808829781;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=FMeii9FTPUPwD5o05bYuLX8B1nfiiIm7rctGGKFA1Ww=;
 b=iGIdCW5CHFID1x+sEN5P1xa4Ha4K+PyHuefw2ktRZSNEUM5oaV7nEnDD
 G7XbOeX0zVmz6pfm+zR9tJVGxvgkHHGthB7F/XusEyENM1hMgGRDVznBM
 7tDf6mAD9R+M5OLWa+f+cu1/1jpxVDHmB+SWjjVkTbnxEJJEl4ClHrAP2
 g1rKixDgROIXL5u9xyl+oNJmb+8lrrLHlyKUgD01hjU/+f0xEujPLMR+O
 ksI4N6JEpXqdMrRJxejzhICo2EDmHnwLgDPfqPOHhViMd2rXLKzZiYSTj
 E1Ec3tNVIC3ZDMoiCc0myomg15bcGEwQgHsud1Y+3xhFalSFcwqhAiOJp g==;
X-CSE-ConnectionGUID: TfHFkVu7RB2alNa+wfe7EQ==
X-CSE-MsgGUID: mVYKJhB9Rwq/tc4udSfr7Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11768"; a="77885108"
X-IronPort-AV: E=Sophos;i="6.23,202,1770624000"; d="scan'208";a="77885108"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2026 05:43:01 -0700
X-CSE-ConnectionGUID: xjFOkdI4QHeSONYFfLsjGQ==
X-CSE-MsgGUID: TwisOFDKRzCLrDPLQeDQzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,202,1770624000"; d="scan'208";a="237954108"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.116])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2026 05:42:59 -0700
Date: Mon, 27 Apr 2026 15:42:55 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Subject: Re: [RESEND PATCH 5/7] drm/dp: Store coasting vtotal in struct
 drm_dp_as_sdp
Message-ID: <ae9Zzw8dEms2NODz@intel.com>
References: <20260424093424.3060805-1-ankit.k.nautiyal@intel.com>
 <20260424093424.3060805-6-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260424093424.3060805-6-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Queue-Id: C71E6472A9E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.31 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.63)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]

On Fri, Apr 24, 2026 at 03:04:22PM +0530, Ankit Nautiyal wrote:
> Add new field in struct drm_dp_as_sdp to store coasting vtotal.
> This is used by the sinks that support Panel Replay and Asynchronous
> timing during PR Active to derive refresh rate, when AS SDP transmission
> is stopped by the source.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/display/drm_dp_helper.c | 1 +
>  include/drm/display/drm_dp_helper.h     | 1 +
>  2 files changed, 2 insertions(+)
> 
> diff --git a/drivers/gpu/drm/display/drm_dp_helper.c b/drivers/gpu/drm/display/drm_dp_helper.c
> index a697cc227e28..e29958f8b0b6 100644
> --- a/drivers/gpu/drm/display/drm_dp_helper.c
> +++ b/drivers/gpu/drm/display/drm_dp_helper.c
> @@ -3512,6 +3512,7 @@ void drm_dp_as_sdp_log(struct drm_printer *p, const struct drm_dp_as_sdp *as_sdp
>  	drm_printf(p, "    duration_incr_ms: %d\n", as_sdp->duration_incr_ms);
>  	drm_printf(p, "    duration_decr_ms: %d\n", as_sdp->duration_decr_ms);
>  	drm_printf(p, "    operation_mode: %d\n", as_sdp->mode);
> +	drm_printf(p, "    coasting vtotal: %d\n", as_sdp->coasting_vtotal);

For some reason the existing fields are using '_', this one ' '.
Looks like VSC uses ' ' as well. So the existing stuff in
drm_dp_as_sdp_log() should be fixed to conform to the common 
style, in a separate patch.

Otherwise this looks fine
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

>  }
>  EXPORT_SYMBOL(drm_dp_as_sdp_log);
>  
> diff --git a/include/drm/display/drm_dp_helper.h b/include/drm/display/drm_dp_helper.h
> index 1d0acd58f486..8c2d77a032f0 100644
> --- a/include/drm/display/drm_dp_helper.h
> +++ b/include/drm/display/drm_dp_helper.h
> @@ -126,6 +126,7 @@ struct drm_dp_as_sdp {
>  	int duration_decr_ms;
>  	bool target_rr_divider;
>  	enum operation_mode mode;
> +	int coasting_vtotal;
>  };
>  
>  void drm_dp_as_sdp_log(struct drm_printer *p,
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
