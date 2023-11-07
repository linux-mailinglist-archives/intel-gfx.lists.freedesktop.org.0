Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 00C877E4BFF
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Nov 2023 23:45:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A99D10E163;
	Tue,  7 Nov 2023 22:45:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16D0610E163
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Nov 2023 22:45:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1699397150;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=KTW/gjtz3kfXJfxxJzIEAwW2mqIjEAEJbwf/0sjFBJk=;
 b=YjHr4l3qoTNCxXmocEWA2EgXwd5XVtzMfxq65QEU72734tiJs3rurQcEUioutZqPjxPxXz
 aaPif4ypz9QjQuLU+1ZnAuU9wtJMsfXaBW1SxHoKQx9PQM8GDeOqrJcCRSMKwYigqgCrQT
 0Eouv/uIJTf9JCTy/OYFejQeqXv2rpk=
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-492-kcK5s5KGMwaGnjy4nIeeXg-1; Tue, 07 Nov 2023 17:45:49 -0500
X-MC-Unique: kcK5s5KGMwaGnjy4nIeeXg-1
Received: by mail-qt1-f199.google.com with SMTP id
 d75a77b69052e-41e3e4aa311so70908941cf.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 07 Nov 2023 14:45:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1699397148; x=1700001948;
 h=mime-version:user-agent:content-transfer-encoding:organization
 :references:in-reply-to:date:cc:to:from:subject:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=cC+j65i92xte5KP+uJOM5YBX1LNUHfo9NIuFcFEMnbU=;
 b=hJEMMFFv7qHLXq48zkd4OVoiH7Ch+Z1Vkklja+6oOSOHK5dN6GGAn1fpU4WP6AKHB9
 /yNkTCrVKZlszPZ4z0IpQY6DFSfIzrATQIHaOpY66hYhi/ZQJKE4pKvPjNELuTHsD9/Y
 9+mCjtkfeD46mFYsJo7M3O6V3BmZpwtUPtsnTDVC5xSATq++6Nc1IzYY23C6wydrsEWd
 GDlVO4/Me+HJNVOqIvSn108d/h39FgquUkr97zqESmjdXH4us5/wjghzCBpO92+3uAhP
 iB/jjnuBQixVHKd+hCbaN0JpKBBTgqTVj6QLA3irx9RqlYkNpQRu8sdXqW+czrHoX2/i
 jGLA==
X-Gm-Message-State: AOJu0YxCSySDipwzN9WoGc7dz+T8jzLY8Ra8eCXICYy9/n6RJr46QK5F
 TV3/MMXOAnC6IEW21SqNGmn5SCgg3jjB2V/n9fwBpK4mBoijDAqrG0oCGVQxEy/1pzzbUFSxdXi
 HFhRgzhCtSLk7RD2+k7C5F48RwuQbNgzznwCC
X-Received: by 2002:ac8:4e4a:0:b0:41e:288e:5b88 with SMTP id
 e10-20020ac84e4a000000b0041e288e5b88mr320287qtw.62.1699397147743; 
 Tue, 07 Nov 2023 14:45:47 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG29P0zNwgETOSLarn4Z3SYa6PE6QrGP91WS7Ifm1puNNdp01URscFJJJOqVAysYTEOyPlPUw==
X-Received: by 2002:ac8:4e4a:0:b0:41e:288e:5b88 with SMTP id
 e10-20020ac84e4a000000b0041e288e5b88mr320271qtw.62.1699397147488; 
 Tue, 07 Nov 2023 14:45:47 -0800 (PST)
Received: from ?IPv6:2600:4040:5c6c:a300::feb? ([2600:4040:5c6c:a300::feb])
 by smtp.gmail.com with ESMTPSA id
 g10-20020ac842ca000000b0041e9f3c3be8sm160841qtm.23.2023.11.07.14.45.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Nov 2023 14:45:47 -0800 (PST)
