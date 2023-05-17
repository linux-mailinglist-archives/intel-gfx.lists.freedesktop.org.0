Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DF9F706CB7
	for <lists+intel-gfx@lfdr.de>; Wed, 17 May 2023 17:27:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6042310E448;
	Wed, 17 May 2023 15:27:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7181F10E448
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 May 2023 15:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684337253; x=1715873253;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=eWl7IOUiYddtsN26ZB2qM5f/pc6v/ytqtWHBD1aMjgM=;
 b=TmU8sVEyAIT85uy3pqX+x1Iz3eP36OjiPOKnV9cNnntolPlaIM7oOYPJ
 ORJlSMXPMJmQ5hYCplU5MaKMtcRe70e+w790OR+WknZIsgVrKOJ0nfaam
 Tto8rZCfsbhSeuHrvGxKx7ih4TF0RzzqG1j+cDxVlKk5Oyq6L1U8pK06t
 OOF9MQnehZZgi+NkFyTTuyn4VJZnrc/kenKf/cqTXkCL/IXk+6/mZ3gGo
 JZBNtOx1c25hWC3pxnvohaMYu+nlNz+J3EQ/8mxrGLjhizmbH+ToIx85P
 cXnkqcrBwF6y7+Uf/h0tQJYQ12TaNif0Lkq16ygjPDTAw02HWuAXBut9H Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="331405349"
X-IronPort-AV: E=Sophos;i="5.99,282,1677571200"; d="scan'208";a="331405349"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 08:27:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="679318027"
X-IronPort-AV: E=Sophos;i="5.99,282,1677571200"; d="scan'208";a="679318027"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.28.236])
 ([10.213.28.236])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 08:27:30 -0700
Message-ID: <4cb6075b-ffbf-bef3-6e68-4b128957ee5a@intel.com>
Date: Wed, 17 May 2023 17:27:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.10.0
Content-Language: en-US
To: "Das, Nirmoy" <nirmoy.das@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>, Andi Shyti <andi.shyti@linux.intel.com>
References: <20230517-mtl_disable_render_pg-v1-1-6495eebbfb24@intel.com>
 <2b4a54d2-e323-9a10-1ba4-3d2e96197bb9@linux.intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <2b4a54d2-e323-9a10-1ba4-3d2e96197bb9@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: do not enable render
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 17.05.2023 17:12, Das, Nirmoy wrote:
>
> On 5/17/2023 3:59 PM, Andrzej Hajda wrote:
>> Multiple CI tests fails with forcewake ack timeouts
>> if render power gating is enabled.
>> BSpec 52698 clearly states it should be 0 for MTL.
>>
>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/4983
>> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gt/intel_rc6.c | 5 +++--
>>   1 file changed, 3 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c 
>> b/drivers/gpu/drm/i915/gt/intel_rc6.c
>> index 908a3d0f2343f4..ebb2373dd73640 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_rc6.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
>> @@ -117,8 +117,9 @@ static void gen11_rc6_enable(struct intel_rc6 *rc6)
>>               GEN6_RC_CTL_RC6_ENABLE |
>>               GEN6_RC_CTL_EI_MODE(1);
>>   -    /* Wa_16011777198 - Render powergating must remain disabled */
>> -    if (IS_DG2_GRAPHICS_STEP(gt->i915, G10, STEP_A0, STEP_C0) ||
>> +    /* Wa_16011777198 and BSpec 52698 - Render powergating must be 
>> off */
>
> Nice catch! instead of bspec you could add Wa_14012655556.

I put bspec because it is quite clear on the subject in contrast to WA 
:) but I can change it if this way is preferred.

>
>
>> +    if (IS_METEORLAKE(gt->i915) ||
>> +        IS_DG2_GRAPHICS_STEP(gt->i915, G10, STEP_A0, STEP_C0) ||
>>           IS_DG2_GRAPHICS_STEP(gt->i915, G11, STEP_A0, STEP_B0))
>>           pg_enable =
>>               GEN9_MEDIA_PG_ENABLE |
>>
>> ---
>> base-commit: 01d3dd92d1b71421f6ee85e1bea829e0a917d979
>> change-id: 20230517-mtl_disable_render_pg-b9f9f1567f9e
>
> ^ unwanted artifacts ?   Otherwise this looks good to me.

It is added by b4 tool, git deals with it correctly.

>
> Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>

Thx

Regards
Andrzej

>
>>
>> Best regards,

