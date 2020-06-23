Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CC0C205814
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2020 18:58:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75F766EA10;
	Tue, 23 Jun 2020 16:58:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FF1B6EA10
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jun 2020 16:58:43 +0000 (UTC)
IronPort-SDR: 2HoExPwYFTMMuz+BGjixyuJGUbEGIg8zWCG1eQfYhrTmdcY3f9RzT7px8mAKV+ReKglyUPNMHC
 9smpgJoA6PhA==
X-IronPort-AV: E=McAfee;i="6000,8403,9661"; a="205654350"
X-IronPort-AV: E=Sophos;i="5.75,271,1589266800"; d="scan'208";a="205654350"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2020 09:58:27 -0700
IronPort-SDR: A5eAzjQ/KfyasPXJNyWhGsbYBLGoFII/F84ZOnGgrCQmhzAaPnfQVqGe+Aw9QyiZG9cgnemsmr
 ZoJ8ByXe2CeA==
X-IronPort-AV: E=Sophos;i="5.75,271,1589266800"; d="scan'208";a="279174394"
Received: from unknown (HELO ldmartin-desk1) ([10.24.14.36])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2020 09:58:27 -0700
Date: Tue, 23 Jun 2020 09:58:27 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Message-ID: <20200623165827.tujntoytfsrm5hvt@ldmartin-desk1>
References: <20200622232821.3093-1-lucas.demarchi@intel.com>
 <20200622232821.3093-2-lucas.demarchi@intel.com>
 <20200623141606.GV6112@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200623141606.GV6112@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/display: remove alias to
 dig_port
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
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jun 23, 2020 at 05:16:06PM +0300, Ville Syrj=E4l=E4 wrote:
>On Mon, Jun 22, 2020 at 04:28:20PM -0700, Lucas De Marchi wrote:
>> We don't need intel_dig_port and dig_port to refer to the same thing.
>> Prefer the latter.
>>
>> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_ddi.c | 7 +++----
>>  1 file changed, 3 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/=
i915/display/intel_ddi.c
>> index ca7bb2294d2b..58c9f3d3e7ce 100644
>> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>> @@ -3382,11 +3382,10 @@ static void intel_ddi_pre_enable_hdmi(struct int=
el_atomic_state *state,
>>  				      const struct intel_crtc_state *crtc_state,
>>  				      const struct drm_connector_state *conn_state)
>>  {
>> -	struct intel_digital_port *intel_dig_port =3D enc_to_dig_port(encoder);
>> -	struct intel_hdmi *intel_hdmi =3D &intel_dig_port->hdmi;
>> +	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
>> +	struct intel_hdmi *intel_hdmi =3D &dig_port->hdmi;
>>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>>  	int level =3D intel_ddi_hdmi_level(encoder);
>> -	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
>>
>>  	intel_dp_dual_mode_set_tmds_output(intel_hdmi, true);
>>  	intel_ddi_clk_select(encoder, crtc_state);
>> @@ -3413,7 +3412,7 @@ static void intel_ddi_pre_enable_hdmi(struct intel=
_atomic_state *state,
>>
>>  	intel_ddi_enable_pipe_clock(encoder, crtc_state);
>>
>> -	intel_dig_port->set_infoframes(encoder,
>> +	dig_port->set_infoframes(encoder,
>>  				       crtc_state->has_infoframe,
>>  				       crtc_state, conn_state);
>
>Misalinged parameters staring me in the face here. Didn't trawl the
>other patch for similar since it's so big.

I did review the second one for misaligned things. I think I forgot to
go back to this one because only after some review I noticed checkpatch
was not failing for me for these misaligned parameters, not sure why.

Lucas De Marchi

>
>>  }
>> --
>> 2.26.2
>>
>> _______________________________________________
>> Intel-gfx mailing list
>> Intel-gfx@lists.freedesktop.org
>> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
>
>-- =

>Ville Syrj=E4l=E4
>Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
