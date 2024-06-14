Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB49A908D32
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2024 16:18:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DDE810E09D;
	Fri, 14 Jun 2024 14:17:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Vx2hwDBE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBD5010ED5B;
 Fri, 14 Jun 2024 14:17:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718374677; x=1749910677;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=4EuT1YBGPUOXoD6g9i6RJ1mIlt+4VFrrXZkc+Sk01Mk=;
 b=Vx2hwDBEzQ7sKN1R25B702UwV3mpcPbeNDHkRZnbOXd/eX70VtqwhnzO
 DdumYYcVp2HjwCC5PgBdgRXjltvE4H3mneSo2nEGoskrQmhFbXG3+OY+J
 dR+87xuM7mlRZbzOlM6hiFM5oks67xjAJ4ItQeVanLlmH/dgBZ0Tapbi8
 4t9uBcPewKpo9eUaWom7oImhBws/YbN2a5TNBL6uW5d4HNsYX/XmjPOFb
 3X+0gsS/aeHifk085Gh+QVYxzBZFl8M1ztz44738yR5pl1LWZDLJD+bHr
 p8b0FMi18j3zfrnBCEjgAs6cV2go68GRUXA+lGxb1qHY0ABI0AKLDDQtG Q==;
X-CSE-ConnectionGUID: KS+u2krKS6Cz1V89AYcEYw==
X-CSE-MsgGUID: VlFHKxgfRmKeCTKykc/D1Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11103"; a="15042529"
X-IronPort-AV: E=Sophos;i="6.08,237,1712646000"; d="scan'208";a="15042529"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2024 07:17:56 -0700
X-CSE-ConnectionGUID: jHZt/h7vSJWHX3RkoDfYWg==
X-CSE-MsgGUID: 03Yt+w0GR8eLve8LQDf1hg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,237,1712646000"; d="scan'208";a="45628003"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.221])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2024 07:17:54 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 2/2] drm/i915/dsc: don't mess up splitter state in
 joiner or dsc config
In-Reply-To: <Zmwt2l3SFaE1icV8@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1718360103.git.jani.nikula@intel.com>
 <aea210a824084a0644de5a546e7ecb6dfc6bdef9.1718360103.git.jani.nikula@intel.com>
 <Zmwt2l3SFaE1icV8@intel.com>
Date: Fri, 14 Jun 2024 17:17:51 +0300
Message-ID: <87y177hals.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Fri, 14 Jun 2024, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Fri, Jun 14, 2024 at 01:16:04PM +0300, Jani Nikula wrote:
>> The driver handles splitter (for MSO) and joiner/dsc configuration in
>> different places. Avoid messing up the splitter hardware state when
>> enabling/disabling joiner or dsc. It should not be possible to enable
>> both joiner and splitter at the same time, but add more clarity to the
>> register use overall.
>>=20
>> Note: We should probably handle splitter for MSO as well as dual-link
>> DSI in intel_vdsc.c. Also, we have intel_uncompressed_joiner_enable()
>> but no corresponding disable.
>>=20
>> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_ddi.c       |  5 ++---
>>  drivers/gpu/drm/i915/display/intel_vdsc.c      | 12 +++++++++---
>>  drivers/gpu/drm/i915/display/intel_vdsc_regs.h |  1 +
>>  3 files changed, 12 insertions(+), 6 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/=
i915/display/intel_ddi.c
>> index bb13a3ca8c7c..49509a6599fe 100644
>> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>> @@ -2417,9 +2417,8 @@ static void intel_ddi_mso_configure(const struct i=
ntel_crtc_state *crtc_state)
>>  			dss1 |=3D SPLITTER_CONFIGURATION_4_SEGMENT;
>>  	}
>>=20=20
>> -	intel_de_rmw(i915, ICL_PIPE_DSS_CTL1(pipe),
>> -		     SPLITTER_ENABLE | SPLITTER_CONFIGURATION_MASK |
>> -		     OVERLAP_PIXELS_MASK, dss1);
>> +	/* Only touch the splitter */
>> +	intel_de_rmw(i915, ICL_PIPE_DSS_CTL1(pipe), SPLITTER_STATE, dss1);
>>  }
>>=20=20
>>  static u8 mtl_get_port_width(u8 lane_count)
>> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm=
/i915/display/intel_vdsc.c
>> index b9687b7692b8..a8671d3f1d41 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
>> @@ -766,7 +766,9 @@ void intel_uncompressed_joiner_enable(const struct i=
ntel_crtc_state *crtc_state)
>>  		else
>>  			dss_ctl1_val |=3D UNCOMPRESSED_JOINER_PRIMARY;
>>=20=20
>> -		intel_de_write(dev_priv, dss_ctl1_reg(crtc, crtc_state->cpu_transcode=
r), dss_ctl1_val);
>> +		/* Avoid touching the splitter */
>> +		intel_de_rmw(dev_priv, dss_ctl1_reg(crtc, crtc_state->cpu_transcoder),
>> +			     ~SPLITTER_STATE, dss_ctl1_val);
>>  	}
>>  }
>>=20=20
>> @@ -793,7 +795,9 @@ void intel_dsc_enable(const struct intel_crtc_state =
*crtc_state)
>>  		if (!intel_crtc_is_joiner_secondary(crtc_state))
>>  			dss_ctl1_val |=3D PRIMARY_BIG_JOINER_ENABLE;
>>  	}
>> -	intel_de_write(dev_priv, dss_ctl1_reg(crtc, crtc_state->cpu_transcoder=
), dss_ctl1_val);
>> +	/* Avoid touching the splitter */
>> +	intel_de_rmw(dev_priv, dss_ctl1_reg(crtc, crtc_state->cpu_transcoder),
>> +		     ~SPLITTER_STATE, dss_ctl1_val);
>>  	intel_de_write(dev_priv, dss_ctl2_reg(crtc, crtc_state->cpu_transcoder=
), dss_ctl2_val);
>>  }
>>=20=20
>> @@ -805,7 +809,9 @@ void intel_dsc_disable(const struct intel_crtc_state=
 *old_crtc_state)
