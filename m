Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5878C3B0035
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Jun 2021 11:29:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 479828991A;
	Tue, 22 Jun 2021 09:29:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from srv6.fidu.org (srv6.fidu.org [IPv6:2a01:4f8:231:de0::2])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDEE28991A;
 Tue, 22 Jun 2021 09:29:03 +0000 (UTC)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by srv6.fidu.org (Postfix) with ESMTP id 47D8BC8009D;
 Tue, 22 Jun 2021 11:29:02 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at srv6.fidu.org
Received: from srv6.fidu.org ([127.0.0.1])
 by localhost (srv6.fidu.org [127.0.0.1]) (amavisd-new, port 10024)
 with LMTP id 4rnUcpHUmxjY; Tue, 22 Jun 2021 11:29:01 +0200 (CEST)
Received: from [IPv6:2003:e3:7f39:4900:2847:eb91:7f60:5216]
 (p200300E37F3949002847Eb917F605216.dip0.t-ipconnect.de
 [IPv6:2003:e3:7f39:4900:2847:eb91:7f60:5216])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: wse@tuxedocomputers.com)
 by srv6.fidu.org (Postfix) with ESMTPSA id 45139C8009B;
 Tue, 22 Jun 2021 11:28:57 +0200 (CEST)
To: Pekka Paalanen <ppaalanen@gmail.com>
References: <20210618091116.14428-1-wse@tuxedocomputers.com>
 <20210618091116.14428-18-wse@tuxedocomputers.com>
 <20210622102955.1e0488b1@eldfell>
From: Werner Sembach <wse@tuxedocomputers.com>
Message-ID: <ded3d448-4837-f38d-9878-f5d764712db7@tuxedocomputers.com>
Date: Tue, 22 Jun 2021 11:28:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210622102955.1e0488b1@eldfell>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v4 17/17] drm/amd/display: Add handling for
 new "Broadcast RGB" property
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
Cc: mripard@kernel.org, sunpeng.li@amd.com, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 airlied@linux.ie, amd-gfx@lists.freedesktop.org, tzimmermann@suse.de,
 alexander.deucher@amd.com, harry.wentland@amd.com, christian.koenig@amd.com
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Am 22.06.21 um 09:29 schrieb Pekka Paalanen:
> On Fri, 18 Jun 2021 11:11:16 +0200
> Werner Sembach <wse@tuxedocomputers.com> wrote:
>
>> This commit implements the "Broadcast RGB" drm property for the AMD GPU
>> driver.
>>
>> Signed-off-by: Werner Sembach <wse@tuxedocomputers.com>
>> ---
>>  .../gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c | 22 ++++++++++++++-----
>>  .../display/amdgpu_dm/amdgpu_dm_mst_types.c   |  4 ++++
>>  2 files changed, 21 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c b/drivers=
/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
>> index 9ffd2f9d3d75..c5dbf948a47a 100644
>> --- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
>> +++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
>> @@ -5252,7 +5252,8 @@ get_aspect_ratio(const struct drm_display_mode *mo=
de_in)
>>  }
>>  =

