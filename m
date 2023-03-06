Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66B846AC7D4
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Mar 2023 17:25:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B6B710E2DB;
	Mon,  6 Mar 2023 16:25:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6A2710E2DB
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Mar 2023 16:25:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678119926; x=1709655926;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=oAmlWZKHrfhIRRnq9G8W0ZvXDZS/yhaddDnWBU+E70E=;
 b=Nq8WNJ8kW5Ol+JLexh/rgeXRkyhzOdfC0LCuTLVCx5zIQiz63SeOLiCw
 7Z2X1sZ8XjjAxKZqMBW4vZ0wTNtd8zmKjEVAn6hivYvvCuircQGDuRyVI
 NUAn6xvqMNS+yVHd517iCvGX0GFnUBd+1YWg2Knh2KFcwMfTsasCCuiJV
 0FQfX2tkQa6kIZDukxDUg4b+Fgd56dADr3sZx4laqCUtqkU3rHT27pcKz
 7AWZ62S6JFIylRzu4X9tLq8JS1+4biztvGbQjbEXTpPk4xzsxwWfS7JZW
 yIqaoMo964nnlqzdcE8S+yg45k6MCOoeNiin2mQEYSjzElsNRz2kBPfxw g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="315996263"
X-IronPort-AV: E=Sophos;i="5.98,238,1673942400"; d="scan'208";a="315996263"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2023 08:25:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="819358816"
X-IronPort-AV: E=Sophos;i="5.98,238,1673942400"; d="scan'208";a="819358816"
Received: from bholthau-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.58.77])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2023 08:25:03 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <Y/9xf6SkV1fG4JSA@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230301151409.1581574-1-jani.nikula@intel.com>
 <Y/9xf6SkV1fG4JSA@intel.com>
Date: Mon, 06 Mar 2023 18:25:01 +0200
Message-ID: <87fsahu9sy.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsi: fix DSS CTL register offsets
 for TGL+
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 01 Mar 2023, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Wed, Mar 01, 2023 at 05:14:09PM +0200, Jani Nikula wrote:
>> On TGL+ the DSS control registers are at different offsets, and there's
>> one per pipe. Fix the offsets to fix dual link DSI for TGL+.
>>=20
>> There would be helpers for this in the DSC code, but just do the quick
>> fix now for DSI. Long term, we should probably move all the DSS handling
>> into intel_vdsc.c, so exporting the helpers seems counter-productive.
>
> I'm not entirely happy with intel_vdsc.c since it handles
> both the hardware VDSC block (which includes DSS, and so
> also uncompressed joiner and MSO), and also some actual
> DSC calculations/etc. Might be nice to have a cleaner
> split of some sort.
>
> That also reminds me that MSO+dsc/joiner is probably going
> to fail miserably given that neither side knows about the
> other and both poke the DSS registers.
>
>>=20
>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8232
>> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
>> Cc: stable@vger.kernel.org
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/icl_dsi.c | 18 +++++++++++++++---
>>  1 file changed, 15 insertions(+), 3 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i9=
15/display/icl_dsi.c
>> index b5316715bb3b..5a17ab3f0d1a 100644
>> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
>> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
>> @@ -277,9 +277,21 @@ static void configure_dual_link_mode(struct intel_e=
ncoder *encoder,
>>  {
>>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>>  	struct intel_dsi *intel_dsi =3D enc_to_intel_dsi(encoder);
>> +	i915_reg_t dss_ctl1_reg, dss_ctl2_reg;
>>  	u32 dss_ctl1;
>>=20=20
>> -	dss_ctl1 =3D intel_de_read(dev_priv, DSS_CTL1);
>> +	/* FIXME: Move all DSS handling to intel_vdsc.c */
>> +	if (DISPLAY_VER(dev_priv) >=3D 12) {
>> +		struct intel_crtc *crtc =3D to_intel_crtc(pipe_config->uapi.crtc);
>> +
>> +		dss_ctl1_reg =3D ICL_PIPE_DSS_CTL1(crtc->pipe);
>> +		dss_ctl2_reg =3D ICL_PIPE_DSS_CTL2(crtc->pipe);
>> +	} else {
>> +		dss_ctl1_reg =3D DSS_CTL1;
>> +		dss_ctl2_reg =3D DSS_CTL2;
>> +	}
>> +
>> +	dss_ctl1 =3D intel_de_read(dev_priv, dss_ctl1_reg);
>
> Side note: should get rid of this rmw to make sure the thing
> fully configuerd the way we want...
>
> Anyways, this seems fine for now:
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, pushed to din.

BR,
Jani.

>
>>  	dss_ctl1 |=3D SPLITTER_ENABLE;
>>  	dss_ctl1 &=3D ~OVERLAP_PIXELS_MASK;
>>  	dss_ctl1 |=3D OVERLAP_PIXELS(intel_dsi->pixel_overlap);
>> @@ -299,14 +311,14 @@ static void configure_dual_link_mode(struct intel_=
encoder *encoder,
>>=20=20
>>  		dss_ctl1 &=3D ~LEFT_DL_BUF_TARGET_DEPTH_MASK;
>>  		dss_ctl1 |=3D LEFT_DL_BUF_TARGET_DEPTH(dl_buffer_depth);
>> -		intel_de_rmw(dev_priv, DSS_CTL2, RIGHT_DL_BUF_TARGET_DEPTH_MASK,
>> +		intel_de_rmw(dev_priv, dss_ctl2_reg, RIGHT_DL_BUF_TARGET_DEPTH_MASK,
>>  			     RIGHT_DL_BUF_TARGET_DEPTH(dl_buffer_depth));
>>  	} else {
>>  		/* Interleave */
>>  		dss_ctl1 |=3D DUAL_LINK_MODE_INTERLEAVE;
>>  	}
>>=20=20
>> -	intel_de_write(dev_priv, DSS_CTL1, dss_ctl1);
>> +	intel_de_write(dev_priv, dss_ctl1_reg, dss_ctl1);
>>  }
>>=20=20
>>  /* aka DSI 8X clock */
>> --=20
>> 2.39.1

--=20
Jani Nikula, Intel Open Source Graphics Center
