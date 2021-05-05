Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E7FCE3735A7
	for <lists+intel-gfx@lfdr.de>; Wed,  5 May 2021 09:35:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED5766E437;
	Wed,  5 May 2021 07:35:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F76B6E437
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 May 2021 07:34:59 +0000 (UTC)
IronPort-SDR: NhoIsN+8Eyvr/197hhupG+7F30bkOahZX4cBxtptjzmfRFgZWrsjAQddEsD/kTlB8AsMi6usyD
 a83PVzPNuPlw==
X-IronPort-AV: E=McAfee;i="6200,9189,9974"; a="198239701"
X-IronPort-AV: E=Sophos;i="5.82,274,1613462400"; d="scan'208";a="198239701"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2021 00:34:58 -0700
IronPort-SDR: oqYnF00XWHdsPhuQ+kLkDjNeWJaoZvWhmv2PDWY1A6lYSrtr6rXf+GNkp40rlp14UTjArwtT+M
 +PXESxUm5dhw==
X-IronPort-AV: E=Sophos;i="5.82,274,1613462400"; d="scan'208";a="406443746"
Received: from aknautiy-mobl.gar.corp.intel.com (HELO [10.213.86.142])
 ([10.213.86.142])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2021 00:34:55 -0700
To: Jani Nikula <jani.nikula@linux.intel.com>, intel-gfx@lists.freedesktop.org
References: <20210429084242.14353-1-ankit.k.nautiyal@intel.com>
 <8735v3204m.fsf@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Message-ID: <0f2eb31c-1d6e-4539-db40-dacea3fab4a6@intel.com>
Date: Wed, 5 May 2021 13:04:46 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <8735v3204m.fsf@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Use correct downstream caps for
 check Src-Ctl mode for PCON
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 5/3/2021 11:03 PM, Jani Nikula wrote:
> On Thu, 29 Apr 2021, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>> Fix the typo in DPCD caps used for checking SRC CTL mode of
>> HDMI2.1 PCON
>>
>> Fixes: 04b6603d13be (drm/i915/display: Configure HDMI2.1 Pcon for FRL
>> only if Src-Ctl mode is available)
> Correct format for Fixes: is this:
>
> Fixes: 04b6603d13be ("drm/i915/display: Configure HDMI2.1 Pcon for FRL only if Src-Ctl mode is available")
>
> You'll get it with 'dim fixes <sha1>', along with some suggested Cc's.
>
> BR,
> Jani.


Thanks Jani for pointing this out. I Will use dim fixes as suggested and 
send updated version.

Regards,

Ankit

>
>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index dfa7da928ae5..b3e82aa8b4f8 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -2112,7 +2112,7 @@ void intel_dp_check_frl_training(struct intel_dp *intel_dp)
>>   	 * -PCON supports SRC_CTL_MODE (VESA DP2.0-HDMI2.1 PCON Spec Draft-1 Sec-7)
>>   	 * -sink is HDMI2.1
>>   	 */
>> -	if (!(intel_dp->dpcd[2] & DP_PCON_SOURCE_CTL_MODE) ||
>> +	if (!(intel_dp->downstream_ports[2] & DP_PCON_SOURCE_CTL_MODE) ||
>>   	    !intel_dp_is_hdmi_2_1_sink(intel_dp) ||
>>   	    intel_dp->frl.is_trained)
>>   		return;
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