>>  static enum dc_color_space
>> -get_output_color_space(const struct dc_crtc_timing *dc_crtc_timing)
>> +get_output_color_space(const struct dc_crtc_timing *dc_crtc_timing,
>> +		       enum drm_mode_color_range preferred_color_range)
>>  {
>>  	enum dc_color_space color_space =3D COLOR_SPACE_SRGB;
>>  =

>> @@ -5267,13 +5268,17 @@ get_output_color_space(const struct dc_crtc_timi=
ng *dc_crtc_timing)
>>  		 * respectively
>>  		 */
>>  		if (dc_crtc_timing->pix_clk_100hz > 270300) {
>> -			if (dc_crtc_timing->flags.Y_ONLY)
>> +			if (dc_crtc_timing->flags.Y_ONLY
>> +					|| preferred_color_range =3D=3D
>> +						DRM_MODE_COLOR_RANGE_LIMITED_16_235)
>>  				color_space =3D
>>  					COLOR_SPACE_YCBCR709_LIMITED;
>>  			else
>>  				color_space =3D COLOR_SPACE_YCBCR709;
> Hi,
>
> does this mean that amdgpu would be using a property named "Broadcast
> RGB" to control the range of YCbCr too?

Yes, because I avoided creating a new property, but I'm not really happy wi=
th it either.

Possibility 1: Use "Broadcast RGB" for Y'CbCr too and clarify in documentat=
ion
=A0=A0=A0 - still confusing name
=A0=A0=A0 - limited does not mean something a little bit different for Y'Cb=
Cr and not strictly 16-235:
https://www.kernel.org/doc/html/v5.12/userspace-api/media/v4l/colorspaces-d=
efs.html#c.V4L.v4l2_quantization , but name
of option is given by preexisting property

Possibility 2: Deprecate "Broadcast RGB" and a a more neutral sounding "pre=
ferred color range", with the more neutral
sounding "limited" option instead of "Limited 16:235"
=A0=A0=A0 - What's the relation between the 2? pq mentioned on the amdgpu g=
itlab that there is a posibility for userspace to
have only the new or the old one shown
=A0=A0=A0 - Alternatively ignore "Broadcast RGB" when "preferred color rang=
e" is set and have them coexist?

>
> That is surprising. If this is truly wanted, then the documentation of
> "Broadcast RGB" must say that it applies to YCbCr too.
>
> Does amdgpu do the same as intel wrt. to the question about whose
> responsibility it is to make the pixels at the connector to match the
> set range?

I guess the kernel driver does the conversion, but i have to check for both.

For Intel I did not change the behavior of Boradcast RGB, but i think it's =
not clearly specified in the docs where the
conversion happens.

>
>
> Thanks,
> pq
>
>>  		} else {
>> -			if (dc_crtc_timing->flags.Y_ONLY)
>> +			if (dc_crtc_timing->flags.Y_ONLY
>> +					|| preferred_color_range =3D=3D
>> +						DRM_MODE_COLOR_RANGE_LIMITED_16_235)
>>  				color_space =3D
>>  					COLOR_SPACE_YCBCR601_LIMITED;
>>  			else
>> @@ -5283,7 +5288,10 @@ get_output_color_space(const struct dc_crtc_timin=
g *dc_crtc_timing)
>>  	}
>>  	break;
>>  	case PIXEL_ENCODING_RGB:
>> -		color_space =3D COLOR_SPACE_SRGB;
>> +		if (preferred_color_range =3D=3D DRM_MODE_COLOR_RANGE_LIMITED_16_235)
>> +			color_space =3D COLOR_SPACE_SRGB_LIMITED;
>> +		else
>> +			color_space =3D COLOR_SPACE_SRGB;
>>  		break;
>>  =

>>  	default:
>> @@ -5429,7 +5437,10 @@ static void fill_stream_properties_from_drm_displ=
ay_mode(
>>  =

>>  	timing_out->aspect_ratio =3D get_aspect_ratio(mode_in);
>>  =

>> -	stream->output_color_space =3D get_output_color_space(timing_out);
>> +	stream->output_color_space =3D get_output_color_space(timing_out,
>> +							    connector_state ?
>> +							    connector_state->preferred_color_range :
>> +							    DRM_MODE_COLOR_RANGE_UNSET);
>>  =

>>  	stream->out_transfer_func->type =3D TF_TYPE_PREDEFINED;
>>  	stream->out_transfer_func->tf =3D TRANSFER_FUNCTION_SRGB;
>> @@ -7780,6 +7791,7 @@ void amdgpu_dm_connector_init_helper(struct amdgpu=
_display_manager *dm,
>>  		drm_connector_attach_active_bpc_property(&aconnector->base, 8, 16);
>>  		drm_connector_attach_preferred_color_format_property(&aconnector->bas=
e);
>>  		drm_connector_attach_active_color_format_property(&aconnector->base);
>> +		drm_connector_attach_preferred_color_range_property(&aconnector->base=
);
>>  		drm_connector_attach_active_color_range_property(&aconnector->base);
>>  	}
>>  =

>> diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c=
 b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c
>> index 2563788ba95a..80e1389fd0ec 100644
>> --- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c
>> +++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c
>> @@ -421,6 +421,10 @@ dm_dp_add_mst_connector(struct drm_dp_mst_topology_=
mgr *mgr,
>>  	if (connector->active_color_format_property)
>>  		drm_connector_attach_active_color_format_property(&aconnector->base);
>>  =

>> +	connector->preferred_color_range_property =3D master->base.preferred_c=
olor_range_property;
>> +	if (connector->preferred_color_range_property)
>> +		drm_connector_attach_preferred_color_range_property(&aconnector->base=
);
>> +
>>  	connector->active_color_range_property =3D master->base.active_color_r=
ange_property;
>>  	if (connector->active_color_range_property)
>>  		drm_connector_attach_active_color_range_property(&aconnector->base);
> _______________________________________________
> amd-gfx mailing list
> amd-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/amd-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
