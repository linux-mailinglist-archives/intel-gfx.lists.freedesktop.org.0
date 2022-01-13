Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01BD648D8CA
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jan 2022 14:24:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 976FF112419;
	Thu, 13 Jan 2022 13:24:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65D13112419
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jan 2022 13:24:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642080257; x=1673616257;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=wO5rDFq5rT8nLyo1YZntqmezy6dAuA8O5RJsrztqqL4=;
 b=XPxP4942REaizEIbV6xCO8ZSwp01PMMuvyAjeNYHnqWSvHIELyMrRphi
 cXHnDFEZ7SROWIAp2rvDxGwF8g9YkJqu65Z0Vmd+ZqNAdK890NtLb3SMU
 vzvfJ2PPSc4rSp42CgeSettrmArUyQQg4ujBJ84kEYE4Qp4SsvNMMuf6i
 VyMacfw8+Jh5wQQYpkaKXcVC4cjhiNF+9WPQYxGM4gXuo9EQ5KUb+K4ic
 QeBuYOMaUPNR5AlP892Ql/qzl6d6yi3Y94P/DR91pIj0jHlUuDwESqFSD
 PCWEK0fCOhsM0kqEgFhyF6wM6vSefrsFiY7qPYGE7t3AsnjLD2b88XSVQ w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10225"; a="241565776"
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="241565776"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 05:24:16 -0800
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="515922317"
Received: from joneil3-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.0.221])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 05:24:15 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <Yd7eYRIF92zDERP0@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220112105703.1151391-1-jani.nikula@intel.com>
 <Yd7eYRIF92zDERP0@intel.com>
Date: Thu, 13 Jan 2022 15:24:12 +0200
Message-ID: <87ee5b7oqr.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH RESEND] drm/i915/dp: make
 intel_dp_pack_aux() static again
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

On Wed, 12 Jan 2022, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Wed, Jan 12, 2022 at 12:57:03PM +0200, Jani Nikula wrote:
>> The last user of intel_dp_pack_aux() outside intel_dp_aux.c got removed
>> in commit ad26451a7902 ("drm/i915/display: Drop PSR support from HSW and
>> BDW"). Make the function static again.
>>=20
>> Rename the pack/unpack functions to follow the usual naming conventions
>> while at it.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Pushed, thanks for the review.

>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dp_aux.c | 8 ++++----
>>  drivers/gpu/drm/i915/display/intel_dp_aux.h | 4 ----
>>  2 files changed, 4 insertions(+), 8 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/d=
rm/i915/display/intel_dp_aux.c
>> index 5fbb767fcd63..2bc119374555 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
>> @@ -10,7 +10,7 @@
>>  #include "intel_pps.h"
>>  #include "intel_tc.h"
>>=20=20
>> -u32 intel_dp_pack_aux(const u8 *src, int src_bytes)
>> +static u32 intel_dp_aux_pack(const u8 *src, int src_bytes)
>>  {
>>  	int i;
>>  	u32 v =3D 0;
>> @@ -22,7 +22,7 @@ u32 intel_dp_pack_aux(const u8 *src, int src_bytes)
>>  	return v;
>>  }
>>=20=20
>> -static void intel_dp_unpack_aux(u32 src, u8 *dst, int dst_bytes)
>> +static void intel_dp_aux_unpack(u32 src, u8 *dst, int dst_bytes)
>>  {
>>  	int i;
>>=20=20
>> @@ -267,7 +267,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
>>  			for (i =3D 0; i < send_bytes; i +=3D 4)
>>  				intel_uncore_write(uncore,
>>  						   ch_data[i >> 2],
>> -						   intel_dp_pack_aux(send + i,
>> +						   intel_dp_aux_pack(send + i,
>>  								     send_bytes - i));
>>=20=20
>>  			/* Send the command and wait for it to complete */
>> @@ -352,7 +352,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
>>  		recv_bytes =3D recv_size;
>>=20=20
>>  	for (i =3D 0; i < recv_bytes; i +=3D 4)
>> -		intel_dp_unpack_aux(intel_uncore_read(uncore, ch_data[i >> 2]),
>> +		intel_dp_aux_unpack(intel_uncore_read(uncore, ch_data[i >> 2]),
>>  				    recv + i, recv_bytes - i);
>>=20=20
>>  	ret =3D recv_bytes;
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.h b/drivers/gpu/d=
rm/i915/display/intel_dp_aux.h
>> index 4afbe76217b9..738577537bc7 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.h
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.h
>> @@ -6,12 +6,8 @@
>>  #ifndef __INTEL_DP_AUX_H__
>>  #define __INTEL_DP_AUX_H__
>>=20=20
>> -#include <linux/types.h>
>> -
>>  struct intel_dp;
>>=20=20
>> -u32 intel_dp_pack_aux(const u8 *src, int src_bytes);
>> -
>>  void intel_dp_aux_fini(struct intel_dp *intel_dp);
>>  void intel_dp_aux_init(struct intel_dp *intel_dp);
>>=20=20
>> --=20
>> 2.30.2

--=20
Jani Nikula, Intel Open Source Graphics Center
