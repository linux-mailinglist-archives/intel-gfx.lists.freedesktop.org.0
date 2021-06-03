Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF0C239ADFE
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Jun 2021 00:28:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6095F6F539;
	Thu,  3 Jun 2021 22:28:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 247EC6F539
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Jun 2021 22:28:01 +0000 (UTC)
IronPort-SDR: ZwZ2Gx+Fe99Qmg+ZNwDQ1MeiXjN13bmS5R1y9mNDZ+9jz3uQ+ealHihehl60cnwdrQnDJvohG4
 DXHu8ot/O6dQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10004"; a="265334683"
X-IronPort-AV: E=Sophos;i="5.83,246,1616482800"; d="scan'208";a="265334683"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2021 15:27:59 -0700
IronPort-SDR: g4mEwTJchozxTK3BufONWwZxHasiZDS7zRNzMLjOu3DAVN3uLM4RC8gUlB+W98pXsxe6+zEHbq
 ADrJWsToAA5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,246,1616482800"; d="scan'208";a="480401132"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga001.jf.intel.com with SMTP; 03 Jun 2021 15:27:57 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 04 Jun 2021 01:27:56 +0300
Date: Fri, 4 Jun 2021 01:27:56 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <YLlXbF2RYvoxclIO@intel.com>
References: <20210603215338.13804-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210603215338.13804-1-manasi.d.navare@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Initialize the mbus_offset to fix
 Klockwork issue
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

On Thu, Jun 03, 2021 at 02:53:38PM -0700, Manasi Navare wrote:
> Static analysis identified an issue in skl_crtc_allocate_ddb where
> mbus_offset may be used uninitialized.
> This patch fixes it.
> =

> Fixes: 835c176cb1c4 ("drm/i915: Introduce MBUS relative dbuf offsets")
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/intel_pm.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index 00f3dead20ad..a385b8b7414f 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -4163,7 +4163,7 @@ skl_crtc_allocate_ddb(struct intel_atomic_state *st=
ate, struct intel_crtc *crtc)
>  	struct intel_crtc_state *crtc_state;
>  	struct skl_ddb_entry ddb_slices;
>  	enum pipe pipe =3D crtc->pipe;
> -	unsigned int mbus_offset;
> +	unsigned int mbus_offset =3D 0;
>  	u32 ddb_range_size;
>  	u32 dbuf_slice_mask;
>  	u32 start, end;
> -- =

> 2.19.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
