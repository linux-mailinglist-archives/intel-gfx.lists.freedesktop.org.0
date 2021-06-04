Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6D7839B932
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Jun 2021 14:50:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DB966E3E5;
	Fri,  4 Jun 2021 12:50:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5699F6E418
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Jun 2021 12:50:04 +0000 (UTC)
IronPort-SDR: e6j4OAuRNLavthCWErE4oFVeOgzDvrGucs7uVz/htWo1/LfnPpiAQvZmy/yd7YASv+yQzQUjvz
 NG+G9aoRnZDw==
X-IronPort-AV: E=McAfee;i="6200,9189,10004"; a="225597648"
X-IronPort-AV: E=Sophos;i="5.83,248,1616482800"; d="scan'208";a="225597648"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 05:50:03 -0700
IronPort-SDR: 3cW6TE1KazV51Z/LM3f5eg6tl77vprcPpzrvUyMXh4LaPmLB4lXQdgyTlrp4DbEArthryOxPC+
 USXjuyXrGigA==
X-IronPort-AV: E=Sophos;i="5.83,248,1616482800"; d="scan'208";a="446677614"
Received: from ccbilbre-mobl2.amr.corp.intel.com (HELO intel.com)
 ([10.254.2.203])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 05:50:02 -0700
Date: Fri, 4 Jun 2021 08:50:00 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <YLoheJuGxUjOgHd1@intel.com>
References: <20210603220754.13920-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210603220754.13920-1-manasi.d.navare@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Initialize the mbus_offset to
 fix static analysis issue
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

On Thu, Jun 03, 2021 at 03:07:54PM -0700, Manasi Navare wrote:
> Static analysis identified an issue in skl_crtc_allocate_ddb where
> mbus_offset may be used uninitialized.
> This patch fixes it.

I'm sorry, but I really cannot see what this tool is seeing...
I even tried to look to our internal branch to see if it was an issue
there.
But I'm failing to see how it is possible...

> =

> Fixes: 835c176cb1c4 ("drm/i915: Introduce MBUS relative dbuf offsets")
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
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
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
