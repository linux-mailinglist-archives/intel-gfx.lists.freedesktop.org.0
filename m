Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E6523706CEE
	for <lists+intel-gfx@lfdr.de>; Wed, 17 May 2023 17:36:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2475E10E179;
	Wed, 17 May 2023 15:36:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77BB710E179
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 May 2023 15:36:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684337799; x=1715873799;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=pVW36eThJQohAEgGyXNYmdGbYLlbbDygztre2Nt18yk=;
 b=mBFD9aCZCpqEahMRtgEFgIuRQqntXKww46tWKcYx5E90MQ3KfdcarFTt
 WTZ6VoYzyTTdGzFEe133i/7g+vsm/ZNMnygVSEpiHXyP4gz77VuI8otqW
 5hVCJ+eT+38FUjB8BCzOBKmoZMGELlyQnjmuwTdMuWYW25iqajRMnTDco
 XI6s9rh8M0AIkQdJQyirUck8J9x5xjykuEbW8+252kuX5HVp/TmjhAHYQ
 fvg/JowIc+hyQPfYiGGQN1leA4rYRhHfJ3/GFY9VDfVaqa2CaknOhXtr5
 GiN9UV791XJ/JNjxGXoQG4xbytZzYxpZnUzPSltkCHobZCcUI+S/ijStl g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="351812185"
X-IronPort-AV: E=Sophos;i="5.99,282,1677571200"; d="scan'208";a="351812185"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 08:36:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="695913182"
X-IronPort-AV: E=Sophos;i="5.99,282,1677571200"; d="scan'208";a="695913182"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.249.38.73])
 ([10.249.38.73])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 08:36:35 -0700
Message-ID: <300d9f0c-f74f-55f9-40b4-13b65c3b4584@linux.intel.com>
Date: Wed, 17 May 2023 17:36:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Content-Language: en-US
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "Das, Nirmoy" <nirmoy.das@intel.com>,
 "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>,
 "Hajda, Andrzej" <andrzej.hajda@intel.com>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 "tvrtko.ursulin@linux.intel.com" <tvrtko.ursulin@linux.intel.com>,
 "andi.shyti@linux.intel.com" <andi.shyti@linux.intel.com>
References: <20230517-mtl_disable_render_pg-v1-1-6495eebbfb24@intel.com>
 <2b4a54d2-e323-9a10-1ba4-3d2e96197bb9@linux.intel.com>
 <e9e56f74e740c40884d4351cc2946f695691f782.camel@intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <e9e56f74e740c40884d4351cc2946f695691f782.camel@intel.com>
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 5/17/2023 5:25 PM, Vivi, Rodrigo wrote:
> On Wed, 2023-05-17 at 17:12 +0200, Das, Nirmoy wrote:
>> On 5/17/2023 3:59 PM, Andrzej Hajda wrote:
>>> Multiple CI tests fails with forcewake ack timeouts
>>> if render power gating is enabled.
>>> BSpec 52698 clearly states it should be 0 for MTL.
>>>
>>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/4983
>>> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/gt/intel_rc6.c | 5 +++--
>>>    1 file changed, 3 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c
>>> b/drivers/gpu/drm/i915/gt/intel_rc6.c
>>> index 908a3d0f2343f4..ebb2373dd73640 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_rc6.c
>>> +++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
>>> @@ -117,8 +117,9 @@ static void gen11_rc6_enable(struct intel_rc6
>>> *rc6)
>>>                          GEN6_RC_CTL_RC6_ENABLE |
>>>                          GEN6_RC_CTL_EI_MODE(1);
>>>    
>>> -       /* Wa_16011777198 - Render powergating must remain disabled
>>> */
>>> -       if (IS_DG2_GRAPHICS_STEP(gt->i915, G10, STEP_A0, STEP_C0)
>>> ||
>>> +       /* Wa_16011777198 and BSpec 52698 - Render powergating must
>>> be off */
>> Nice catch!
> Indeed! What a mess in the workaround database.
> It is telling us that no_impact on MTL SKUs while we clearly needs
> that. I tried to reopen that and get that fixed in the hsds.
>
>
>>   instead of bspec you could add Wa_14012655556.
> not actually.
> 16011777198 is the right lineage number for 14012655556.
> Besides, 14012655556 is for DG2 anyway.
>
> Let's keep the way Adrzej put with the BSPec reference besides the
> lineage.

Makes sense, didn't realize 14012655556  is much older.

Thanks!

>
>>
>>> +       if (IS_METEORLAKE(gt->i915) ||
>>> +           IS_DG2_GRAPHICS_STEP(gt->i915, G10, STEP_A0, STEP_C0)
>>> ||
>>>              IS_DG2_GRAPHICS_STEP(gt->i915, G11, STEP_A0, STEP_B0))
>>>                  pg_enable =
>>>                          GEN9_MEDIA_PG_ENABLE |
>>>
>>> ---
>>> base-commit: 01d3dd92d1b71421f6ee85e1bea829e0a917d979
>>> change-id: 20230517-mtl_disable_render_pg-b9f9f1567f9e
>> ^ unwanted artifacts ?   Otherwise this looks good to me.
>>
>> Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
> with the artifacts removed:
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
>
>
>>> Best regards,
