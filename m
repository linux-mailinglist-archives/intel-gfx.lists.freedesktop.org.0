Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2127C3ED3F7
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Aug 2021 14:29:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D36789E14;
	Mon, 16 Aug 2021 12:29:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5941489E14
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Aug 2021 12:29:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10077"; a="203050118"
X-IronPort-AV: E=Sophos;i="5.84,324,1620716400"; d="scan'208";a="203050118"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2021 05:29:30 -0700
X-IronPort-AV: E=Sophos;i="5.84,324,1620716400"; d="scan'208";a="530479691"
Received: from ifridman-mobl.ger.corp.intel.com (HELO localhost)
 ([10.251.210.77])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2021 05:29:28 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Imre Deak <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
In-Reply-To: <20210816085751.GA2738167@ideak-desk.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210816071737.2917-1-jani.nikula@intel.com>
 <20210816085751.GA2738167@ideak-desk.fi.intel.com>
Date: Mon, 16 Aug 2021 15:29:25 +0300
Message-ID: <87mtphindm.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: remove superfluous
 EXPORT_SYMBOL()
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

On Mon, 16 Aug 2021, Imre Deak <imre.deak@intel.com> wrote:
> On Mon, Aug 16, 2021 at 10:17:37AM +0300, Jani Nikula wrote:
>> The symbol isn't needed outside of i915.ko.
>> 
>> Fixes: b30edfd8d0b4 ("drm/i915: Switch to LTTPR non-transparent mode link training")
>> Fixes: 264613b406eb ("drm/i915: Disable LTTPR support when the DPCD rev < 1.4")
>> Cc: Imre Deak <imre.deak@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Thanks for catching it, not sure why I thought the export is needed :/
> Reviewed-by: Imre Deak <imre.deak@intel.com>

Thanks, pushed.

BR,
Jani.

>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dp_link_training.c | 1 -
>>  1 file changed, 1 deletion(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> index 08bceae40aa8..053a3c2f7267 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> @@ -206,7 +206,6 @@ int intel_dp_init_lttpr_and_dprx_caps(struct intel_dp *intel_dp)
>>  
>>  	return lttpr_count;
>>  }
>> -EXPORT_SYMBOL(intel_dp_init_lttpr_and_dprx_caps);
>>  
>>  static u8 dp_voltage_max(u8 preemph)
>>  {
>> -- 
>> 2.20.1
>> 

-- 
Jani Nikula, Intel Open Source Graphics Center
