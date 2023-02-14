Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 591C36960D9
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Feb 2023 11:35:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF40610E044;
	Tue, 14 Feb 2023 10:35:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E01A10E044
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Feb 2023 10:35:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676370906; x=1707906906;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=uiCo9G+5vRZJlNLmy6yws4NZGWguhE3Tz5quv7IYnks=;
 b=cnWl/GvGp/chKlKyNXg+Svnz51Yxy2UXOIMxhl4Fus6xbFFhRyd7/wHt
 3uufRspW9yn7stpL/GGUd/1pydFxGxI6LvA3g2mGNqJmUeoAhrn9qQJcd
 040j5dedoeR8LR5sM5K03Yo3RJEvmB1k4SPKBhYULmgOF4n/Dli9Jlf7h
 PDYI1sdqGFMud1Kwng8pyIn+Pk0YpILkI2TpoBucxo5629jUWYx1BFy5W
 fN0bTVImjQ6GiZpoAIVhEYhn10I0ph4KLxOK9Lw1g5Hs2frcTc3oRBekt
 bj2QhSHWUSMO8FzQ8F7o8iyevyEgn8YmZp2tP5yqP//DiKy3EzjKUnxRj Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="417347752"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="417347752"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 02:35:03 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="662495776"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="662495776"
Received: from skalyan-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.52.13])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 02:35:01 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <875yc4tu3y.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230213225258.2127-1-ville.syrjala@linux.intel.com>
 <20230213225258.2127-10-ville.syrjala@linux.intel.com>
 <875yc4tu3y.fsf@intel.com>
Date: Tue, 14 Feb 2023 12:34:58 +0200
Message-ID: <873578tu0d.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 09/12] drm/i915: Define transcoder timing
 register bitmasks
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

