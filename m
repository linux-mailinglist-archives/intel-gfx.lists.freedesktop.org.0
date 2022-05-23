Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 69788530B0A
	for <lists+intel-gfx@lfdr.de>; Mon, 23 May 2022 10:21:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90FC110EFE5;
	Mon, 23 May 2022 08:21:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 738A010EE2F
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 May 2022 08:21:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653294110; x=1684830110;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=Alf7bppXqCKKA5BP/GkDIvv5noKEZJfhbacpBTbLTrY=;
 b=cqGo4sjYF3D+xyubLuD0g/M5EYvfmBPxSw06NIrsLvoDvw71agRfFrul
 X6Hxg7PPenWbT/E5dFH1BBK/T18ivlrJj1NyScWBHiD/JF24smkyTiRmt
 XyXAkHCrdjpQDoXB1tDcXl0l/wFS+VWjjuKoKvBdZG4Qw0z+WcP2yEfb+
 tbLK833LoasS4MYtLapkUst2mv3jWR6Mvk2iASsRVEgbVd4HVyiupw9Wk
 khK7IGUJkeL03u57kTRBjR6m9+n2MdOVC+kqJdF13/F5C3196pi1ymc7v
 NFPNTgi1ol++nFQslw6C8KnOYdX2z2cVEjaUhtAI5fbtksb+ME1brJrIi g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10355"; a="271962147"
X-IronPort-AV: E=Sophos;i="5.91,246,1647327600"; d="scan'208";a="271962147"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2022 01:21:49 -0700
X-IronPort-AV: E=Sophos;i="5.91,246,1647327600"; d="scan'208";a="744624827"
Received: from ksadlows-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.135.186])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2022 01:21:47 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <YofEFRffsOdEcfRO@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220520094600.2066945-1-jani.nikula@intel.com>
 <YofEFRffsOdEcfRO@intel.com>
Date: Mon, 23 May 2022 11:21:44 +0300
Message-ID: <87v8twbqw7.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsi: fix VBT send packet port
 selection for ICL+
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

On Fri, 20 May 2022, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Fri, May 20, 2022 at 12:46:00PM +0300, Jani Nikula wrote:
>> The VBT send packet port selection was never updated for ICL+ where the
>> 2nd link is on port B instead of port C as in VLV+ DSI.
>>=20
>> First, single link DSI needs to use the configured port instead of
>> relying on the VBT sequence block port. Remove the hard-coded port C
>> check here and make it generic. For reference, see commit f915084edc5a
>> ("drm/i915: Changes related to the sequence port no for") for the
>> original VLV specific fix.
>>=20
>> Second, the sequence block port number is either 0 or 1, where 1
>> indicates the 2nd link. Remove the hard-coded port C here for 2nd
>> link. (This could be a "find second set bit" on DSI ports, but just
>> check the two possible options.)
>>=20
>> Third, sanity check the result with a warning to avoid a NULL pointer
>> dereference.
>>=20
>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5984
>> Cc: stable@vger.kernel.org # v4.19+
>> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 33 +++++++++++++-------
>>  1 file changed, 22 insertions(+), 11 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/=
drm/i915/display/intel_dsi_vbt.c
>> index f370e9c4350d..dd24aef925f2 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
>> @@ -125,9 +125,25 @@ struct i2c_adapter_lookup {
>>  #define  ICL_GPIO_DDPA_CTRLCLK_2	8
>>  #define  ICL_GPIO_DDPA_CTRLDATA_2	9
>>=20=20
>> -static enum port intel_dsi_seq_port_to_port(u8 port)
>> +static enum port intel_dsi_seq_port_to_port(struct intel_dsi *intel_dsi,
>> +					    u8 seq_port)
>>  {
>> -	return port ? PORT_C : PORT_A;
>> +	/*
>> +	 * If single link DSI is being used on any port, the VBT sequence block
>> +	 * send packet apparently always has 0 for the port. Just use the port
>> +	 * we have configured, and ignore the sequence block port.
>> +	 */
>> +	if (hweight8(intel_dsi->ports) =3D=3D 1)
>> +		return ffs(intel_dsi->ports) - 1;
>> +
>> +	if (seq_port) {
>> +		if (intel_dsi->ports & PORT_B)
>> +			return PORT_B;
>> +		else if (intel_dsi->ports & PORT_C)
>> +			return PORT_C;
>> +	}
>> +
>> +	return PORT_A;
>
> Hmm. I guess a bit more generic way to express that could be
> to just pick the Nth set bit from intel_dsi->ports, where N=3D=3Dseq_port.
> Assuming seq_port is just an index. But I guess we're not really
> expecting to grow more DSI ports any time soon, so this seems
> sufficient for the current situation.
>
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, pushed to drm-intel-next.

BR,
Jani.


>
>>  }
>>=20=20
>>  static const u8 *mipi_exec_send_packet(struct intel_dsi *intel_dsi,
>> @@ -149,15 +165,10 @@ static const u8 *mipi_exec_send_packet(struct inte=
l_dsi *intel_dsi,
>>=20=20
>>  	seq_port =3D (flags >> MIPI_PORT_SHIFT) & 3;
>>=20=20
>> -	/* For DSI single link on Port A & C, the seq_port value which is
>> -	 * parsed from Sequence Block#53 of VBT has been set to 0
>> -	 * Now, read/write of packets for the DSI single link on Port A and
>> -	 * Port C will based on the DVO port from VBT block 2.
>> -	 */
>> -	if (intel_dsi->ports =3D=3D (1 << PORT_C))
>> -		port =3D PORT_C;
>> -	else
>> -		port =3D intel_dsi_seq_port_to_port(seq_port);
>> +	port =3D intel_dsi_seq_port_to_port(intel_dsi, seq_port);
>> +
>> +	if (drm_WARN_ON(&dev_priv->drm, !intel_dsi->dsi_hosts[port]))
>> +		goto out;
>>=20=20
>>  	dsi_device =3D intel_dsi->dsi_hosts[port]->device;
>>  	if (!dsi_device) {
>> --=20
>> 2.30.2

--=20
Jani Nikula, Intel Open Source Graphics Center