Message-ID: <962fb485c6e01b1535fc22ab4c8ce8d615035d3d.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
Date: Tue, 07 Nov 2023 17:45:46 -0500
In-Reply-To: <20231030155843.2251023-3-imre.deak@intel.com>
References: <20231030155843.2251023-1-imre.deak@intel.com>
 <20231030155843.2251023-3-imre.deak@intel.com>
Organization: Red Hat Inc.
User-Agent: Evolution 3.48.4 (3.48.4-1.fc38)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v4 02/30] drm/dp_mst: Fix fractional DSC bpp
 handling
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
Cc: David Francis <David.Francis@amd.com>,
 Manasi Navare <manasi.d.navare@intel.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 Mikita Lipski <mikita.lipski@amd.com>, Harry Wentland <harry.wentland@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Reviewed-by: Lyude Paul <lyude@redhat.com>

On Mon, 2023-10-30 at 17:58 +0200, Imre Deak wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>=20
> The current code does '(bpp << 4) / 16' in the MST PBN
> calculation, but that is just the same as 'bpp' so the
> DSC codepath achieves absolutely nothing. Fix it up so that
> the fractional part of the bpp value is actually used instead
> of truncated away. 64*1006 has enough zero lsbs that we can
> just shift that down in the dividend and thus still manage
> to stick to a 32bit divisor.
>=20
> And while touching this, let's just make the whole thing more
> straightforward by making the passed in bpp value .4 binary
> fixed point always, instead of having to pass in different
> things based on whether DSC is enabled or not.
>=20
> v2:
> - Fix DSC kunit test cases.
>=20
> Cc: Manasi Navare <manasi.d.navare@intel.com>
> Cc: Lyude Paul <lyude@redhat.com>
> Cc: Harry Wentland <harry.wentland@amd.com>
> Cc: David Francis <David.Francis@amd.com>
> Cc: Mikita Lipski <mikita.lipski@amd.com>
> Cc: Alex Deucher <alexander.deucher@amd.com>
> Fixes: dc48529fb14e ("drm/dp_mst: Add PBN calculation for DSC modes")
> Reviewed-by: Lyude Paul <lyude@redhat.com> (v1)
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> [Imre: Fix kunit test cases]
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  .../gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c |  2 +-
>  .../display/amdgpu_dm/amdgpu_dm_mst_types.c   |  2 +-
>  drivers/gpu/drm/display/drm_dp_mst_topology.c | 20 +++++--------------
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   |  5 ++---
>  drivers/gpu/drm/nouveau/dispnv50/disp.c       |  3 +--
>  .../gpu/drm/tests/drm_dp_mst_helper_test.c    |  6 +++---
>  include/drm/display/drm_dp_mst_helper.h       |  2 +-
>  7 files changed, 14 insertions(+), 26 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c b/drivers/=
gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
> index 9a712791f309f..ada3773869ff0 100644
> --- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
> +++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
> @@ -6918,7 +6918,7 @@ static int dm_encoder_helper_atomic_check(struct dr=
m_encoder *encoder,
>  =09=09=09=09=09=09=09=09    max_bpc);
>  =09=09bpp =3D convert_dc_color_depth_into_bpc(color_depth) * 3;
>  =09=09clock =3D adjusted_mode->clock;
> -=09=09dm_new_connector_state->pbn =3D drm_dp_calc_pbn_mode(clock, bpp, f=
alse);
> +=09=09dm_new_connector_state->pbn =3D drm_dp_calc_pbn_mode(clock, bpp <<=
 4);
