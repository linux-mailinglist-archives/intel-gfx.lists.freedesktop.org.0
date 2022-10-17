Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CC11F60092B
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Oct 2022 10:51:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2B1F10ECF8;
	Mon, 17 Oct 2022 08:51:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 551BF10ECE7
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Oct 2022 08:51:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665996694; x=1697532694;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=r4+IJYhc2OmkpGMD6PadO5b6HPimeygAt+B+hefD2eQ=;
 b=B5Jlx3kTKYnF2QCHgoKcb6rTHEIpZ0jDaFACvi/cOgO/oq+MMd8WlQUB
 RZBBfIUNKRhSdrrgM2uXNRxieQkcejHktCy4xbL7Ai7jAU/B3OlvLlkYT
 ZYSSRuKEKYKf3By2AyvSIfJ+tsMhMeFeKi5Ums/BJ4EajFemnAieC9OcT
 QjtqX+SQlp93a+JtwGIKcflWXHeSJknoXN7L3noEhQ0iSSYMKnyy80Fvd
 GKBIpxhlWOSAKIXTjfk0GiQMftnWNHoj+6YybDGU2Gp2DEjha4F/VCBnb
 LjzZY7t0OMI5izd9Bt4fzwqmqxj8HdZ38z2yq7/GhrVK31TQ1DsfSyJ9O w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10502"; a="369935932"
X-IronPort-AV: E=Sophos;i="5.95,191,1661842800"; d="scan'208";a="369935932"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2022 01:51:33 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10502"; a="696977101"
X-IronPort-AV: E=Sophos;i="5.95,191,1661842800"; d="scan'208";a="696977101"
Received: from ggeogheg-mobl.ger.corp.intel.com (HELO [10.213.233.137])
 ([10.213.233.137])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2022 01:51:32 -0700
Message-ID: <44b8d200-8013-fcc2-3163-43f39b1bb5ec@linux.intel.com>
Date: Mon, 17 Oct 2022 09:51:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Content-Language: en-US
To: Lucas De Marchi <lucas.demarchi@intel.com>,
 "Souza, Jose" <jose.souza@intel.com>
References: <20221013181426.306746-1-jose.souza@intel.com>
 <e77afa6bebf276952ff6750b7e8ac99623a7da92.camel@intel.com>
 <20221014220819.l6r4ahndslsrlvmn@ldmartin-desk2.lan>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20221014220819.l6r4ahndslsrlvmn@ldmartin-desk2.lan>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] i915: Extend Wa_1607297627 to Alderlake-P
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


On 14/10/2022 23:08, Lucas De Marchi wrote:
> On Thu, Oct 13, 2022 at 06:23:07PM +0000, Jose Souza wrote:
>> missed the "drm/" in the subject 😛
> 
> with that,  Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

And where is the commit text? :p

Impact warrants fixes and/or cc stable 5.17+ for ADL-P force probe 
removal or not?

Regards,

Tvrtko

> 
> Lucas De Marchi
> 
>>
>> On Thu, 2022-10-13 at 11:14 -0700, José Roberto de Souza wrote:
>>> BSpec: 54369
>>> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
>>> ---
>>>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 4 ++--
>>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c 
>>> b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>>> index b8eb20a155f0d..e1d5df3a5756e 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>>> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>>> @@ -2300,11 +2300,11 @@ rcs_engine_wa_init(struct intel_engine_cs 
>>> *engine, struct i915_wa_list *wal)
>>>      }
>>>
>>>      if (IS_DG1_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
>>> -        IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915)) {
>>> +        IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915) || 
>>> IS_ALDERLAKE_P(i915)) {
>>>          /*
>>>           * Wa_1607030317:tgl
>>>           * Wa_1607186500:tgl
>>> -         * Wa_1607297627:tgl,rkl,dg1[a0]
>>> +         * Wa_1607297627:tgl,rkl,dg1[a0],adlp
>>>           *
>>>           * On TGL and RKL there are multiple entries for this WA in the
>>>           * BSpec; some indicate this is an A0-only WA, others indicate
>>
