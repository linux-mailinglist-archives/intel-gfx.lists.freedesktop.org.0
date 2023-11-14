Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 656CA7EADFA
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Nov 2023 11:26:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD08910E1F5;
	Tue, 14 Nov 2023 10:26:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FC0010E1F3
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Nov 2023 10:26:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699957610; x=1731493610;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=nUViM4G1kBgF6NRfWMVT/HQeA6j8dOBi1CDX6rehp4k=;
 b=P72qSYbN8jinMYzD9quPNtT8+XzE3E5Esl5zJfG7x3W8aPF0WxAUsUWY
 0S8PLYw0rJa1H67IT6MHWc0xtiL1AHn7SHvZResn39+aSlVXoYe9sufIo
 cO2hQkwur8+X+GfW0URahkspPRi+t584oO5MbM0PgZJQ+F9reIMNDl9se
 ck6CsHBAL3zyOJpCi7sOFkXhWf9COal6QBKmxNM8wKJsdhDa9YIi5Uw3U
 sO+WV0ikAZyWippDtwk3Bt/abNeoOZpFgoCnKNZ43KKi3LlnbecjZhL65
 lUozhSjPRFydi+jq0w+ZZOCp091yCw2xZicpbHJ2VAPIujgFWhF3hSb2S g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="3687053"
X-IronPort-AV: E=Sophos;i="6.03,301,1694761200"; 
   d="scan'208";a="3687053"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2023 02:26:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="855240223"
X-IronPort-AV: E=Sophos;i="6.03,301,1694761200"; d="scan'208";a="855240223"
Received: from hatran1-mobl1.ccr.corp.intel.com (HELO localhost)
 ([10.252.56.145])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2023 02:26:48 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <ZVM6UwJOeOU_9Pdl@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231113164711.4100548-1-jani.nikula@intel.com>
 <20231113164711.4100548-3-jani.nikula@intel.com>
 <ZVM6UwJOeOU_9Pdl@intel.com>
Date: Tue, 14 Nov 2023 12:26:46 +0200
Message-ID: <87pm0csk9l.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: convert
 vlv_dpio_read()/write() from pipe to phy
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 14 Nov 2023, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Mon, Nov 13, 2023 at 06:47:10PM +0200, Jani Nikula wrote:
>> vlv_dpio_read() and vlv_dpio_write() really operate on the phy, not
>> pipe. Passing the pipe instead of the phy as parameter is supposed to be
>> a convenience, but when the caller has the phy, it becomes an
>> inconvenience. See e.g. chv_dpio_cmn_power_well_enable() and
>> assert_chv_phy_powergate().
>>=20
>> Figure out the phy in the callers, and pass phy to the dpio functions.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  .../i915/display/intel_display_power_well.c   |  23 +--
>>  drivers/gpu/drm/i915/display/intel_dpio_phy.c | 160 +++++++++---------
>>  drivers/gpu/drm/i915/display/intel_dpll.c     | 106 ++++++------
>>  drivers/gpu/drm/i915/vlv_sideband.c           |  10 +-
>>  drivers/gpu/drm/i915/vlv_sideband.h           |   6 +-
>>  5 files changed, 152 insertions(+), 153 deletions(-)
> <snip>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu=
/drm/i915/display/intel_dpio_phy.c
>> index d6af46e33424..32886c0ec2cc 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
>> @@ -1107,24 +1109,24 @@ void vlv_phy_pre_encoder_enable(struct intel_enc=
oder *encoder,
>>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>>  	enum dpio_channel port =3D vlv_dig_port_to_channel(dig_port);
>> -	enum pipe pipe =3D crtc->pipe;
>> +	enum dpio_phy phy =3D vlv_pipe_to_phy(crtc->pipe);
>>  	u32 val;
>>=20=20
>>  	vlv_dpio_get(dev_priv);
>>=20=20
>>  	/* Enable clock channels for this port */
>> -	val =3D vlv_dpio_read(dev_priv, pipe, VLV_PCS01_DW8(port));
>> +	val =3D vlv_dpio_read(dev_priv, phy, VLV_PCS01_DW8(port));
>>  	val =3D 0;
>> -	if (pipe)
>> +	if (phy)
>
> That is wrong. Apart from that looks identical to what I have in
> one of my branches :)

Whoops, over eager replace. Good catch!

>
> With that bogus change dropped:
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks!

--=20
Jani Nikula, Intel