>  =09}
> =20
>  =09dm_new_connector_state->vcpi_slots =3D
> diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c =
b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c
> index d3b13d362edac..9a58e1a4c5f49 100644
> --- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c
> +++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c
> @@ -1642,7 +1642,7 @@ enum dc_status dm_dp_mst_is_port_support_mode(
>  =09} else {
>  =09=09/* check if mode could be supported within full_pbn */
>  =09=09bpp =3D convert_dc_color_depth_into_bpc(stream->timing.display_col=
or_depth) * 3;
> -=09=09pbn =3D drm_dp_calc_pbn_mode(stream->timing.pix_clk_100hz / 10, bp=
p, false);
> +=09=09pbn =3D drm_dp_calc_pbn_mode(stream->timing.pix_clk_100hz / 10, bp=
p << 4);
> =20
>  =09=09if (pbn > aconnector->mst_output_port->full_pbn)
>  =09=09=09return DC_FAIL_BANDWIDTH_VALIDATE;
> diff --git a/drivers/gpu/drm/display/drm_dp_mst_topology.c b/drivers/gpu/=
drm/display/drm_dp_mst_topology.c
> index 0e0d0e76de065..772b00ebd57bd 100644
> --- a/drivers/gpu/drm/display/drm_dp_mst_topology.c
> +++ b/drivers/gpu/drm/display/drm_dp_mst_topology.c
> @@ -4718,13 +4718,12 @@ EXPORT_SYMBOL(drm_dp_check_act_status);
> =20
>  /**
>   * drm_dp_calc_pbn_mode() - Calculate the PBN for a mode.
> - * @clock: dot clock for the mode
> - * @bpp: bpp for the mode.
> - * @dsc: DSC mode. If true, bpp has units of 1/16 of a bit per pixel
> + * @clock: dot clock
> + * @bpp: bpp as .4 binary fixed point
>   *
>   * This uses the formula in the spec to calculate the PBN value for a mo=
de.
>   */
> -int drm_dp_calc_pbn_mode(int clock, int bpp, bool dsc)
> +int drm_dp_calc_pbn_mode(int clock, int bpp)
>  {
>  =09/*
>  =09 * margin 5300ppm + 300ppm ~ 0.6% as per spec, factor is 1.006
> @@ -4735,18 +4734,9 @@ int drm_dp_calc_pbn_mode(int clock, int bpp, bool =
dsc)
>  =09 * peak_kbps *=3D (1006/1000)
>  =09 * peak_kbps *=3D (64/54)
>  =09 * peak_kbps *=3D 8    convert to bytes
> -=09 *
> -=09 * If the bpp is in units of 1/16, further divide by 16. Put this
> -=09 * factor in the numerator rather than the denominator to avoid
> -=09 * integer overflow
>  =09 */
> -
> -=09if (dsc)
> -=09=09return DIV_ROUND_UP_ULL(mul_u32_u32(clock * (bpp / 16), 64 * 1006)=
,
> -=09=09=09=09=098 * 54 * 1000 * 1000);
> -
> -=09return DIV_ROUND_UP_ULL(mul_u32_u32(clock * bpp, 64 * 1006),
> -=09=09=09=098 * 54 * 1000 * 1000);
> +=09return DIV_ROUND_UP_ULL(mul_u32_u32(clock * bpp, 64 * 1006 >> 4),
> +=09=09=09=091000 * 8 * 54 * 1000);
>  }
>  EXPORT_SYMBOL(drm_dp_calc_pbn_mode);
> =20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/dr=
m/i915/display/intel_dp_mst.c
> index 851b312bd8449..5bf45a2a85b0e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -106,8 +106,7 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struc=
t intel_encoder *encoder,
>  =09=09=09continue;
> =20
>  =09=09crtc_state->pbn =3D drm_dp_calc_pbn_mode(adjusted_mode->crtc_clock=
,
> -=09=09=09=09=09=09       dsc ? bpp << 4 : bpp,
> -=09=09=09=09=09=09       dsc);
> +=09=09=09=09=09=09       bpp << 4);
> =20
>  =09=09slots =3D drm_dp_atomic_find_time_slots(state, &intel_dp->mst_mgr,
>  =09=09=09=09=09=09      connector->port,
> @@ -975,7 +974,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *con=
nector,
>  =09=09return ret;
> =20
>  =09if (mode_rate > max_rate || mode->clock > max_dotclk ||
> -=09    drm_dp_calc_pbn_mode(mode->clock, min_bpp, false) > port->full_pb=
n) {
> +=09    drm_dp_calc_pbn_mode(mode->clock, min_bpp << 4) > port->full_pbn)=
 {
>  =09=09*status =3D MODE_CLOCK_HIGH;
>  =09=09return 0;
>  =09}
> diff --git a/drivers/gpu/drm/nouveau/dispnv50/disp.c b/drivers/gpu/drm/no=
uveau/dispnv50/disp.c
> index d2be40337b92e..153717e1df1a2 100644
> --- a/drivers/gpu/drm/nouveau/dispnv50/disp.c
> +++ b/drivers/gpu/drm/nouveau/dispnv50/disp.c
> @@ -982,8 +982,7 @@ nv50_msto_atomic_check(struct drm_encoder *encoder,
>  =09=09const int clock =3D crtc_state->adjusted_mode.clock;
> =20
>  =09=09asyh->or.bpc =3D connector->display_info.bpc;
> -=09=09asyh->dp.pbn =3D drm_dp_calc_pbn_mode(clock, asyh->or.bpc * 3,
> -=09=09=09=09=09=09    false);
> +=09=09asyh->dp.pbn =3D drm_dp_calc_pbn_mode(clock, asyh->or.bpc * 3 << 4=
);
>  =09}
> =20
>  =09mst_state =3D drm_atomic_get_mst_topology_state(state, &mstm->mgr);
> diff --git a/drivers/gpu/drm/tests/drm_dp_mst_helper_test.c b/drivers/gpu=
/drm/tests/drm_dp_mst_helper_test.c
> index 545beea33e8c7..e3c818dfc0e6d 100644
> --- a/drivers/gpu/drm/tests/drm_dp_mst_helper_test.c
> +++ b/drivers/gpu/drm/tests/drm_dp_mst_helper_test.c
> @@ -42,13 +42,13 @@ static const struct drm_dp_mst_calc_pbn_mode_test drm=
_dp_mst_calc_pbn_mode_cases
>  =09=09.clock =3D 332880,
>  =09=09.bpp =3D 24,
>  =09=09.dsc =3D true,
> -=09=09.expected =3D 50
> +=09=09.expected =3D 1191
>  =09},
>  =09{
>  =09=09.clock =3D 324540,
>  =09=09.bpp =3D 24,
>  =09=09.dsc =3D true,
> -=09=09.expected =3D 49
> +=09=09.expected =3D 1161
>  =09},
>  };
> =20
> @@ -56,7 +56,7 @@ static void drm_test_dp_mst_calc_pbn_mode(struct kunit =
*test)
>  {
>  =09const struct drm_dp_mst_calc_pbn_mode_test *params =3D test->param_va=
lue;
> =20
> -=09KUNIT_EXPECT_EQ(test, drm_dp_calc_pbn_mode(params->clock, params->bpp=
, params->dsc),
> +=09KUNIT_EXPECT_EQ(test, drm_dp_calc_pbn_mode(params->clock, params->bpp=
 << 4),
>  =09=09=09params->expected);
>  }
> =20
> diff --git a/include/drm/display/drm_dp_mst_helper.h b/include/drm/displa=
y/drm_dp_mst_helper.h
> index 4429d3b1745b6..655862b3d2a49 100644
> --- a/include/drm/display/drm_dp_mst_helper.h
> +++ b/include/drm/display/drm_dp_mst_helper.h
> @@ -842,7 +842,7 @@ struct edid *drm_dp_mst_get_edid(struct drm_connector=
 *connector,
>  int drm_dp_get_vc_payload_bw(const struct drm_dp_mst_topology_mgr *mgr,
>  =09=09=09     int link_rate, int link_lane_count);
> =20
> -int drm_dp_calc_pbn_mode(int clock, int bpp, bool dsc);
> +int drm_dp_calc_pbn_mode(int clock, int bpp);
> =20
>  void drm_dp_mst_update_slots(struct drm_dp_mst_topology_state *mst_state=
, uint8_t link_encoding_cap);
> =20

--=20
Cheers,
 Lyude Paul (she/her)
 Software Engineer at Red Hat

