Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B4047084F6
	for <lists+intel-gfx@lfdr.de>; Thu, 18 May 2023 17:34:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88ED210E0E9;
	Thu, 18 May 2023 15:34:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C030C10E0E9
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 May 2023 15:34:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684424040; x=1715960040;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=6IdStBENOAIL7p/LHhsnesLdsqC343nDVfQoUCs0ijM=;
 b=XqCNWrEbMPEA6xpa6iDybfOwf/jyQ+kBfxl0zNG4BJSfXaFvKL9dNywi
 oucnz9GLwLC0LcLKj48DIYiRo++X4zGYCJJYyDp4f7y52BhNySkKkw88E
 qdQ6WyHmVbmK2UAjRuBYFa+1xc+UPXHzhoWKxhPrbUdt4ekx/5gM0RigL
 74WvWlcHs40pE3MB+EXFC9r+r6V7LndhBR4D3K4knny54XPcI/sqfhSSI
 UptivwPuOgOgTSvGEH2gXfHj0sEoIYmNdnSVI+cxMVPBzNU13wsyOZNnr
 svn0IWXS/WRtaPzBg6Qg0avr2MhI4oTfmbNWTPpoJZM1tywJV2+Z+mfmJ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10714"; a="354430870"
X-IronPort-AV: E=Sophos;i="5.99,285,1677571200"; d="scan'208";a="354430870"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2023 08:33:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10714"; a="679713006"
X-IronPort-AV: E=Sophos;i="5.99,285,1677571200"; d="scan'208";a="679713006"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.28.37])
 ([10.213.28.37])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2023 08:33:57 -0700
Message-ID: <41349e07-e18d-eb54-3e4b-07df354ae8b2@intel.com>
Date: Thu, 18 May 2023 17:33:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.10.0
Content-Language: en-US
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
References: <ZGYwebI0Ji6dgkRD@ashyti-mobl2.lan>
 <20230517-mtl_disable_render_pg-v2-1-0b51180a43f0@intel.com>
 <ZGY/reT72DmOPog0@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <ZGY/reT72DmOPog0@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/mtl: do not enable render
 power-gating on MTL
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
Cc: intel-gfx@lists.freedesktop.org, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 18.05.2023 17:09, Rodrigo Vivi wrote:
> On Thu, May 18, 2023 at 04:50:52PM +0200, Andrzej Hajda wrote:
>> Multiple CI tests fails with forcewake ack timeouts if render
>> power gating is enabled.
>> BSpec 52698 states it should be 0 for MTL, but apparently
>> this info is outdated. Anyway since the patch makes MTL pass basic
>> tests added FIXME tag informing this is temporary workaround.
>>
>> v2: added FIXME tag
>>
>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/4983
> No change in the patch is needed, but do we have another
> (can be internal) ticket with the work to get this properly
> fix without wasting power?

Yes there are jiras and related hsdes. In fact this tag is not fully 
correct, as the issue is about MTL and RPL. I wanted to use 
"References:" tag but "dim checkpatch" complains, so I have ended with 
Closes.
Regarding your "No change in the patch is needed", do you prefer to 
merge v1 or v2?

[1]:
Regards
Andrzej

>
>> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
>> Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
>> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
>> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
>> ---
>> Changes in v2:
>> - added FIXME tag
>> - Link to v1: https://lore.kernel.org/r/20230517-mtl_disable_render_pg-v1-1-6495eebbfb24@intel.com
>> ---
>>   drivers/gpu/drm/i915/gt/intel_rc6.c | 10 ++++++++--
>>   1 file changed, 8 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
>> index 908a3d0f2343f4..58bb1c55294c93 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_rc6.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
>> @@ -117,8 +117,14 @@ static void gen11_rc6_enable(struct intel_rc6 *rc6)
>>   			GEN6_RC_CTL_RC6_ENABLE |
>>   			GEN6_RC_CTL_EI_MODE(1);
>>   
>> -	/* Wa_16011777198 - Render powergating must remain disabled */
>> -	if (IS_DG2_GRAPHICS_STEP(gt->i915, G10, STEP_A0, STEP_C0) ||
>> +	/*
>> +	 * Wa_16011777198 and BSpec 52698 - Render powergating must be off.
>> +	 * FIXME BSpec is outdated, disabling powergating for MTL is just
>> +	 * temporary wa and should be removed after fixing real cause
>> +	 * of forcewake timeouts.
>> +	 */
>> +	if (IS_METEORLAKE(gt->i915) ||
>> +	    IS_DG2_GRAPHICS_STEP(gt->i915, G10, STEP_A0, STEP_C0) ||
>>   	    IS_DG2_GRAPHICS_STEP(gt->i915, G11, STEP_A0, STEP_B0))
>>   		pg_enable =
>>   			GEN9_MEDIA_PG_ENABLE |
>>
>> ---
>> base-commit: 641646b29337c97681e0edb67ad2e08aef3fb850
>> change-id: 20230517-mtl_disable_render_pg-b9f9f1567f9e
>>
>> Best regards,
>> -- 
>> Andrzej Hajda <andrzej.hajda@intel.com>
>>

