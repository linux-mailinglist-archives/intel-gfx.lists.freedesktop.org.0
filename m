Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A22629B8F38
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2024 11:32:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55A5E10E996;
	Fri,  1 Nov 2024 10:32:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y3FIxTcp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B20310E996
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Nov 2024 10:32:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730457137; x=1761993137;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=/6NZJcVP3FmnYWinwdLHkptZ0+FwebQS6jognCtGw60=;
 b=Y3FIxTcpbyhhGJontrzqEprxhZel9PuN4Xg0o7Vn7gTCGDHqKycWurP/
 8VPmMiTtHL6pTiaaNHxdDIHdW6i6C1R7SicdWpRLv3bMoI3rxKbBpE8cI
 uUNrs30UGlql6i5R7XA1SVLOSPRidA6AgtJJ3Nyqhma1BbUgmiXp22bep
 ZpnN0ir9YstEcVVQq0k2pxXP71o8RcufQ89xgCiUNF3hgr3UOGZs3F+eG
 gwXQUx49j7CVVrScsssxlaFs3GQ9hAOvatJonkW12AR8Ti2w+7IBztx/j
 50W2w8tDwtvXB8XHMQlqIG9INUR645ehWRazmQ3Y0tGEVHuEQuJ7QBTYt A==;
X-CSE-ConnectionGUID: EjF1QprzTGSHl9wC82OeWA==
X-CSE-MsgGUID: CAgIzr27TbKiTc6TcNz2ww==
X-IronPort-AV: E=McAfee;i="6700,10204,11242"; a="47705640"
X-IronPort-AV: E=Sophos;i="6.11,249,1725346800"; d="scan'208";a="47705640"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2024 03:32:16 -0700
X-CSE-ConnectionGUID: aXrOehm4Twyh24Khh9SSHg==
X-CSE-MsgGUID: 6U0IEAMzQKuzyfVaV4LpWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,249,1725346800"; d="scan'208";a="88052176"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.234])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2024 03:32:14 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 6/6] drm/i915: Simplify xelpdp_is_only_pipe_per_dbuf_bank()
In-Reply-To: <20241031155646.15165-7-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241031155646.15165-1-ville.syrjala@linux.intel.com>
 <20241031155646.15165-7-ville.syrjala@linux.intel.com>
Date: Fri, 01 Nov 2024 12:32:11 +0200
Message-ID: <877c9njlck.fsf@intel.com>
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

On Thu, 31 Oct 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Implement xelpdp_is_only_pipe_per_dbuf_bank() in a slightly
> more straightforward way.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Matter of taste, but at least this is less repetitive.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/d=
rm/i915/display/skl_watermark.c
> index 98f9e01b2a1c..d3bbf335c749 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -3256,19 +3256,19 @@ static bool xelpdp_is_only_pipe_per_dbuf_bank(enu=
m pipe pipe, u8 active_pipes)
>  {
>  	switch (pipe) {
>  	case PIPE_A:
> -		return !(active_pipes & BIT(PIPE_D));
>  	case PIPE_D:
> -		return !(active_pipes & BIT(PIPE_A));
> +		active_pipes &=3D BIT(PIPE_A) | BIT(PIPE_D);
> +		break;
>  	case PIPE_B:
> -		return !(active_pipes & BIT(PIPE_C));
>  	case PIPE_C:
> -		return !(active_pipes & BIT(PIPE_B));
> +		active_pipes &=3D BIT(PIPE_B) | BIT(PIPE_C);
> +		break;
>  	default: /* to suppress compiler warning */
>  		MISSING_CASE(pipe);
> -		break;
> +		return false;
>  	}
>=20=20
> -	return false;
> +	return is_power_of_2(active_pipes);
>  }
>=20=20
>  static u32 pipe_mbus_dbox_ctl(const struct intel_crtc *crtc,

--=20
Jani Nikula, Intel
