Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EA61708645
	for <lists+intel-gfx@lfdr.de>; Thu, 18 May 2023 18:56:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8F1D10E357;
	Thu, 18 May 2023 16:56:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 699C010E357
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 May 2023 16:56:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684428983; x=1715964983;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=Y/q/gLXUziyjtRmwblDZ0hm86/OI34lRC/J3M0hanqo=;
 b=Wq0OJ5V8IICqQ/YnOpEXvUWo7vCq+VQpy6+rMgfWJjiVzKv9RF/wS3pN
 MdbvHiK2mofxlMEWfzTETGZIS8Mt/ZLApf+AiJ3YLEpkUaQbBzDzVgp+i
 QKJEV3AEIWdtFHf1jMnvEpKTimUWC8UNtgPuQLBi0ZastndHPltbPEtlJ
 ErvFiCQmq6kJyE2/J82lBNCFQZ2MToq6/ggR8If+8kqXAf3kXv6aWn38R
 BrPFuCBV7rPSisf8RpZ2h7yO3XjrfZ89jjzmhgWQEmvEYqxl3BgtNm9B9
 oTlM9cqlvJaxkc7yGpzFY/L7cuOUwcI1bAD/1TaPby74CVHJlsD/DVbUV g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10714"; a="331739610"
X-IronPort-AV: E=Sophos;i="6.00,174,1681196400"; d="scan'208";a="331739610"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2023 09:56:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10714"; a="792053890"
X-IronPort-AV: E=Sophos;i="6.00,174,1681196400"; d="scan'208";a="792053890"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.28.37])
 ([10.213.28.37])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2023 09:56:20 -0700
Message-ID: <3f78a3ca-6965-3125-e0ba-8eaa654d44e7@intel.com>
Date: Thu, 18 May 2023 18:56:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.10.0
Content-Language: en-US
To: Rodrigo Vivi <rodrigo.vivi@kernel.org>
References: <ZGYwebI0Ji6dgkRD@ashyti-mobl2.lan>
 <20230517-mtl_disable_render_pg-v2-1-0b51180a43f0@intel.com>
 <ZGY/reT72DmOPog0@intel.com> <41349e07-e18d-eb54-3e4b-07df354ae8b2@intel.com>
 <ZGZOFEVolDOTX78O@rdvivi-mobl4>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <ZGZOFEVolDOTX78O@rdvivi-mobl4>
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
Cc: intel-gfx@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 18.05.2023 18:11, Rodrigo Vivi wrote:
> On Thu, May 18, 2023 at 05:33:55PM +0200, Andrzej Hajda wrote:
>>
>> On 18.05.2023 17:09, Rodrigo Vivi wrote:
>>> On Thu, May 18, 2023 at 04:50:52PM +0200, Andrzej Hajda wrote:
>>>> Multiple CI tests fails with forcewake ack timeouts if render
>>>> power gating is enabled.
>>>> BSpec 52698 states it should be 0 for MTL, but apparently
>>>> this info is outdated. Anyway since the patch makes MTL pass basic
>>>> tests added FIXME tag informing this is temporary workaround.
>>>>
>>>> v2: added FIXME tag
>>>>
>>>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/4983
>>> No change in the patch is needed, but do we have another
>>> (can be internal) ticket with the work to get this properly
>>> fix without wasting power?
>> Yes there are jiras and related hsdes. In fact this tag is not fully
>> correct, as the issue is about MTL and RPL. I wanted to use "References:"
>> tag but "dim checkpatch" complains, so I have ended with Closes.
>> Regarding your "No change in the patch is needed", do you prefer to merge v1
>> or v2?
> please go ahead with the v2

Pushed to drm-intel-gt-next

Thx
Andrzej

>> [1]:
>> Regards
>> Andrzej
>>
>>>> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
>>>> Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
>>>> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
>>>> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
>>>> ---
>>>> Changes in v2:
>>>> - added FIXME tag
>>>> - Link to v1: https://lore.kernel.org/r/20230517-mtl_disable_render_pg-v1-1-6495eebbfb24@intel.com
>>>> ---
>>>>    drivers/gpu/drm/i915/gt/intel_rc6.c | 10 ++++++++--
>>>>    1 file changed, 8 insertions(+), 2 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
>>>> index 908a3d0f2343f4..58bb1c55294c93 100644
>>>> --- a/drivers/gpu/drm/i915/gt/intel_rc6.c
>>>> +++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
>>>> @@ -117,8 +117,14 @@ static void gen11_rc6_enable(struct intel_rc6 *rc6)
>>>>    			GEN6_RC_CTL_RC6_ENABLE |
>>>>    			GEN6_RC_CTL_EI_MODE(1);
>>>> -	/* Wa_16011777198 - Render powergating must remain disabled */
>>>> -	if (IS_DG2_GRAPHICS_STEP(gt->i915, G10, STEP_A0, STEP_C0) ||
>>>> +	/*
>>>> +	 * Wa_16011777198 and BSpec 52698 - Render powergating must be off.
>>>> +	 * FIXME BSpec is outdated, disabling powergating for MTL is just
>>>> +	 * temporary wa and should be removed after fixing real cause
>>>> +	 * of forcewake timeouts.
>>>> +	 */
>>>> +	if (IS_METEORLAKE(gt->i915) ||
>>>> +	    IS_DG2_GRAPHICS_STEP(gt->i915, G10, STEP_A0, STEP_C0) ||
>>>>    	    IS_DG2_GRAPHICS_STEP(gt->i915, G11, STEP_A0, STEP_B0))
>>>>    		pg_enable =
>>>>    			GEN9_MEDIA_PG_ENABLE |
>>>>
>>>> ---
>>>> base-commit: 641646b29337c97681e0edb67ad2e08aef3fb850
>>>> change-id: 20230517-mtl_disable_render_pg-b9f9f1567f9e
>>>>
>>>> Best regards,
>>>> -- 
>>>> Andrzej Hajda <andrzej.hajda@intel.com>
>>>>

