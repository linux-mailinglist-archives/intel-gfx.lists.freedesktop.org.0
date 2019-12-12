Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 073B411D19F
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 16:58:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 557B46E1A2;
	Thu, 12 Dec 2019 15:58:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 426 seconds by postgrey-1.36 at gabe;
 Thu, 12 Dec 2019 15:58:01 UTC
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 652326E1A2
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 15:58:01 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Dec 2019 07:50:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,306,1571727600"; d="scan'208";a="216153760"
Received: from invictus.jf.intel.com (HELO InViCtUs) ([10.54.75.159])
 by orsmga006.jf.intel.com with ESMTP; 12 Dec 2019 07:50:54 -0800
Date: Thu, 12 Dec 2019 07:51:05 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20191212155104.GB21507@InViCtUs>
References: <20191126002635.5779-1-radhakrishna.sripada@intel.com>
 <20191126002635.5779-3-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191126002635.5779-3-radhakrishna.sripada@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v7 2/7] drm/i915: Use intel_tile_height()
 instead of re-implementing
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
Cc: ville.syrjala@intel.com, nanley.g.chery@intel.com,
 dhinakaran.pandiyan@intel.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Nov 25, 2019 at 04:26:30PM -0800, Radhakrishna Sripada wrote:
> From: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
> =

> intel_tile_dims() computes tile height using size and width, when there
> is already a function to do just that - intel_tile_height()
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> Signed-off-by: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 53dc310a5f6d..2a4593afbe86 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2017,7 +2017,7 @@ static void intel_tile_dims(const struct drm_frameb=
uffer *fb, int color_plane,
>  	unsigned int cpp =3D fb->format->cpp[color_plane];
>  =

>  	*tile_width =3D tile_width_bytes / cpp;
> -	*tile_height =3D intel_tile_size(to_i915(fb->dev)) / tile_width_bytes;
> +	*tile_height =3D intel_tile_height(fb, color_plane);
>  }
>  =

>  unsigned int
> -- =

> 2.20.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
