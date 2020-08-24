Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CC0D250AD4
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Aug 2020 23:27:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 592636E5C8;
	Mon, 24 Aug 2020 21:26:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 205FA6E5C8
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Aug 2020 21:26:57 +0000 (UTC)
IronPort-SDR: AFF7VlVMn37k7/7f6YWMguth7se17FjD/Of8xIR9pWyyLjz2Dz210Sehb4mRu4tQDmtDln5Pj1
 GRbOwPEgIEDw==
X-IronPort-AV: E=McAfee;i="6000,8403,9723"; a="220259169"
X-IronPort-AV: E=Sophos;i="5.76,349,1592895600"; d="scan'208";a="220259169"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2020 14:26:56 -0700
IronPort-SDR: 0+/j3qWKKhueMIDepWvErZya2dOnHDD2Rv1oMwF8RWN8zxi9HWgE+i0Tlc/+7Yj4CWzE/b6/3p
 bDcHoU5qmn0Q==
X-IronPort-AV: E=Sophos;i="5.76,349,1592895600"; d="scan'208";a="443373135"
Received: from kdonepud-mobl.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.251.128.135])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2020 14:26:56 -0700
Date: Mon, 24 Aug 2020 14:26:55 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20200824212655.k7halvi2ozddypls@ldmartin-desk1>
References: <20200724213918.27424-1-lucas.demarchi@intel.com>
 <20200724213918.27424-22-lucas.demarchi@intel.com>
 <9d696aac9566c34e9a542bff324390e9016dbe15.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9d696aac9566c34e9a542bff324390e9016dbe15.camel@intel.com>
Subject: Re: [Intel-gfx] [PATCH v5 21/22] drm/i915/dg1: DG1 does not support
 DC6
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Aug 03, 2020 at 04:33:45PM -0700, Jose Souza wrote:
>On Fri, 2020-07-24 at 14:39 -0700, Lucas De Marchi wrote:
>> From: Anshuman Gupta <
>> anshuman.gupta@intel.com
>> >
>>
>> DC6 is not supported on DG1, so change the allowed DC mask for DG1.
>>
>> Cc: Uma Shankar <
>> uma.shankar@intel.com
>> >
>> Signed-off-by: Anshuman Gupta <
>> anshuman.gupta@intel.com
>> >
>> ---
>>  drivers/gpu/drm/i915/display/intel_display_power.c | 5 ++++-
>>  1 file changed, 4 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/driver=
s/gpu/drm/i915/display/intel_display_power.c
>> index 21f39c94056e..389a0f2d3a14 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
>> @@ -4689,7 +4689,10 @@ static u32 get_allowed_dc_mask(const struct drm_i=
915_private *dev_priv,
>>  	int max_dc;
>>
>>  	if (INTEL_GEN(dev_priv) >=3D 12) {
>> -		max_dc =3D 4;
>> +		if (IS_DG1(dev_priv))
>
>Better change to IS_DGFX() as DC6 is a SOC power-saving state, no discrete=
 card will enter it.
>With this change:

that doesn't seem true... it's more a dg1 thing than general dgfx

Lucas De Marchi

>Reviewed-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
>
>> +			max_dc =3D 3;
>> +		else
>> +			max_dc =3D 4;
>>  		/*
>>  		 * DC9 has a separate HW flow from the rest of the DC states,
>>  		 * not depending on the DMC firmware. It's needed by system
>>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