On Tue, 14 Feb 2023, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> On Tue, 14 Feb 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
>> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>>
>> Define the contents of the transcoder timing registers using
>> REG_GENMASK() & co. For ease of maintenance let's just define
>> the bitmasks with the full 16bit width (also used by the
>> current hand rolled stuff) even though not all bits are actually
>> used. None of the unsued bits have ever contained anything.
>>
>> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/icl_dsi.c       | 10 +--
>>  drivers/gpu/drm/i915/display/intel_crt.c     | 13 ++--
>>  drivers/gpu/drm/i915/display/intel_display.c | 64 ++++++++++++--------
>>  drivers/gpu/drm/i915/i915_reg.h              | 24 ++++++++
>>  4 files changed, 75 insertions(+), 36 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i9=
15/display/icl_dsi.c
>> index 07897d6f9c53..def3aff4d717 100644
>> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
>> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
>> @@ -888,7 +888,7 @@ gen11_dsi_set_transcoder_timings(struct intel_encode=
r *encoder,
>>  	for_each_dsi_port(port, intel_dsi->ports) {
>>  		dsi_trans =3D dsi_port_to_transcoder(port);
>>  		intel_de_write(dev_priv, TRANS_HTOTAL(dsi_trans),
>> -			       (hactive - 1) | ((htotal - 1) << 16));
>> +			       HACTIVE(hactive - 1) | HTOTAL(htotal - 1));
>>  	}
>>=20=20
>>  	/* TRANS_HSYNC register to be programmed only for video mode */
>> @@ -911,7 +911,7 @@ gen11_dsi_set_transcoder_timings(struct intel_encode=
r *encoder,
>>  		for_each_dsi_port(port, intel_dsi->ports) {
>>  			dsi_trans =3D dsi_port_to_transcoder(port);
>>  			intel_de_write(dev_priv, TRANS_HSYNC(dsi_trans),
>> -				       (hsync_start - 1) | ((hsync_end - 1) << 16));
>> +				       HSYNC_START(hsync_start - 1) | HSYNC_END(hsync_end - 1));
>>  		}
>>  	}
>>=20=20
>> @@ -925,7 +925,7 @@ gen11_dsi_set_transcoder_timings(struct intel_encode=
r *encoder,
>>  		 * For interlace mode: program required pixel minus 2
>>  		 */
>>  		intel_de_write(dev_priv, TRANS_VTOTAL(dsi_trans),
>> -			       (vactive - 1) | ((vtotal - 1) << 16));
>> +			       VACTIVE(vactive - 1) | VTOTAL(vtotal - 1));
>>  	}
>>=20=20
>>  	if (vsync_end < vsync_start || vsync_end > vtotal)
>> @@ -939,7 +939,7 @@ gen11_dsi_set_transcoder_timings(struct intel_encode=
r *encoder,
>>  		for_each_dsi_port(port, intel_dsi->ports) {
>>  			dsi_trans =3D dsi_port_to_transcoder(port);
>>  			intel_de_write(dev_priv, TRANS_VSYNC(dsi_trans),
>> -				       (vsync_start - 1) | ((vsync_end - 1) << 16));
>> +				       VSYNC_START(vsync_start - 1) | VSYNC_END(vsync_end - 1));
>>  		}
>>  	}
>>=20=20
>> @@ -962,7 +962,7 @@ gen11_dsi_set_transcoder_timings(struct intel_encode=
r *encoder,
>>  		for_each_dsi_port(port, intel_dsi->ports) {
>>  			dsi_trans =3D dsi_port_to_transcoder(port);
>>  			intel_de_write(dev_priv, TRANS_VBLANK(dsi_trans),
>> -				       (vactive - 1) | ((vtotal - 1) << 16));
>> +				       VBLANK_START(vactive - 1) | VBLANK_END(vtotal - 1));
>>  		}
>>  	}
>>  }
>> diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/=
i915/display/intel_crt.c
>> index ef0c7f5b0ad6..8f2ebead0826 100644
>> --- a/drivers/gpu/drm/i915/display/intel_crt.c
>> +++ b/drivers/gpu/drm/i915/display/intel_crt.c
>> @@ -698,11 +698,11 @@ intel_crt_load_detect(struct intel_crt *crt, enum =
pipe pipe)
>>  	save_vtotal =3D intel_de_read(dev_priv, TRANS_VTOTAL(cpu_transcoder));
>>  	vblank =3D intel_de_read(dev_priv, TRANS_VBLANK(cpu_transcoder));
>>=20=20
>> -	vtotal =3D ((save_vtotal >> 16) & 0xfff) + 1;
>> -	vactive =3D (save_vtotal & 0x7ff) + 1;
>> +	vtotal =3D REG_FIELD_GET(VTOTAL_MASK, save_vtotal) + 1;
>> +	vactive =3D REG_FIELD_GET(VACTIVE_MASK, save_vtotal) + 1;
>>=20=20
>> -	vblank_start =3D (vblank & 0xfff) + 1;
>> -	vblank_end =3D ((vblank >> 16) & 0xfff) + 1;
>> +	vblank_start =3D REG_FIELD_GET(VBLANK_START_MASK, vblank) + 1;
>> +	vblank_end =3D REG_FIELD_GET(VBLANK_END_MASK, vblank) + 1;
>
> I forget how these are defined in bspec and if the field size grows
> towards later platforms... but this widens the masks. I'm guess it'll
> probably read as zero anyway, but in theory that's a functional change.

