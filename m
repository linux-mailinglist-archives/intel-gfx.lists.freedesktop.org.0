Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E05337F6C4
	for <lists+intel-gfx@lfdr.de>; Thu, 13 May 2021 13:31:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B68D36ECF8;
	Thu, 13 May 2021 11:31:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E6C66ECF8
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 May 2021 11:30:59 +0000 (UTC)
IronPort-SDR: SwZPwrEec7dhDHWjNz49rwgLklDgg29AgENHKz/1Nr98Ta/GtbQXrrWlc2CU+fFAOmbxuqVOkW
 jSGanyj1HGuQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9982"; a="199979670"
X-IronPort-AV: E=Sophos;i="5.82,296,1613462400"; d="scan'208";a="199979670"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2021 04:30:54 -0700
IronPort-SDR: 57EGYOVmtatTrVf3nn0At3TTZxLYuO4ONAUJex3XCKH2SaqMutNDAesQfTx1ZJ9ZjYD2TzfAaS
 8I1Xy7EavGuA==
X-IronPort-AV: E=Sophos;i="5.82,296,1613462400"; d="scan'208";a="393169619"
Received: from jkrzyszt-mobl1.ger.corp.intel.com ([10.213.18.198])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2021 04:30:53 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: intel-gfx@lists.freedesktop.org, Jani Nikula <jani.nikula@linux.intel.com>
Date: Thu, 13 May 2021 13:30:50 +0200
Message-ID: <3536600.WbyNdk4fJJ@jkrzyszt-mobl1.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <87zgxbzpiu.fsf@intel.com>
References: <20210429134450.302912-1-janusz.krzysztofik@linux.intel.com>
 <87zgxbzpiu.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix wrong name announced on FB
 driver switching
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jani,

On Mon, 3 May 2021 19:38:17 CEST Jani Nikula wrote:
> On Thu, 29 Apr 2021, Janusz Krzysztofik <janusz.krzysztofik@linux.intel.c=
om> =

wrote:
> > Commit 7a0f9ef9703d ("drm/i915: Use drm_fb_helper_fill_info")
> > effectively changed our FB driver name from "inteldrmfb" to
> > "i915drmfb".  However, we are still using the old name when kicking out
> > a firmware fbdev driver potentially bound to our device.  Use the new
> > name to avoid confusion.
> >
> > Note: since the new name is assigned by a DRM fbdev helper called at
> > the DRM driver registration time, that name is not available when we
> > kick the other driver out early, hence a hardcoded name must be used
> > unless the DRM layer exposes a macro for converting a DRM driver name
> > to its associated fbdev driver name.
> >
> > Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> =

> LGTM, Daniel?
> =

> Reviewed-by: Jani Nikula <jani.nikula@intel.com>

Thanks for review.  What are next steps?  Please note I have no push =

permissions.

Thanks,
Janusz

> =

> $ dim fixes 7a0f9ef9703d
> Fixes: 7a0f9ef9703d ("drm/i915: Use drm_fb_helper_fill_info")
> Cc: Noralf Tr=F8nnes <noralf@tronnes.org>
> Cc: Alex Deucher <alexander.deucher@amd.com>
> Cc: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Cc: <stable@vger.kernel.org> # v5.2+
> =

> =

> > ---
> >  drivers/gpu/drm/i915/i915_drv.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/
i915_drv.c
> > index 785dcf20c77b..46082490dc9a 100644
> > --- a/drivers/gpu/drm/i915/i915_drv.c
> > +++ b/drivers/gpu/drm/i915/i915_drv.c
> > @@ -554,7 +554,7 @@ static int i915_driver_hw_probe(struct =

drm_i915_private *dev_priv)
> >  	if (ret)
> >  		goto err_perf;
> >  =

> > -	ret =3D drm_aperture_remove_conflicting_pci_framebuffers(pdev, =

"inteldrmfb");
> > +	ret =3D drm_aperture_remove_conflicting_pci_framebuffers(pdev, =

"i915drmfb");
> >  	if (ret)
> >  		goto err_ggtt;
> =

> =





_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
