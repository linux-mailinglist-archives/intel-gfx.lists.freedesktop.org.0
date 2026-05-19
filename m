Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oLzmAl82DGoKaAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 12:07:27 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 922F257BE06
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 12:07:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0632A10EBA9;
	Tue, 19 May 2026 10:07:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WXFgW4JQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFDC710EBA9
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 May 2026 10:07:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779185244; x=1810721244;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=tJKyOO4VfZJZZx2TNPYjiq75o/ggCQn5QI69/5uhi5o=;
 b=WXFgW4JQyJh7WNweFnvPIDdMrgvM2wNUfXy87NNtZE0dGxBrtYbtdAJ8
 VUUbWSJWS8Qz2xl6HQn0kl4RiVDKSIblhWgghMNCEJD8BnhALhayJjdYs
 9bvvN01VDuESYvlkIjdbMTFN108vGa7eHPtnB92cyDUJxG82Ml/IzfefB
 sK6J3a2KUUb2yPLCcYFqJoHOI7QGofBtRBPZDajXYemKZINxkXPPY2U21
 GiXxXF517Xue7cXpuHnS+t26Vu4qk2FyefQ3nmbRD11BcYQr9fnIxkzi6
 6HqdbKJsR9B53xiVlhlrznYnb4Wy5jmPXLP24Fg3pZ6jUSW1fOltY6UWG Q==;
X-CSE-ConnectionGUID: 64aCOU25RRuWr0nHk5fvYw==
X-CSE-MsgGUID: DkDPjv4nQJKLcElCkQt0Og==
X-IronPort-AV: E=McAfee;i="6800,10657,11790"; a="91162565"
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="91162565"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2026 03:07:24 -0700
X-CSE-ConnectionGUID: Cp4vG1DCQIK+oiU3/dzTvw==
X-CSE-MsgGUID: xQfic02cRk6wjwYLa8o4Ig==
X-ExtLoop1: 1
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.218])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2026 03:07:20 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Pranay Samala <pranay.samala@intel.com>, intel-gfx@lists.freedesktop.org
Cc: karthik.b.s@intel.com, sameer.lattannavar@intel.com,
 pranay.samala@intel.com, stable@vger.kernel.org, Chaitanya Kumar Borah
 <chaitanya.kumar.borah@intel.com>, Uma Shankar <uma.shankar@intel.com>
Subject: Re: [PATCH] drm/i915/color: Fix HDR pre-CSC LUT programming loop
In-Reply-To: <20260519075245.383864-1-pranay.samala@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260519075245.383864-1-pranay.samala@intel.com>
Date: Tue, 19 May 2026 13:07:18 +0300
Message-ID: <ff124be8331d2c720c6369d85316fc95a325437c@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:pranay.samala@intel.com,m:karthik.b.s@intel.com,m:sameer.lattannavar@intel.com,m:stable@vger.kernel.org,m:chaitanya.kumar.borah@intel.com,m:uma.shankar@intel.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: 922F257BE06
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, 19 May 2026, Pranay Samala <pranay.samala@intel.com> wrote:
> The integer lut programming loop never executes completely due to
> incorrect condition (i++ > 130).
>
> Fix to properly program 129th+ entries for values > 1.0.
>
> Cc: <stable@vger.kernel.org> #v6.19
> Fixes: 82caa1c8813f ("drm/i915/color: Program Pre-CSC registers")
> Signed-off-by: Pranay Samala <pranay.samala@intel.com>
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>

Okay, so this is a stable worthy fix, first sent 2=C2=BD months ago [1], and
we're still tossing it around? Folks, there needs to be more urgency
with obvious fixes like this.

I see this was sent separately to intel-gfx and intel-xe [2] lists. The
way to go is to just cross-post it. (Don't send it again, but do check
the CI results for both.)


BR,
Jani.


[1] https://lore.kernel.org/r/20260306165307.3233194-6-chaitanya.kumar.bora=
h@intel.com
[2] https://lore.kernel.org/r/20260519075308.383877-1-pranay.samala@intel.c=
om


> ---
>  drivers/gpu/drm/i915/display/intel_color.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm=
/i915/display/intel_color.c
> index 2d318e922671..3bfe09d81a4c 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -3976,7 +3976,7 @@ xelpd_program_plane_pre_csc_lut(struct intel_dsb *d=
sb,
>  				intel_de_write_dsb(display, dsb,
>  						   PLANE_PRE_CSC_GAMC_DATA_ENH(pipe, plane, 0),
>  						   (1 << 24));
> -			} while (i++ > 130);
> +			} while (i++ < 130);
>  		} else {
>  			for (i =3D 0; i < lut_size; i++) {
>  				u32 v =3D (i * ((1 << 24) - 1)) / (lut_size - 1);

--=20
Jani Nikula, Intel