Regardless, up to and including this patch,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>
> BR,
> Jani.
>
>>=20=20
>>  	/* Set the border color to purple. */
>>  	intel_de_write(dev_priv, BCLRPAT(cpu_transcoder), 0x500050);
>> @@ -732,11 +732,12 @@ intel_crt_load_detect(struct intel_crt *crt, enum =
pipe pipe)
>>  		*/
>>  		if (vblank_start <=3D vactive && vblank_end >=3D vtotal) {
>>  			u32 vsync =3D intel_de_read(dev_priv, TRANS_VSYNC(cpu_transcoder));
>> -			u32 vsync_start =3D (vsync & 0xffff) + 1;
>> +			u32 vsync_start =3D REG_FIELD_GET(VSYNC_START_MASK, vsync) + 1;
>>=20=20
>>  			vblank_start =3D vsync_start;
>>  			intel_de_write(dev_priv, TRANS_VBLANK(cpu_transcoder),
>> -				       (vblank_start - 1) | ((vblank_end - 1) << 16));
>> +				       VBLANK_START(vblank_start - 1) |
>> +				       VBLANK_END(vblank_end - 1));
>>  			restore_vblank =3D true;
>>  		}
>>  		/* sample in the vertical border, selecting the larger one */
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/=
drm/i915/display/intel_display.c
>> index ac021ca88e3c..1d92a789baab 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -2848,18 +2848,24 @@ static void intel_set_transcoder_timings(const s=
truct intel_crtc_state *crtc_sta
>>  			       vsyncshift);
>>=20=20
>>  	intel_de_write(dev_priv, TRANS_HTOTAL(cpu_transcoder),
>> -		       (adjusted_mode->crtc_hdisplay - 1) | ((adjusted_mode->crtc_hto=
tal - 1) << 16));
>> +		       HACTIVE(adjusted_mode->crtc_hdisplay - 1) |
>> +		       HTOTAL(adjusted_mode->crtc_htotal - 1));
>>  	intel_de_write(dev_priv, TRANS_HBLANK(cpu_transcoder),
>> -		       (adjusted_mode->crtc_hblank_start - 1) | ((adjusted_mode->crtc=
_hblank_end - 1) << 16));
>> +		       HBLANK_START(adjusted_mode->crtc_hblank_start - 1) |
>> +		       HBLANK_END(adjusted_mode->crtc_hblank_end - 1));
>>  	intel_de_write(dev_priv, TRANS_HSYNC(cpu_transcoder),
>> -		       (adjusted_mode->crtc_hsync_start - 1) | ((adjusted_mode->crtc_=
hsync_end - 1) << 16));
>> +		       HSYNC_START(adjusted_mode->crtc_hsync_start - 1) |
>> +		       HSYNC_END(adjusted_mode->crtc_hsync_end - 1));
>>=20=20
>>  	intel_de_write(dev_priv, TRANS_VTOTAL(cpu_transcoder),
>> -		       (adjusted_mode->crtc_vdisplay - 1) | ((crtc_vtotal - 1) << 16)=
);
>> +		       VACTIVE(adjusted_mode->crtc_vdisplay - 1) |
>> +		       VTOTAL(crtc_vtotal - 1));
>>  	intel_de_write(dev_priv, TRANS_VBLANK(cpu_transcoder),
>> -		       (adjusted_mode->crtc_vblank_start - 1) | ((crtc_vblank_end - 1=
) << 16));
>> +		       VBLANK_START(adjusted_mode->crtc_vblank_start - 1) |
>> +		       VBLANK_END(crtc_vblank_end - 1));
>>  	intel_de_write(dev_priv, TRANS_VSYNC(cpu_transcoder),
>> -		       (adjusted_mode->crtc_vsync_start - 1) | ((adjusted_mode->crtc_=
vsync_end - 1) << 16));
>> +		       VSYNC_START(adjusted_mode->crtc_vsync_start - 1) |
>> +		       VSYNC_END(adjusted_mode->crtc_vsync_end - 1));
>>=20=20
>>  	/* Workaround: when the EDP input selection is B, the VTOTAL_B must be
>>  	 * programmed with the VTOTAL_EDP value. Same for VTOTAL_C. This is
>> @@ -2912,30 +2918,31 @@ static void intel_get_transcoder_timings(struct =
intel_crtc *crtc,
>>  	u32 tmp;
>>=20=20
>>  	tmp =3D intel_de_read(dev_priv, TRANS_HTOTAL(cpu_transcoder));
>> -	adjusted_mode->crtc_hdisplay =3D (tmp & 0xffff) + 1;
>> -	adjusted_mode->crtc_htotal =3D ((tmp >> 16) & 0xffff) + 1;
>> +	adjusted_mode->crtc_hdisplay =3D REG_FIELD_GET(HACTIVE_MASK, tmp) + 1;
>> +	adjusted_mode->crtc_htotal =3D REG_FIELD_GET(HTOTAL_MASK, tmp) + 1;
>>=20=20
>>  	if (!transcoder_is_dsi(cpu_transcoder)) {
>>  		tmp =3D intel_de_read(dev_priv, TRANS_HBLANK(cpu_transcoder));
>> -		adjusted_mode->crtc_hblank_start =3D (tmp & 0xffff) + 1;
>> -		adjusted_mode->crtc_hblank_end =3D ((tmp >> 16) & 0xffff) + 1;
>> +		adjusted_mode->crtc_hblank_start =3D REG_FIELD_GET(HBLANK_START_MASK,=
 tmp) + 1;
>> +		adjusted_mode->crtc_hblank_end =3D REG_FIELD_GET(HBLANK_END_MASK, tmp=
) + 1;
>>  	}
>> +
>>  	tmp =3D intel_de_read(dev_priv, TRANS_HSYNC(cpu_transcoder));
>> -	adjusted_mode->crtc_hsync_start =3D (tmp & 0xffff) + 1;
>> -	adjusted_mode->crtc_hsync_end =3D ((tmp >> 16) & 0xffff) + 1;
>> +	adjusted_mode->crtc_hsync_start =3D REG_FIELD_GET(HSYNC_START_MASK, tm=
p) + 1;
>> +	adjusted_mode->crtc_hsync_end =3D REG_FIELD_GET(HSYNC_END_MASK, tmp) +=
 1;
>>=20=20
>>  	tmp =3D intel_de_read(dev_priv, TRANS_VTOTAL(cpu_transcoder));
>> -	adjusted_mode->crtc_vdisplay =3D (tmp & 0xffff) + 1;
>> -	adjusted_mode->crtc_vtotal =3D ((tmp >> 16) & 0xffff) + 1;
>> +	adjusted_mode->crtc_vdisplay =3D REG_FIELD_GET(VACTIVE_MASK, tmp) + 1;
>> +	adjusted_mode->crtc_vtotal =3D REG_FIELD_GET(VTOTAL_MASK, tmp) + 1;
>>=20=20
>>  	if (!transcoder_is_dsi(cpu_transcoder)) {
>>  		tmp =3D intel_de_read(dev_priv, TRANS_VBLANK(cpu_transcoder));
>> -		adjusted_mode->crtc_vblank_start =3D (tmp & 0xffff) + 1;
>> -		adjusted_mode->crtc_vblank_end =3D ((tmp >> 16) & 0xffff) + 1;
>> +		adjusted_mode->crtc_vblank_start =3D REG_FIELD_GET(VBLANK_START_MASK,=
 tmp) + 1;
>> +		adjusted_mode->crtc_vblank_end =3D REG_FIELD_GET(VBLANK_END_MASK, tmp=
) + 1;
>>  	}
>>  	tmp =3D intel_de_read(dev_priv, TRANS_VSYNC(cpu_transcoder));
>> -	adjusted_mode->crtc_vsync_start =3D (tmp & 0xffff) + 1;
>> -	adjusted_mode->crtc_vsync_end =3D ((tmp >> 16) & 0xffff) + 1;
>> +	adjusted_mode->crtc_vsync_start =3D REG_FIELD_GET(VSYNC_START_MASK, tm=
p) + 1;
>> +	adjusted_mode->crtc_vsync_end =3D REG_FIELD_GET(VSYNC_END_MASK, tmp) +=
 1;
>>=20=20
>>  	if (intel_pipe_is_interlaced(pipe_config)) {
>>  		adjusted_mode->flags |=3D DRM_MODE_FLAG_INTERLACE;
>> @@ -8816,13 +8823,20 @@ void i830_enable_pipe(struct drm_i915_private *d=
ev_priv, enum pipe pipe)
>>  		PLL_REF_INPUT_DREFCLK |
>>  		DPLL_VCO_ENABLE;
>>=20=20
>> -	intel_de_write(dev_priv, TRANS_HTOTAL(cpu_transcoder), (640 - 1) | ((8=
00 - 1) << 16));
>> -	intel_de_write(dev_priv, TRANS_HBLANK(cpu_transcoder), (640 - 1) | ((8=
00 - 1) << 16));
>> -	intel_de_write(dev_priv, TRANS_HSYNC(cpu_transcoder), (656 - 1) | ((75=
2 - 1) << 16));
>> -	intel_de_write(dev_priv, TRANS_VTOTAL(cpu_transcoder), (480 - 1) | ((5=
25 - 1) << 16));
>> -	intel_de_write(dev_priv, TRANS_VBLANK(cpu_transcoder), (480 - 1) | ((5=
25 - 1) << 16));
>> -	intel_de_write(dev_priv, TRANS_VSYNC(cpu_transcoder), (490 - 1) | ((49=
2 - 1) << 16));
>> -	intel_de_write(dev_priv, PIPESRC(pipe), ((640 - 1) << 16) | (480 - 1));
>> +	intel_de_write(dev_priv, TRANS_HTOTAL(cpu_transcoder),
>> +		       HACTIVE(640 - 1) | HTOTAL(800 - 1));
>> +	intel_de_write(dev_priv, TRANS_HBLANK(cpu_transcoder),
>> +		       HBLANK_START(640 - 1) | HBLANK_END(800 - 1));
>> +	intel_de_write(dev_priv, TRANS_HSYNC(cpu_transcoder),
>> +		       HSYNC_START(656 - 1) | HSYNC_END(752 - 1));
>> +	intel_de_write(dev_priv, TRANS_VTOTAL(cpu_transcoder),
>> +		       VACTIVE(480 - 1) | VTOTAL(525 - 1));
>> +	intel_de_write(dev_priv, TRANS_VBLANK(cpu_transcoder),
>> +		       VBLANK_START(480 - 1) | VBLANK_END(525 - 1));
>> +	intel_de_write(dev_priv, TRANS_VSYNC(cpu_transcoder),
>> +		       VSYNC_START(490 - 1) | VSYNC_END(492 - 1));
>> +	intel_de_write(dev_priv, PIPESRC(pipe),
>> +		       PIPESRC_WIDTH(640 - 1) | PIPESRC_HEIGHT(480 - 1));
>>=20=20
>>  	intel_de_write(dev_priv, FP0(pipe), fp);
>>  	intel_de_write(dev_priv, FP1(pipe), fp);
>> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915=
_reg.h
>> index 23886356af35..c5e073af983a 100644
>> --- a/drivers/gpu/drm/i915/i915_reg.h
>> +++ b/drivers/gpu/drm/i915/i915_reg.h
>> @@ -1913,11 +1913,35 @@
>>=20=20
>>  /* Pipe/transcoder A timing regs */
>>  #define _TRANS_HTOTAL_A		0x60000
>> +#define   HTOTAL_MASK			REG_GENMASK(31, 16)
>> +#define   HTOTAL(htotal)		REG_FIELD_PREP(HTOTAL_MASK, (htotal))
>> +#define   HACTIVE_MASK			REG_GENMASK(15, 0)
>> +#define   HACTIVE(hdisplay)		REG_FIELD_PREP(HACTIVE_MASK, (hdisplay))
>>  #define _TRANS_HBLANK_A		0x60004
>> +#define   HBLANK_END_MASK		REG_GENMASK(31, 16)
>> +#define   HBLANK_END(hblank_end)	REG_FIELD_PREP(HBLANK_END_MASK, (hblan=
k_end))
>> +#define   HBLANK_START_MASK		REG_GENMASK(15, 0)
>> +#define   HBLANK_START(hblank_start)	REG_FIELD_PREP(HBLANK_START_MASK, =
(hblank_start))
>>  #define _TRANS_HSYNC_A		0x60008
>> +#define   HSYNC_END_MASK		REG_GENMASK(31, 16)
>> +#define   HSYNC_END(hsync_end)		REG_FIELD_PREP(HSYNC_END_MASK, (hsync_e=
nd))
>> +#define   HSYNC_START_MASK		REG_GENMASK(15, 0)
>> +#define   HSYNC_START(hsync_start)	REG_FIELD_PREP(HSYNC_START_MASK, (hs=
ync_start))
>>  #define _TRANS_VTOTAL_A		0x6000c
>> +#define   VTOTAL_MASK			REG_GENMASK(31, 16)
>> +#define   VTOTAL(vtotal)		REG_FIELD_PREP(VTOTAL_MASK, (vtotal))
>> +#define   VACTIVE_MASK			REG_GENMASK(15, 0)
>> +#define   VACTIVE(vdisplay)		REG_FIELD_PREP(VACTIVE_MASK, (vdisplay))
>>  #define _TRANS_VBLANK_A		0x60010
>> +#define   VBLANK_END_MASK		REG_GENMASK(31, 16)
>> +#define   VBLANK_END(vblank_end)	REG_FIELD_PREP(VBLANK_END_MASK, (vblan=
k_end))
>> +#define   VBLANK_START_MASK		REG_GENMASK(15, 0)
>> +#define   VBLANK_START(vblank_start)	REG_FIELD_PREP(VBLANK_START_MASK, =
(vblank_start))
>>  #define _TRANS_VSYNC_A		0x60014
>> +#define   VSYNC_END_MASK		REG_GENMASK(31, 16)
>> +#define   VSYNC_END(vsync_end)		REG_FIELD_PREP(VSYNC_END_MASK, (vsync_e=
nd))
>> +#define   VSYNC_START_MASK		REG_GENMASK(15, 0)
>> +#define   VSYNC_START(vsync_start)	REG_FIELD_PREP(VSYNC_START_MASK, (vs=
ync_start))
>>  #define _TRANS_EXITLINE_A	0x60018
>>  #define _PIPEASRC		0x6001c
>>  #define   PIPESRC_WIDTH_MASK	REG_GENMASK(31, 16)

--=20
Jani Nikula, Intel Open Source Graphics Center