>>  	/* Disable only if either of them is enabled */
>>  	if (old_crtc_state->dsc.compression_enable ||
>>  	    old_crtc_state->joiner_pipes) {
>> -		intel_de_write(dev_priv, dss_ctl1_reg(crtc, old_crtc_state->cpu_trans=
coder), 0);
>> +		/* Avoid touching the splitter */
>> +		intel_de_rmw(dev_priv, dss_ctl1_reg(crtc, old_crtc_state->cpu_transco=
der),
>> +			     ~SPLITTER_STATE, 0);
>>  		intel_de_write(dev_priv, dss_ctl2_reg(crtc, old_crtc_state->cpu_trans=
coder), 0);
>>  	}
>>  }
>> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h b/drivers/gp=
u/drm/i915/display/intel_vdsc_regs.h
>> index f921ad67b587..3734cd96f55e 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
>> +++ b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
>> @@ -37,6 +37,7 @@
>>  #define  SPLITTER_CONFIGURATION_MASK		REG_GENMASK(26, 25)
>>  #define  SPLITTER_CONFIGURATION_2_SEGMENT	REG_FIELD_PREP(SPLITTER_CONFI=
GURATION_MASK, 0)
>>  #define  SPLITTER_CONFIGURATION_4_SEGMENT	REG_FIELD_PREP(SPLITTER_CONFI=
GURATION_MASK, 1)
>> +#define  SPLITTER_STATE				(SPLITTER_ENABLE | SPLITTER_CONFIGURATION_MA=
SK | OVERLAP_PIXELS_MASK)
>
> Not a big fan of this. I'd rather explicicitly list the bits
> we actually want to modify in each call site.
>
> Also not a big fan of the rmws. I think in the future we might be
> able to adjust some DSC stuff via fastsets, and that means no rmws
> because we then want to do it via DSB. But not sure if the DSS
> registers specifically would be involved in that, and I guess we
> already had some rmws in there so it'll require work anyway. So
> no hard objection to using rmw for now.

I'm definitely not a fan of the rmws myself. It's just that there's
already rmw for splitter in both dual-link DSI and eDP MSO. And I think
they're both bust when combined with DSC.

I think the proper fix would be to handle everything related to DSS CTL
in the same place, but I'm not even sure the modeset sequences for DSI
and MSO are flexible enough for that. I don't know. Maybe the stuff
could be written in two places as long as the single point of truth
knows what to put there and when. Seems a bit involved right now.

So, uh, is the compromise to drop this SPLITTER_STATE, and have each
place rmw into the register just what each place needs?


BR,
Jani.



>
>>  #define  UNCOMPRESSED_JOINER_PRIMARY		(1 << 21)
>>  #define  UNCOMPRESSED_JOINER_SECONDARY		(1 << 20)
>>=20=20
>> --=20
>> 2.39.2

--=20
Jani Nikula, Intel
