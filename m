Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 191DB1D63BD
	for <lists+intel-gfx@lfdr.de>; Sat, 16 May 2020 21:15:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEFC56E249;
	Sat, 16 May 2020 19:15:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E7076E249
 for <intel-gfx@lists.freedesktop.org>; Sat, 16 May 2020 19:15:52 +0000 (UTC)
IronPort-SDR: dV44Rm4sAWI3W5TGzsaMx7sel1g51BIdqe8j5MUznVwAZeHYWmT9YMWxxAYn2cGvfwEI7SXYxu
 BCwQJ83WXdjQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2020 12:15:52 -0700
IronPort-SDR: plodt+eexWzmX6KkmZ9Z+0lQo73r0RH+go8RDMm/282x3BaqcDq786xl8xPYuYxkxDHpUXrTws
 1FKwZ/g0MI3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,400,1583222400"; d="scan'208";a="307725046"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 16 May 2020 12:15:49 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 16 May 2020 22:15:49 +0300
Date: Sat, 16 May 2020 22:15:49 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200516191549.GQ6112@intel.com>
References: <20200516190940.12675-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200516190940.12675-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Return error from dbuf
 allocation failure
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

On Sat, May 16, 2020 at 08:09:40PM +0100, Chris Wilson wrote:
> drivers/gpu/drm/i915/intel_pm.c:5920 skl_ddb_add_affected_pipes() error: =
uninitialized symbol 'ret'.
> =

> Fixes: 3cf43cdc63fb ("drm/i915: Introduce proper dbuf state")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/intel_pm.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index a21e36ed1a77..762a5184fc69 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -5917,7 +5917,7 @@ skl_ddb_add_affected_pipes(struct intel_atomic_stat=
e *state)
>  =

>  		new_dbuf_state =3D intel_atomic_get_dbuf_state(state);
>  		if (IS_ERR(new_dbuf_state))
> -			return ret;
> +			return PTR_ERR(new_dbuf_state);

Doh.

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

>  =

>  		old_dbuf_state =3D intel_atomic_get_old_dbuf_state(state);
>  =

> -- =

> 2.20.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
