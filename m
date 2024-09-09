Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 614ED971932
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2024 14:20:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D080C10E502;
	Mon,  9 Sep 2024 12:20:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Cod4rzv7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CB9F10E500
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Sep 2024 12:20:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725884431; x=1757420431;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=Q/Fn17MO6P2yyEXpdsi+V+omADimrDshqKCP9xO3Z2M=;
 b=Cod4rzv7k8MyL05h0I6yd4t9LH9BIHK5gPpN/wYiv5AZVqp6A1hqreYS
 khHMrOJeNsZ2vwvA1w8xANL3Kpsxon7E8jKtTDdcQHot4xlExlvHb3guC
 Sj8IKSle9kDei5cbfMla52WIeBVQnOfjUCQZ+S7gSK0X+98KuvllI+tzc
 GDaj0pseHihiCmRRsM1p7V4srzEv6t3XnIBPLc+zEmRtYObQILMt0lr0u
 KhJV3Y/PEhLJrzdv1BwkdTgGZNj3z/TbrY+FJD1IUaNSIQbg0IooxJm9y
 HcsUE2e8xrCDSDYzTXyj7EWDxyAcrltM6PXOI9GZoQ8ieYKjfgERVANs3 A==;
X-CSE-ConnectionGUID: Vzy1wPBUSH2+jw/7bXhCnw==
X-CSE-MsgGUID: qvTvLND6QDGYFiABRsOSXQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11189"; a="27501237"
X-IronPort-AV: E=Sophos;i="6.10,214,1719903600"; d="scan'208";a="27501237"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 05:20:31 -0700
X-CSE-ConnectionGUID: viPfCLMeRTuZfVLRiwUYHQ==
X-CSE-MsgGUID: 7WiVVeERRF6JQAjru2DbUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,214,1719903600"; d="scan'208";a="66374796"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.176])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 05:20:30 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 3/4] drm/i915/pps: add intel_pps_dp_power_down()
In-Reply-To: <ZtiCbV1RN9o_uiIf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1725458428.git.jani.nikula@intel.com>
 <19beb306efff2e4380d7eed18f6262361ffb6ece.1725458428.git.jani.nikula@intel.com>
 <ZtiCbV1RN9o_uiIf@intel.com>
Date: Mon, 09 Sep 2024 15:20:27 +0300
Message-ID: <871q1tm31w.fsf@intel.com>
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

On Wed, 04 Sep 2024, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Wed, Sep 04, 2024 at 05:02:33PM +0300, Jani Nikula wrote:
>> Add intel_pps_dp_power_down() and move the VLV/CHV active pipe clear
>> there from intel_dp_link_down(), hiding the PPS pipe details inside PPS
>> code.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/g4x_dp.c    |  9 +--------
>>  drivers/gpu/drm/i915/display/intel_pps.c | 16 ++++++++++++++++
>>  drivers/gpu/drm/i915/display/intel_pps.h |  1 +
>>  3 files changed, 18 insertions(+), 8 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i91=
5/display/g4x_dp.c
>> index 1f9812223263..98405fbd0e04 100644
>> --- a/drivers/gpu/drm/i915/display/g4x_dp.c
>> +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
>> @@ -475,14 +475,7 @@ intel_dp_link_down(struct intel_encoder *encoder,
>>  		intel_set_pch_fifo_underrun_reporting(dev_priv, PIPE_A, true);
>>  	}
>>=20=20
>> -	msleep(intel_dp->pps.panel_power_down_delay);
>> -
>> -	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
>> -		intel_wakeref_t wakeref;
>> -
>> -		with_intel_pps_lock(intel_dp, wakeref)
>> -			intel_dp->pps.active_pipe =3D INVALID_PIPE;
>> -	}
>> +	intel_pps_dp_power_down(intel_dp);
>>  }
>>=20=20
>>  static void g4x_dp_audio_enable(struct intel_encoder *encoder,
>> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/=
i915/display/intel_pps.c
>> index 9e54acfea992..a7f7e5e1f3aa 100644
>> --- a/drivers/gpu/drm/i915/display/intel_pps.c
>> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
>> @@ -1599,6 +1599,22 @@ static void pps_init_registers(struct intel_dp *i=
ntel_dp, bool force_disable_vdd
>>  		    (intel_de_read(display, regs.pp_ctrl) & BXT_POWER_CYCLE_DELAY_MAS=
K));
>>  }
>>=20=20
>> +/* Call on all DP, not just eDP */
>> +void intel_pps_dp_power_down(struct intel_dp *intel_dp)
>
> The name seems to imply this powers down something, which it doesn't.

Agreed.

>
>> +{
>> +	struct intel_display *display =3D to_intel_display(intel_dp);
>> +	struct drm_i915_private *i915 =3D to_i915(display->drm);
>> +
>> +	msleep(intel_dp->pps.panel_power_down_delay);
>
> I can't actually figure out why this msleep() even exists. We already
> waited for the power down delay (by waiting for the pps state machine)
> when we turned off the panel power, so this seems completely redundant.
>
> The whole pre-ddi modeset sequence is a bit weird because the port
> enable/disable essentially happens on the wrong side of panel power
> enable/disable. But I guess that's just how the hw works and the PPS
> somehow makes sure things happen in the right order. And I suppose
> the magic PPS register write protect thing even prevents doing it
> in the opposite order (although IIRC we always disable the write
> protect mechanism).
>
>> +
>> +	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) {
>> +		intel_wakeref_t wakeref;
>> +
>> +		with_intel_pps_lock(intel_dp, wakeref)
>> +			intel_dp->pps.active_pipe =3D INVALID_PIPE;
>> +	}
>
> This part is basically the counterpart to vlv_pps_init(),
> so the function naming should probably reflect that somehow.
> vlv_pps_port_{enable,disable}() or something like that?

I ended up doing things a bit differently across the entire series,
properly isolating pps_pipe/active_pipe to VLV/CHV code only, and adding
functions for that stuff.

I left the above msleep() where it is now. Didn't dare touch it yet, and
it should be a separate change to remove it.

New version of the whole series at [1].

BR,
Jani.


[1] https://lore.kernel.org/all/cover.1725883885.git.jani.nikula@intel.com/





>
>> +}
>> +
>>  /* Call on all DP, not just eDP */
>>  void intel_pps_dp_encoder_reset(struct intel_dp *intel_dp)
>>  {
>> diff --git a/drivers/gpu/drm/i915/display/intel_pps.h b/drivers/gpu/drm/=
i915/display/intel_pps.h
>> index 8dbea05f498d..42f0377a93a8 100644
>> --- a/drivers/gpu/drm/i915/display/intel_pps.h
>> +++ b/drivers/gpu/drm/i915/display/intel_pps.h
>> @@ -45,6 +45,7 @@ void intel_pps_init_late(struct intel_dp *intel_dp);
>>=20=20
>>  void intel_pps_dp_init(struct intel_dp *intel_dp);
>>  void intel_pps_dp_encoder_reset(struct intel_dp *intel_dp);
>> +void intel_pps_dp_power_down(struct intel_dp *intel_dp);
>>  void intel_pps_reset_all(struct intel_display *display);
>>=20=20
>>  void vlv_pps_init(struct intel_encoder *encoder,
>> --=20
>> 2.39.2

--=20
Jani Nikula, Intel
