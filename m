Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABFAC12E5D8
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jan 2020 12:50:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D8A189780;
	Thu,  2 Jan 2020 11:50:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DAD189780
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jan 2020 11:50:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Jan 2020 03:50:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,386,1571727600"; d="scan'208";a="369308508"
Received: from irsmsx108.ger.corp.intel.com ([163.33.3.3])
 by orsmga004.jf.intel.com with ESMTP; 02 Jan 2020 03:50:35 -0800
Received: from irsmsx102.ger.corp.intel.com ([169.254.2.130]) by
 IRSMSX108.ger.corp.intel.com ([169.254.11.217]) with mapi id 14.03.0439.000;
 Thu, 2 Jan 2020 11:50:34 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [PATCH 3/7] drm/i915: Add debug message for FB
 plane[0].offset!=0 error
Thread-Index: AQHVwDNtjrx/8tORPEqaT/yH55QAfKfXRUaA
Date: Thu, 2 Jan 2020 11:50:33 +0000
Message-ID: <6aee4401134fd871f86b9d5e954a17b36a3ec1cc.camel@intel.com>
References: <20191231233756.18753-1-imre.deak@intel.com>
 <20191231233756.18753-4-imre.deak@intel.com>
In-Reply-To: <20191231233756.18753-4-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.159]
Content-ID: <B4266DC009E703459E11C5B5DBDBFFDC@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/7] drm/i915: Add debug message for FB
 plane[0].offset!=0 error
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
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 2020-01-01 at 01:37 +0200, Imre Deak wrote:
> Print a debug message if the FB plane[0] offset is not 0 as expected,
> to
> help understainding an add FB IOCTL fail.
> =

> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Mika Kahola <mika.kahola@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Mika Kahola <mika.kahola@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index bbc9cf288067..2c2450d3469b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -16912,8 +16912,11 @@ static int intel_framebuffer_init(struct
> intel_framebuffer *intel_fb,
>  	}
>  =

>  	/* FIXME need to adjust LINOFF/TILEOFF accordingly. */
> -	if (mode_cmd->offsets[0] !=3D 0)
> +	if (mode_cmd->offsets[0] !=3D 0) {
> +		DRM_DEBUG_KMS("plane 0 offset (0x%08x) must be 0\n",
> +			      mode_cmd->offsets[0]);
>  		goto err;
> +	}
>  =

>  	drm_helper_mode_fill_fb_struct(&dev_priv->drm, fb, mode_cmd);
>  =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
