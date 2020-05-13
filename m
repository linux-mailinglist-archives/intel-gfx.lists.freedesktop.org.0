Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 694301D156E
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2020 15:34:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC87F6EA28;
	Wed, 13 May 2020 13:34:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C36C6EA28
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 May 2020 13:34:23 +0000 (UTC)
IronPort-SDR: KhNdbYvlysbYRTHn0COSIYUeuMx1IWIsGMtPl4mdSoM5fYVx8gLZ/xZ3WgzaJ1sG8Ek7zc6mUM
 o/Jgrd9evecg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2020 06:34:23 -0700
IronPort-SDR: 2FcM8or3zCtngiyPoQqzavQHNHl8e6YgA8+uTA2f6uJwe8hsP8uywYBHjUIm6v1JzPJ+LOqbhb
 x3uOxBE0L9pg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,387,1583222400"; d="scan'208";a="371907372"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 13 May 2020 06:34:19 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 13 May 2020 16:34:18 +0300
Date: Wed, 13 May 2020 16:34:18 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20200513133418.GE6112@intel.com>
References: <20200513093816.11466-1-stanislav.lisovskiy@intel.com>
 <20200513093816.11466-4-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200513093816.11466-4-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v29 3/6] drm/i915: Make active_pipes check
 skl specific
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

On Wed, May 13, 2020 at 12:38:13PM +0300, Stanislav Lisovskiy wrote:
> Seems that only skl needs to have SAGV turned off
> for multipipe scenarios, so lets do it this way.

Commit msg still a bit misleading, but meh, pushed 1-3 anyway. Thanks.

> =

> If anything blows up - we can always revert this patch.
> =

> v2: Changed if condition to look better (Ville).
> =

> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_pm.c | 13 ++++++++-----
>  drivers/gpu/drm/i915/intel_pm.h |  3 ++-
>  2 files changed, 10 insertions(+), 6 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index 6a212d47aec8..de0f8cede59c 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
<snip>
> @@ -3901,7 +3904,7 @@ static int intel_compute_sagv_mask(struct intel_ato=
mic_state *state)
>  			return ret;
>  	}
>  =

> -	if (intel_can_enable_sagv(new_bw_state) !=3D intel_can_enable_sagv(old_=
bw_state)) {
> +	if (intel_can_enable_sagv(dev_priv, new_bw_state) !=3D intel_can_enable=
_sagv(dev_priv, old_bw_state)) {

I did wrap this line while applying since it was trivial and made
checkpatch happy.

I see one other valid checkpatch complaint in the report (some alignment
fail in one of the later patches). The wm debug >80col warnings we can't
really fix without some refactoring or making the code look evem uglier
so imo ignore those.

>  		ret =3D intel_atomic_serialize_global_state(&new_bw_state->base);
>  		if (ret)
>  			return ret;
> diff --git a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/i915/intel=
_pm.h
> index fd1dc422e6c5..614ac7f8d4cc 100644
> --- a/drivers/gpu/drm/i915/intel_pm.h
> +++ b/drivers/gpu/drm/i915/intel_pm.h
> @@ -42,7 +42,8 @@ void skl_pipe_wm_get_hw_state(struct intel_crtc *crtc,
>  			      struct skl_pipe_wm *out);
>  void g4x_wm_sanitize(struct drm_i915_private *dev_priv);
>  void vlv_wm_sanitize(struct drm_i915_private *dev_priv);
> -bool intel_can_enable_sagv(const struct intel_bw_state *bw_state);
> +bool intel_can_enable_sagv(struct drm_i915_private *dev_priv,
> +			   const struct intel_bw_state *bw_state);
>  int intel_enable_sagv(struct drm_i915_private *dev_priv);
>  int intel_disable_sagv(struct drm_i915_private *dev_priv);
>  void intel_sagv_pre_plane_update(struct intel_atomic_state *state);
> -- =

> 2.24.1.485.gad05a3d8e5

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
