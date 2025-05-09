Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36BBEAB0B8C
	for <lists+intel-gfx@lfdr.de>; Fri,  9 May 2025 09:22:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3988410E9CB;
	Fri,  9 May 2025 07:22:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VE/aInS8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD48510E9CA;
 Fri,  9 May 2025 07:22:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746775368; x=1778311368;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=GfyXaiAnY4jRY1mehFFpKN0RG5R+2r+G3Zv5HRvEimE=;
 b=VE/aInS8qgPdB2PQAGYm/HEV49K7nH9P9d/NOqYdhGmTYKiYX0YbubjG
 eKq9bYP4wqm+yczZngYajx8cfmxVElhZMu0r0k1/1kdG1l8faS05jHSZx
 GehhBYpEKlIR8rsYT9FGrcEkwg5SE96Lw4l8plB8c9ajJPU7yZtJM2YEn
 qJst6eSEFnB+Dzwpt7XUjSh6awNq1Roqt/pp8o18QhbhxD3ZOH7PpJhOX
 TJEkxgbxWU87OicQRYH6BUVRM4Xz/1ZObQJbYgH67M0lgFyZBpU0nfxC+
 axcDLhgD2NK87380G9gHme+/iynNI8hfHbVvb0/ceLlTaiWBqZ//qYL4v Q==;
X-CSE-ConnectionGUID: tvHaNcRRQamWRzeJI1aV0w==
X-CSE-MsgGUID: rCDG9qPxQ8qVbYubUIQxdQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="59255313"
X-IronPort-AV: E=Sophos;i="6.15,274,1739865600"; d="scan'208";a="59255313"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 00:22:48 -0700
X-CSE-ConnectionGUID: XyGeOsVfSFCW/C4qJKjnGw==
X-CSE-MsgGUID: zed3LbGiTqWfd6EsM4fXMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,274,1739865600"; d="scan'208";a="141441551"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.244.55])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 00:22:46 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>, "Yu, Gareth"
 <gareth.yu@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Cc: "Yu, Gareth" <gareth.yu@intel.com>
Subject: RE: [PATCH] drm/i915/display: Send DSI DCS commands with pipeline
 flush in High Speed
In-Reply-To: <SN7PR11MB67504851600CFC833363CB2FE38AA@SN7PR11MB6750.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250509021327.649003-1-gareth.yu@intel.com>
 <SN7PR11MB67504851600CFC833363CB2FE38AA@SN7PR11MB6750.namprd11.prod.outlook.com>
Date: Fri, 09 May 2025 10:22:43 +0300
Message-ID: <87wmaqmenw.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Fri, 09 May 2025, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
>> -----Original Message-----
>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
>> gareth.yu@intel.com
>> Sent: Friday, May 9, 2025 7:43 AM
>> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Cc: Yu, Gareth <gareth.yu@intel.com>
>> Subject: [PATCH] drm/i915/display: Send DSI DCS commands with pipeline
>> flush in High Speed
>> 
>
> Clip the subject make it a little smaller
>
>> From: Gareth Yu <gareth.yu@intel.com>
>> 
>> With all of the boundary conditions when streaming the commands B2B in our
>> validation (part of the reason we added the flush),  the Flush effectively
>> serializes the transmission of each command enqueued within the command
>> dispatcher to one per V. Blank line which simplifies the behavior of the High
>> Speed Arbitration.
>> 
>> So, unless we absolutely have to burst these to the Sink, we should be using
>> the Pipeline Flush bit to serialize the commands.
>
> Do we have a bspec reference and/or dsi spec reference through which we can
> verify the data that needs to be filled out for the dsi packet header.
> Add it here will help make the review smoother and easier
>
>
>> 
>> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14247
>> 
>> Cc : Suraj Kandpal <suraj.kandpal@intel.com> Cc : Jani Nikula
>> <jani.nikula@intel.com>
>> Signed-off-by: Gareth Yu <gareth.yu@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/icl_dsi.c      | 4 ++--
>>  drivers/gpu/drm/i915/display/icl_dsi_regs.h | 1 +
>>  2 files changed, 3 insertions(+), 2 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c
>> b/drivers/gpu/drm/i915/display/icl_dsi.c
>> index 402b7b2e1829..f91f27067768 100644
>> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
>> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
>> @@ -191,12 +191,12 @@ static int dsi_send_pkt_hdr(struct intel_dsi_host
>> *host,
>>  	else
>>  		tmp &= ~PAYLOAD_PRESENT;
>> 
>> -	tmp &= ~VBLANK_FENCE;
>> +	tmp &= ~(VBLANK_FENCE | LP_DATA_TRANSFER | PIPELINE_FLUSH);
>> 
>>  	if (enable_lpdt)
>>  		tmp |= LP_DATA_TRANSFER;
>>  	else
>> -		tmp &= ~LP_DATA_TRANSFER;
>> +		tmp |= PIPELINE_FLUSH;
>
> Seems a little fishy but cannot be sure till I have the spec and I can verify it
>
>> 
>>  	tmp &= ~(PARAM_WC_MASK | VC_MASK | DT_MASK);
>>  	tmp |= ((packet->header[0] & VC_MASK) << VC_SHIFT); diff --git
>> a/drivers/gpu/drm/i915/display/icl_dsi_regs.h
>> b/drivers/gpu/drm/i915/display/icl_dsi_regs.h
>> index d4845ac65acc..b601b7632339 100644
>> --- a/drivers/gpu/drm/i915/display/icl_dsi_regs.h
>> +++ b/drivers/gpu/drm/i915/display/icl_dsi_regs.h
>> @@ -272,6 +272,7 @@
>>  #define  PAYLOAD_PRESENT		(1 << 31)
>>  #define  LP_DATA_TRANSFER		(1 << 30)
>>  #define  VBLANK_FENCE			(1 << 29)
>> +#define  PIPELINE_FLUSH			(1 << 28)
>
> We now follow the REG_BIT(28) macro instead of using  (1 << 28) convention
> Would like to see that change too, ill send over a fix to get this to file use REG_BIT instead.
> Or do we leave it as is ? What do you think Jani ?

Fixes first, conversion to REG_BIT() and friends later.

BR,
Jani.

>
> Regards,
> Suraj Kandpal 
>
>>  #define  PARAM_WC_MASK			(0xffff << 8)
>>  #define  PARAM_WC_LOWER_SHIFT		8
>>  #define  PARAM_WC_UPPER_SHIFT		16
>> --
>> 2.34.1
>

-- 
Jani Nikula, Intel
