Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C1813A487E
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Jun 2021 20:19:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 248326F3B3;
	Fri, 11 Jun 2021 18:19:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C7486F3B3
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Jun 2021 18:19:22 +0000 (UTC)
IronPort-SDR: /JZSmRwWnb9b8xDdjFTWAV5kZ63t2aUTJivUJOOhcBRuUIidquzxlgaff65DY320n6Ll7bGCNa
 P5yEI/NKHnkQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10012"; a="227009149"
X-IronPort-AV: E=Sophos;i="5.83,267,1616482800"; d="scan'208";a="227009149"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2021 11:19:21 -0700
IronPort-SDR: dLnDLPx6cSlQnrC8TB/B6hlrkKc5eY+MNm+nNGtZxhBZM5mcQOdYlWp2v6lNilyMBbblwJcwtd
 8nmb+YMxD7kg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,267,1616482800"; d="scan'208";a="450842621"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 11 Jun 2021 11:19:17 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 11 Jun 2021 21:19:16 +0300
Date: Fri, 11 Jun 2021 21:19:16 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <YMOpJGGDyXPLWYF2@intel.com>
References: <20210610194527.84997-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210610194527.84997-1-jose.souza@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] Revert "drm/i915/display: Drop FIXME about
 turn off infoframes"
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jun 10, 2021 at 12:45:27PM -0700, Jos=E9 Roberto de Souza wrote:
> Looks this FIXME is still valid as we need a way to tell LSPCON to
> stop sending infoframes, so reverting it.
> =

> This reverts commit 3f409e4cd579b287a6c41d017e62c392f7997193.
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 1 +
>  1 file changed, 1 insertion(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 390869bd6b633..0b7fef527e202 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -2810,6 +2810,7 @@ static void intel_ddi_pre_enable(struct intel_atomi=
c_state *state,
>  					conn_state);
>  =

>  		/* FIXME precompute everything properly */
> +		/* FIXME how do we turn infoframes off again? */
>  		if (dig_port->lspcon.active && dig_port->dp.has_hdmi_sink)
>  			dig_port->set_infoframes(encoder,
>  						 crtc_state->has_infoframe,
> -- =

> 2.32.0

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
