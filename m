Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 746BE74D3D5
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jul 2023 12:46:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05D2C891D7;
	Mon, 10 Jul 2023 10:46:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BADC110E26A
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jul 2023 10:46:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688985963; x=1720521963;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=JGxEalZzCtRMvC6uALOhVnx5yf/AkITtjPi+1hNA3j8=;
 b=FECD91pDeTZNP7gsStCDAcOXMLsBwU8Aj/0Dygr0/rfhVShaqJ5k5H9E
 6MVLXhXE132aFnTt8P0tmbqBiq65FQjVQ+3781j+7WF2IPDiNWYa01min
 QUWNEHMKyrswXEs2VvkY40L6tY885aSlE/OeNcm7TgCBGmiQMoCbLL0oo
 y8Bmu3iRsjhP8z895FxN+dParAOTtp6dF8etcShhRjASHhz3iPLCvrapq
 PnuI2rcsHMhCQV/SFGqXxvPqwJwfm9RkngG4w3995NU8NMBPfRibq73gC
 LQ5TwWYeje6AbpfSqhC85Qfg91vXIHoC0mGg5E3G8xqN1JQRIoBfJA2HL w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10766"; a="354169619"
X-IronPort-AV: E=Sophos;i="6.01,194,1684825200"; d="scan'208";a="354169619"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2023 03:46:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10766"; a="865301065"
X-IronPort-AV: E=Sophos;i="6.01,194,1684825200"; d="scan'208";a="865301065"
Received: from stoicaan-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.52.170])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2023 03:46:01 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <87bkgkjb9g.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230710100911.2736389-1-suraj.kandpal@intel.com>
 <20230710100911.2736389-2-suraj.kandpal@intel.com>
 <87bkgkjb9g.fsf@intel.com>
Date: Mon, 10 Jul 2023 13:45:59 +0300
Message-ID: <878rbojb88.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/dsc: Add PPS enum
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

On Mon, 10 Jul 2023, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> On Mon, 10 Jul 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
>> Add PPS enum so that we can later on use it to distinguish which
>> PPS is being read or written onto.
>
> The patch adding the enum alone isn't useful, should be squashed with
> something that uses it.

Also, maybe you could just use an int?

>
> BR,
> Jani.
>
>>
>> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_vdsc.c | 17 +++++++++++++++++
>>  1 file changed, 17 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
>> index bd9116d2cd76..1a8272324c36 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
>> @@ -19,6 +19,23 @@
>>  #include "intel_vdsc.h"
>>  #include "intel_vdsc_regs.h"
>>  
>> +enum intel_dsc_pps {
>> +	PPS_0 = 0,
>> +	PPS_1,
>> +	PPS_2,
>> +	PPS_3,
>> +	PPS_4,
>> +	PPS_5,
>> +	PPS_6,
>> +	PPS_7,
>> +	PPS_8,
>> +	PPS_9,
>> +	PPS_10,
>> +	PPS_16,
>> +	PPS_17,
>> +	PPS_18,
>> +};
>> +
>>  bool intel_dsc_source_support(const struct intel_crtc_state *crtc_state)
>>  {
>>  	const struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);

-- 
Jani Nikula, Intel Open Source Graphics Center
