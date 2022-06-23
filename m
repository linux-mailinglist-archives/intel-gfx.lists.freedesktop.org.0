Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 867695581C5
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jun 2022 19:05:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAB4E10E07A;
	Thu, 23 Jun 2022 17:05:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58B9810E07A
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jun 2022 17:05:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656003912; x=1687539912;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=7CGjtPx076QOTOaAIIGECVoADRCdYnW4LEF5qMIx+x0=;
 b=AnTxUNEnniY4DIhF9Ce2md4lLQgS1WJ1k5oMoRQzWkTZttaAc1dwaYSI
 RACEr2vy6PhcsJrvuucEY/CxCxTf8icO/8hjVpgw9HvOABIy8EY9ioBNN
 2yznOp+JjCxiHJ7W52YCht/mwVc3VhSdTsjG6eTTEbKwTWa9G4X5GfY0O
 +CTch3hiNLhQruyAJ+uoKChgX4O/u9cBo5zFFo8Sjjbt2Da3cbMzmHR6f
 ZXYR0XSB7Dw6wemnTiZA/V3j6IfauGr5nOrwbm73oplcSdzvqaCNxjR0J
 nICPJHW0WxCwgFT+6efoznZ84CVpLFTkyc829z4zoq5ye5ReIaOkx7rwC Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10387"; a="281509784"
X-IronPort-AV: E=Sophos;i="5.92,216,1650956400"; d="scan'208";a="281509784"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2022 10:04:59 -0700
X-IronPort-AV: E=Sophos;i="5.92,216,1650956400"; d="scan'208";a="644836805"
Received: from anefedov-mobl.ccr.corp.intel.com (HELO localhost)
 ([10.252.38.20])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2022 10:04:57 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <YrQxgbOEmVNnyPf8@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220621123732.1118437-1-jani.nikula@intel.com>
 <YrQxgbOEmVNnyPf8@intel.com>
Date: Thu, 23 Jun 2022 20:04:54 +0300
Message-ID: <87y1xnmhu1.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/bios: debug log ddi port info
 after parsing
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

On Thu, 23 Jun 2022, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Tue, Jun 21, 2022 at 03:37:32PM +0300, Jani Nikula wrote:
>> The ddc pin and aux channel sanitization may disable DVI/HDMI and DP,
>> respectively, of ports parsed earlier, in "last one wins" fashion. With
>> parsing and printing interleaved, we'll end up logging support first and
>> disabling later anyway.
>>=20
>> Now that we've split ddi port info parsing and printing, take it further
>> by doing the printing in a separate loop, fixing the logging.
>>=20
>> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Just realized this also changes the printing order from VBT child device
order to port number order. Is that a bug or a feature?

BR,
Jani.

>
>> ---
>>  drivers/gpu/drm/i915/display/intel_bios.c | 8 ++++++--
>>  1 file changed, 6 insertions(+), 2 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm=
/i915/display/intel_bios.c
>> index ab23324c0402..51dde5bfd956 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bios.c
>> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
>> @@ -2670,8 +2670,6 @@ static void parse_ddi_port(struct intel_bios_encod=
er_data *devdata)
>>=20=20
>>  	sanitize_device_type(devdata, port);
>>=20=20
>> -	print_ddi_port(devdata, port);
>> -
>>  	if (intel_bios_encoder_supports_dvi(devdata))
>>  		sanitize_ddc_pin(devdata, port);
>>=20=20
>> @@ -2689,12 +2687,18 @@ static bool has_ddi_port_info(struct drm_i915_pr=
ivate *i915)
>>  static void parse_ddi_ports(struct drm_i915_private *i915)
>>  {
>>  	struct intel_bios_encoder_data *devdata;
>> +	enum port port;
>>=20=20
>>  	if (!has_ddi_port_info(i915))
>>  		return;
>>=20=20
>>  	list_for_each_entry(devdata, &i915->vbt.display_devices, node)
>>  		parse_ddi_port(devdata);
>> +
>> +	for_each_port(port) {
>> +		if (i915->vbt.ports[port])
>> +			print_ddi_port(i915->vbt.ports[port], port);
>> +	}
>>  }
>>=20=20
>>  static void
>> --=20
>> 2.30.2

--=20
Jani Nikula, Intel Open Source Graphics Center
