Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F0AE348B98
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Mar 2021 09:32:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D0AF6EB73;
	Thu, 25 Mar 2021 08:32:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 324036EB73
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Mar 2021 08:32:54 +0000 (UTC)
IronPort-SDR: nUjWLB6BPj5erI/33+MPQJGF4nJ9fiBSADypHPp60cTlUuysoGQ9qKt+jPwCyu20oQUCLJygBL
 hzW5c1aaphaw==
X-IronPort-AV: E=McAfee;i="6000,8403,9933"; a="254874355"
X-IronPort-AV: E=Sophos;i="5.81,277,1610438400"; d="scan'208";a="254874355"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 01:32:51 -0700
IronPort-SDR: lDWg+7bLxfsNyWMlwCAznviUFfpXfWDdz1tX5UzDpLFOITvDEAxCgl9oHm6KSvgu2iq32iJlOw
 pGqKDf+I8kGg==
X-IronPort-AV: E=Sophos;i="5.81,277,1610438400"; d="scan'208";a="514525546"
Received: from unknown (HELO intel.com) ([10.237.72.91])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 01:32:50 -0700
Date: Thu, 25 Mar 2021 10:35:24 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20210325083524.GA27205@intel.com>
References: <20210325004415.17432-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210325004415.17432-1-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Fix transposed arguments to
 skl_plane_wm_level()
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

On Thu, Mar 25, 2021 at 02:44:14AM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Accidentally transposed the arguments to skl_plane_wm_level()
> which is causing us to mistakenly think that the plane watermarks
> have/have not changed when the opposite may be true. Swap the
> arguments so this actually works.
> =

> The other uses of this look OK.

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> =

> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Fixes: 2871b2fde449 ("drm/i915: Fix TGL+ plane SAGV watermark programming=
")
> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/intel_pm.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index 820f850d5cbb..b2aede2be89d 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -6017,8 +6017,8 @@ static bool skl_plane_selected_wm_equals(struct int=
el_plane *plane,
>  		 * use it. It only gets used for calculating the required
>  		 * ddb allocation.
>  		 */
> -		if (!skl_wm_level_equals(skl_plane_wm_level(old_pipe_wm, level, plane-=
>id),
> -					 skl_plane_wm_level(new_pipe_wm, level, plane->id)))
> +		if (!skl_wm_level_equals(skl_plane_wm_level(old_pipe_wm, plane->id, le=
vel),
> +					 skl_plane_wm_level(new_pipe_wm, plane->id, level)))
>  			return false;
>  	}
>  =

> -- =

> 2.26.2
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
