Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 482E614EC2D
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 13:03:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DF336FB1D;
	Fri, 31 Jan 2020 12:03:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C5536FB1D
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 12:03:33 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jan 2020 04:03:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,385,1574150400"; d="scan'208";a="224431536"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 31 Jan 2020 04:03:30 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 31 Jan 2020 14:03:29 +0200
Date: Fri, 31 Jan 2020 14:03:29 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Animesh Manna <animesh.manna@intel.com>
Message-ID: <20200131120329.GO13686@intel.com>
References: <20200131114258.22306-1-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200131114258.22306-1-animesh.manna@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsb: Enable lmem for dsb
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
Cc: intel-gfx@lists.freedesktop.org, Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 31, 2020 at 05:12:58PM +0530, Animesh Manna wrote:
> If lmem is supported DSB should use local memeory instead
> of system memory. Using local memory surely bring performance
> improvement as local memory is close to gpu. Also want to avoid
> multiple gpu using system memory.
> =

> Used LMEM api to create gem object needed for DSB command buffer.

The whole point of the dsb is to avoid doing mmio.a Now you're
replacing the nice dma with mmio again. Granted lmem is probably
wc so maybe not as slow as direct mmio register access, and also
we can do this ahead of time so not as time critical as direct
mmio during the the vblank.

> =

> v1: Initial patch.
> =

> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Ramalingam C <ramalingam.c@intel.com>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dsb.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i=
915/display/intel_dsb.c
> index 9dd18144a664..d67b6a764ba0 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> @@ -6,6 +6,7 @@
>  =

>  #include "i915_drv.h"
>  #include "intel_display_types.h"
> +#include "gem/i915_gem_lmem.h"
>  =

>  #define DSB_BUF_SIZE    (2 * PAGE_SIZE)
>  =

> @@ -113,7 +114,11 @@ intel_dsb_get(struct intel_crtc *crtc)
>  =

>  	wakeref =3D intel_runtime_pm_get(&i915->runtime_pm);
>  =

> -	obj =3D i915_gem_object_create_internal(i915, DSB_BUF_SIZE);
> +	if (HAS_LMEM(i915))
> +		obj =3D i915_gem_object_create_lmem(i915, DSB_BUF_SIZE, 0);
> +	else
> +		obj =3D i915_gem_object_create_internal(i915, DSB_BUF_SIZE);
> +
>  	if (IS_ERR(obj)) {
>  		DRM_ERROR("Gem object creation failed\n");
>  		goto out;
> -- =

> 2.24.0
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
