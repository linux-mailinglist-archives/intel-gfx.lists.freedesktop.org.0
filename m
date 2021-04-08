Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D3DE357FB2
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Apr 2021 11:46:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DC776EA4A;
	Thu,  8 Apr 2021 09:46:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 610036EA4A
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Apr 2021 09:45:58 +0000 (UTC)
IronPort-SDR: fJcFgisK4orXViV1jmaCTHFswVkKXXbW/YHygJmSmFo4GwGR8lTSIE5jarU/vClYo5bV32gc3J
 +E+sorYC6CIQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9947"; a="173583333"
X-IronPort-AV: E=Sophos;i="5.82,206,1613462400"; d="scan'208";a="173583333"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2021 02:45:57 -0700
IronPort-SDR: UigdVX/N05m7yt7W4YwlhEF3a9siLtZO3DtdQB8EiWx6OEPnqBb6nrrU2gSUO+kv3Hozr9jHm0
 B43285QvQsQw==
X-IronPort-AV: E=Sophos;i="5.82,206,1613462400"; d="scan'208";a="458756758"
Received: from unknown (HELO intel.com) ([10.237.72.91])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2021 02:45:55 -0700
Date: Thu, 8 Apr 2021 12:48:42 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20210408094842.GA14051@intel.com>
References: <20210327005945.4929-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210327005945.4929-1-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Don't zero out the Y plane's
 watermarks
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, Mar 27, 2021 at 02:59:45AM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Don't zero out the watermarks for the Y plane since we've already
> computed them when computing the UV plane's watermarks (since the
> UV plane always appears before ethe Y plane when iterating through
> the planes).
> =

> This leads to allocating no DDB for the Y plane since .min_ddb_alloc
> also gets zeroed. And that of course leads to underruns when scanning
> out planar formats.
> =

> We really need to re-enable the pre-merge pixel format tests or else
> I'll just keep breaking this stuff...

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> =

> Cc: stable@vger.kernel.org
> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Fixes: dbf71381d733 ("drm/i915: Nuke intel_atomic_crtc_state_for_each_pla=
ne_state() from skl+ wm code")
> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/intel_pm.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index b2aede2be89d..49c19acdb7c6 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -5511,12 +5511,12 @@ static int icl_build_plane_wm(struct intel_crtc_s=
tate *crtc_state,
>  	struct skl_plane_wm *wm =3D &crtc_state->wm.skl.raw.planes[plane_id];
>  	int ret;
>  =

> -	memset(wm, 0, sizeof(*wm));
> -
>  	/* Watermarks calculated in master */
>  	if (plane_state->planar_slave)
>  		return 0;
>  =

> +	memset(wm, 0, sizeof(*wm));
> +
>  	if (plane_state->planar_linked_plane) {
>  		const struct drm_framebuffer *fb =3D plane_state->hw.fb;
>  		enum plane_id y_plane_id =3D plane_state->planar_linked_plane->id;
> -- =

> 2.26.2
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
