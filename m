Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DB7E425354
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Oct 2021 14:44:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 888C76F45D;
	Thu,  7 Oct 2021 12:44:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50D586F45D
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Oct 2021 12:44:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10129"; a="207049804"
X-IronPort-AV: E=Sophos;i="5.85,354,1624345200"; d="scan'208";a="207049804"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 05:44:04 -0700
X-IronPort-AV: E=Sophos;i="5.85,354,1624345200"; d="scan'208";a="488972560"
Received: from roliveir-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.41.10])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 05:44:03 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
In-Reply-To: <YV7jSPCIROxnh4HJ@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211007115629.4531-1-jani.nikula@intel.com>
 <YV7jSPCIROxnh4HJ@intel.com>
Date: Thu, 07 Oct 2021 15:43:59 +0300
Message-ID: <87a6jlypgw.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg2: fix snps buf trans for uhbr
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

On Thu, 07 Oct 2021, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Thu, Oct 07, 2021 at 02:56:29PM +0300, Jani Nikula wrote:
>> The UHBR check was using > instead of >=3D. Use the helper instead to
>> avoid mistakes. Also always use the non-UHBR values for HDMI.
>>=20
>> Fixes: 2817efaeb608 ("drm/i915/dg2: add SNPS PHY translations for UHBR l=
ink rates")
>> Reported-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c | 8 +++++---
>>  1 file changed, 5 insertions(+), 3 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/driver=
s/gpu/drm/i915/display/intel_ddi_buf_trans.c
>> index a2d39131ea53..a87a688d8475 100644
>> --- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
>> +++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
>> @@ -8,6 +8,7 @@
>>  #include "intel_ddi_buf_trans.h"
>>  #include "intel_de.h"
>>  #include "intel_display_types.h"
>> +#include "intel_dp.h"
>>=20=20
>>  /* HDMI/DVI modes ignore everything but the last 2 items. So we share
>>   * them for both DP and FDI transports, allowing those ports to
>> @@ -1611,10 +1612,11 @@ dg2_get_snps_buf_trans(struct intel_encoder *enc=
oder,
>>  		       const struct intel_crtc_state *crtc_state,
>>  		       int *n_entries)
>>  {
>> -	if (crtc_state->port_clock > 1000000)
>> -		return intel_get_buf_trans(&dg2_snps_trans_uhbr, n_entries);
>> -	else
>> +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI) ||
>> +	    !intel_dp_is_uhbr(crtc_state))
>
> Might be more clear flipped around to 'has_dp_encoder && is_uhbr'?

Silly me, forgot about intel_crtc_has_dp_encoder() since it's not used
in this file. v2 sent.

> Either way
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks,
Jani.

>
>>  		return intel_get_buf_trans(&dg2_snps_trans, n_entries);
>> +	else
>> +		return intel_get_buf_trans(&dg2_snps_trans_uhbr, n_entries);
>>  }
>>=20=20
>>  void intel_ddi_buf_trans_init(struct intel_encoder *encoder)
>> --=20
>> 2.30.2

--=20
Jani Nikula, Intel Open Source Graphics Center
