Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94C4318A0D9
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2020 17:48:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67EC86E92B;
	Wed, 18 Mar 2020 16:48:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 424636E927
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2020 16:48:31 +0000 (UTC)
IronPort-SDR: PKvZl6mUNniaVTE9W8GJFuw459ZZfw1At1P3uJH+8cb2VLMlFkqu+epdr2fYhICEjS7gvpS1fV
 0YS2PElZZv8w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2020 09:48:30 -0700
IronPort-SDR: b3oo1Eh0eEdniRCU8HYQuo7xfnLQGd7BSEsK5FeSMQS8FwU245mOSz9wcTHMZIEhqT4G9wkTul
 JsUFyJeq3BEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,568,1574150400"; d="scan'208";a="324242285"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 18 Mar 2020 09:48:28 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 18 Mar 2020 18:48:27 +0200
Date: Wed, 18 Mar 2020 18:48:27 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20200318164827.GC13686@intel.com>
References: <20200311083632.3249-1-anshuman.gupta@intel.com>
 <20200313073917.aeki7lm6zupx7y26@ldmartin-desk1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200313073917.aeki7lm6zupx7y26@ldmartin-desk1>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Enable non-contiguous pipe fusing
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

On Fri, Mar 13, 2020 at 12:39:17AM -0700, Lucas De Marchi wrote:
> On Wed, Mar 11, 2020 at 02:06:32PM +0530, Anshuman Gupta wrote:
> >Allow 3-display pipes SKU system with any combination
> >in INTEL_INFO pipe mask.
> >B.Spec:50075
> >
> >changes since RFC:
> >- using intel_pipe_mask_is_valid() function to check integrity of
> >  pipe_mask. [Ville]
> >v2:
> >- simplify condition in intel_pipe_mask_is_valid(). [Ville]
> >v3:
> >- removed non-contiguous pipe fusing check. [Lucas]
> =

> I'd also say in the commit message that the support for non-contiguous
> pipe fusing is *already* supported in the driver. So this check here
> doesn't make sense anymore and since it's an unlike condition we
> can just stop checking.

BTW I think we still have those crtc index=3D=3Dpipe asserts in the code
somewhere. Now that all the (known) assumptions have been fixed we can
remove the WARNs.

> =

> Aside from commit message update,
> =

> Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
> =

> Lucas De Marchi
> =

> >
> >Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> >Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> >Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> >---
> > drivers/gpu/drm/i915/intel_device_info.c | 12 +-----------
> > 1 file changed, 1 insertion(+), 11 deletions(-)
> >
> >diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/=
i915/intel_device_info.c
> >index d7fe12734db8..9ff89e142ff1 100644
> >--- a/drivers/gpu/drm/i915/intel_device_info.c
> >+++ b/drivers/gpu/drm/i915/intel_device_info.c
> >@@ -998,17 +998,7 @@ void intel_device_info_runtime_init(struct drm_i915=
_private *dev_priv)
> > 		    (dfsm & TGL_DFSM_PIPE_D_DISABLE))
> > 			enabled_mask &=3D ~BIT(PIPE_D);
> >
> >-		/*
> >-		 * At least one pipe should be enabled and if there are
> >-		 * disabled pipes, they should be the last ones, with no holes
> >-		 * in the mask.
> >-		 */
> >-		if (enabled_mask =3D=3D 0 || !is_power_of_2(enabled_mask + 1))
> >-			drm_err(&dev_priv->drm,
> >-				"invalid pipe fuse configuration: enabled_mask=3D0x%x\n",
> >-				enabled_mask);
> >-		else
> >-			info->pipe_mask =3D enabled_mask;
> >+		info->pipe_mask =3D enabled_mask;
> >
> > 		if (dfsm & SKL_DFSM_DISPLAY_HDCP_DISABLE)
> > 			info->display.has_hdcp =3D 0;
> >-- =

> >2.25.1
> >

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
