Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EFEBF126395
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2019 14:34:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2AD96EB79;
	Thu, 19 Dec 2019 13:34:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B9646EB79
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2019 13:34:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Dec 2019 05:34:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,332,1571727600"; d="scan'208";a="213257487"
Received: from irsmsx109.ger.corp.intel.com ([163.33.3.23])
 by fmsmga008.fm.intel.com with ESMTP; 19 Dec 2019 05:34:04 -0800
Received: from irsmsx102.ger.corp.intel.com ([169.254.2.130]) by
 IRSMSX109.ger.corp.intel.com ([169.254.13.207]) with mapi id 14.03.0439.000;
 Thu, 19 Dec 2019 13:34:04 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 09/15] drm/i915: Make sure Y slave planes
 get all the required state
Thread-Index: AQHVtb3fCV2bpeRL9UK69h4jNGrf96fBdniA
Date: Thu, 19 Dec 2019 13:34:03 +0000
Message-ID: <f8501efe6c3fc6cfd7aef8aba271fe15e063fd63.camel@intel.com>
References: <20191218161105.30638-1-imre.deak@intel.com>
 <20191218161105.30638-10-imre.deak@intel.com>
In-Reply-To: <20191218161105.30638-10-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.159]
Content-ID: <C5056A072D3B1845A98FB0BB6DE84368@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 09/15] drm/i915: Make sure Y slave planes
 get all the required state
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

On Wed, 2019-12-18 at 18:10 +0200, Imre Deak wrote:
> Y planes program the offset and stride of the AUX plane, so make sure
> we
> copy the required info for this into their plane state.
> =

> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Mika Kahola <mika.kahola@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index b4eb0d2147f5..e350f1d40b88 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -12179,7 +12179,8 @@ static int icl_check_nv12_planes(struct
> intel_crtc_state *crtc_state)
>  		/* Copy parameters to slave plane */
>  		linked_state->ctl =3D plane_state->ctl |
> PLANE_CTL_YUV420_Y_PLANE;
>  		linked_state->color_ctl =3D plane_state->color_ctl;
> -		linked_state->color_plane[0] =3D plane_state-
> >color_plane[0];
> +		memcpy(linked_state->color_plane, plane_state-
> >color_plane,
> +		       sizeof(linked_state->color_plane));
>  =

>  		intel_plane_copy_uapi_to_hw_state(linked_state,
> plane_state);
>  		linked_state->uapi.src =3D plane_state->uapi.src;
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
