Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 87673338C6E
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Mar 2021 13:12:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 467056F5E9;
	Fri, 12 Mar 2021 12:12:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF0026F5E9
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Mar 2021 12:12:04 +0000 (UTC)
IronPort-SDR: 0aTgFRSO/UtDGs5r3KrafkyvO4j+T2gTjvXLhN3L5+KsvFcoawt+52EH29L17L+tRIFltww1BH
 VibS0yjxyMTA==
X-IronPort-AV: E=McAfee;i="6000,8403,9920"; a="168096664"
X-IronPort-AV: E=Sophos;i="5.81,243,1610438400"; d="scan'208";a="168096664"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2021 04:12:04 -0800
IronPort-SDR: 0uskIaBRDdwhcZ2zLLW9tPgTeJUHJS9QWyErmkJl0Inuu1f787U7+xb/inASYzfKbQRsJswxC7
 q8mAJVRCzLNg==
X-IronPort-AV: E=Sophos;i="5.81,243,1610438400"; d="scan'208";a="600579950"
Received: from unknown (HELO intel.com) ([10.237.72.91])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2021 04:12:03 -0800
Date: Fri, 12 Mar 2021 14:13:58 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20210312121358.GB12252@intel.com>
References: <20210305153610.12177-1-ville.syrjala@linux.intel.com>
 <20210305153610.12177-4-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210305153610.12177-4-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 3/6] drm/i915: Check SAGV wm min_ddb_alloc
 rather than plane_res_b
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

On Fri, Mar 05, 2021 at 05:36:07PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> For non-transition watermarks we are supposed to check min_ddb_alloc
> rather than plane_res_b when determining if we have enough DDB space
> for it. A bit too much copy pasta made me check the wrong thing.
> =

> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Fixes: df4a50a35e2c ("drm/i915: Zero out SAGV wm when we don't have enoug=
h DDB for it")
> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/intel_pm.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index b6e34d1701a0..36601e0a5073 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -4989,7 +4989,7 @@ skl_allocate_plane_ddb(struct intel_atomic_state *s=
tate,
>  		if (wm->trans_wm.plane_res_b >=3D total[plane_id])
>  			memset(&wm->trans_wm, 0, sizeof(wm->trans_wm));
>  =

> -		if (wm->sagv.wm0.plane_res_b >=3D total[plane_id])
> +		if (wm->sagv.wm0.min_ddb_alloc > total[plane_id])
>  			memset(&wm->sagv.wm0, 0, sizeof(wm->sagv.wm0));
>  =

>  		if (wm->sagv.trans_wm.plane_res_b >=3D total[plane_id])
> -- =

> 2.26.2
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
