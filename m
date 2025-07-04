Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B1A0AF9203
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Jul 2025 14:01:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A26C610EA02;
	Fri,  4 Jul 2025 12:01:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="azR+ZEbp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44D2810EA02
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Jul 2025 12:01:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751630469; x=1783166469;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=cdCBIlTPTiqZQ+Ld5WEeBeOSkRTA3smJrOWUJNGKVXM=;
 b=azR+ZEbp+UfVN6esnCM+Ar834r+Kym2lOWwaeeRMR2Led40cSZwLhjjs
 KpgOaUTGOkeINaNcAGAZSDEGhNe/DGU2iWbjPv1zfKgl/Xi+ZeByRTcwc
 cYeRihtjW+Xy6niMooXR4v5baBY9VGKxutYT3Yc656TW53n7QGPkS7ktk
 gzkJYefupmbOLYjE3NC6amKaaNFxncjrx7RgfKZg2NyaoZL49kLJJBMa9
 TOqVuwfWjMIs7HHOcfOCCKrqozKSarAWPQVJWJJxoTqCa+D1Aa+VQhe79
 1281GFlk2rbMnTunly3kBsFnW6WJnh2dqzszurRNM9d2qQpBJopgAOKgC A==;
X-CSE-ConnectionGUID: pXseMX0NSB6hx47zu1Ot7Q==
X-CSE-MsgGUID: 4X6KPH1zQC62tW6B+tOwUQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11483"; a="65313953"
X-IronPort-AV: E=Sophos;i="6.16,287,1744095600"; d="scan'208";a="65313953"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2025 05:01:05 -0700
X-CSE-ConnectionGUID: LBcHGbL1RQa2JxfS5h7SgQ==
X-CSE-MsgGUID: YUX0awGmTBeZz+h/4aHYLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,287,1744095600"; d="scan'208";a="154039057"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.102])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2025 05:00:58 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Aakash Deep Sarkar <aakash.deep.sarkar@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: jeevaka.badrappan@intel.com, Aakash Deep Sarkar
 <aakash.deep.sarkar@intel.com>, Ville =?utf-8?B?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Jouni =?utf-8?Q?H=C3=B6gander?=
 <jouni.hogander@intel.com>, Alex Deucher <alexander.deucher@amd.com>,
 Christian =?utf-8?Q?K=C3=B6nig?= <christian.koenig@amd.com>, Lucas Stach
 <l.stach@pengutronix.de>, Rob Clark <robin.clark@oss.qualcomm.com>,
 Thierry Reding <thierry.reding@gmail.com>, Julia Lawall
 <julia.lawall@inria.fr>, Dan Carpenter <dan.carpenter@linaro.org>
Subject: Re: [PATCH] drm/i915/display: Change ret value type from int to long
In-Reply-To: <20250704105600.1937682-1-aakash.deep.sarkar@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250704105600.1937682-1-aakash.deep.sarkar@intel.com>
Date: Fri, 04 Jul 2025 15:00:55 +0300
Message-ID: <3b85826c1b0b03ba922c4c948d98d24543bcec67@intel.com>
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

On Fri, 04 Jul 2025, Aakash Deep Sarkar <aakash.deep.sarkar@intel.com> wrot=
e:
> dma_fence_wait_timeout returns a long type but the driver is
> only using the lower 32 bits of the retval and discarding the
> upper 32 bits.
>
> This is particularly problematic if there are already signalled
> or stub fences on some of the hw planes. In this case the
> dma_fence_wait_timeout function will immediately return with
> timeout value MAX_SCHEDULE_TIMEOUT (0x7fffffffffffffff) since
> the fence is already signalled. If the driver only uses the lower
> 32 bits of this return value then it'll interpret it as an error
> code (0xFFFFFFFF or (-1)) and skip the wait on the remaining fences.
>
> This issue was first observed with the Android compositor where
> the GPU composited layer was not properly waited on when there
> were stub fences in other overlay planes resulting in significant
> visual artifacts.

Thanks for the patch, good catch!

> Test: No graphical artifacts with shadertoy

We've never used this commit trailer before, please let's not start now.

The subject should plainly state the "what", and the commit message
should answer the "why". You do have that here, but I think the subject
is still a bit too much nuts and bolts.

For example,

	drm/i915/display: Fix dma_fence_wait_timeout() return value handling

would state the "what" in *much* more helpful terms for anyone looking
at git logs.

Presumably this has been an error for some time. You should do a little
bit of git blame on the offending lines. It'll find commit d59cf7bb73f3
("drm/i915/display: Use dma_fence interfaces instead of i915_sw_fence").

Based on that, we should add:

Fixes: d59cf7bb73f3 ("drm/i915/display: Use dma_fence interfaces instead of=
 i915_sw_fence")
Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Jouni H=C3=B6gander <jouni.hogander@intel.com>
Cc: <stable@vger.kernel.org> # v6.8+

Then it occurs to me this looks like a common mistake to make. A little
bit of git grep on dma_fence_wait_timeout() quickly finds multiple
similar mistakes in drm, at least amdgpu, etnaviv, msm, and tegra. Cc
some maintainers FYI. This class of bugs could cause issues elsewhere.

Let's also Cc Julia and Dan in case they have ideas to improve static
analysis to catch this class of bugs. Or maybe one exists already, but
we're just not running them!

Finally, for the actual change,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> Signed-off-by: Aakash Deep Sarkar <aakash.deep.sarkar@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 456fc4b04cda..7035c1fc9033 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7092,7 +7092,8 @@ static void intel_atomic_commit_fence_wait(struct i=
ntel_atomic_state *intel_stat
>  	struct drm_i915_private *i915 =3D to_i915(intel_state->base.dev);
>  	struct drm_plane *plane;
>  	struct drm_plane_state *new_plane_state;
> -	int ret, i;
> +	long ret;
> +	int i;
>=20=20
>  	for_each_new_plane_in_state(&intel_state->base, plane, new_plane_state,=
 i) {
>  		if (new_plane_state->fence) {

--=20
Jani Nikula, Intel
