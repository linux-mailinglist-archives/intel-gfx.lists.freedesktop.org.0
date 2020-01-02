Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87A7312E6EC
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jan 2020 14:48:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D86796E0EF;
	Thu,  2 Jan 2020 13:48:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF8F06E0EF
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jan 2020 13:48:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Jan 2020 05:48:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,387,1571727600"; d="scan'208";a="252258704"
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
 by fmsmga002.fm.intel.com with ESMTP; 02 Jan 2020 05:48:34 -0800
Received: from irsmsx155.ger.corp.intel.com (163.33.192.3) by
 IRSMSX102.ger.corp.intel.com (163.33.3.155) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 2 Jan 2020 13:48:33 +0000
Received: from irsmsx102.ger.corp.intel.com ([169.254.2.130]) by
 irsmsx155.ger.corp.intel.com ([169.254.14.75]) with mapi id 14.03.0439.000;
 Thu, 2 Jan 2020 13:48:33 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [PATCH 4/7] drm/i915: Make sure plane dims are correct for UV
 CCS planes
Thread-Index: AQHVwDNv7z3FYpc1I0WmG6WkTxRn1afXZjyA
Date: Thu, 2 Jan 2020 13:48:32 +0000
Message-ID: <5f9cdacb34bab6ce32653732c045b4ade7228231.camel@intel.com>
References: <20191231233756.18753-1-imre.deak@intel.com>
 <20191231233756.18753-5-imre.deak@intel.com>
In-Reply-To: <20191231233756.18753-5-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.159]
Content-ID: <D246B7271CFABC43B914689B730C3A91@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 4/7] drm/i915: Make sure plane dims are
 correct for UV CCS planes
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
Cc: "Pandiyan, Dhinakaran" <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 2020-01-01 at 01:37 +0200, Imre Deak wrote:
> As intel_fb_plane_get_subsampling() returns the subsampling factor
> wrt.
> its main plane, for a CCS plane we need to apply both the main and
> the
> CCS plane's subsampling factor on the FB's dimensions to get the CCS
> plane's dimensions.
> =

> Cc: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
> Cc: Mika Kahola <mika.kahola@intel.com>
> Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Mika Kahola <mika.kahola@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 2c2450d3469b..d5128e900660 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2913,11 +2913,15 @@ intel_fb_check_ccs_xy(struct drm_framebuffer
> *fb, int ccs_plane, int x, int y)
>  static void
>  intel_fb_plane_dims(int *w, int *h, struct drm_framebuffer *fb, int
> color_plane)
>  {
> +	int main_plane =3D is_ccs_plane(fb, color_plane) ?
> +			 ccs_to_main_plane(fb, color_plane) : 0;
> +	int main_hsub, main_vsub;
>  	int hsub, vsub;
>  =

> +	intel_fb_plane_get_subsampling(&main_hsub, &main_vsub, fb,
> main_plane);
>  	intel_fb_plane_get_subsampling(&hsub, &vsub, fb, color_plane);
> -	*w =3D fb->width / hsub;
> -	*h =3D fb->height / vsub;
> +	*w =3D fb->width / main_hsub / hsub;
> +	*h =3D fb->height / main_vsub / vsub;
>  }
>  =

>  /*
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
