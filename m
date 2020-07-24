Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D0E822C32C
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jul 2020 12:33:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B20D56E042;
	Fri, 24 Jul 2020 10:33:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2B976E042
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jul 2020 10:33:45 +0000 (UTC)
IronPort-SDR: qMXplWcAGEB+STyLP4o+0/nyIxAqHC7mu2zQhH0oENrHERCKEYr12A41fVXrgW/nOXrZHJZPBz
 uuysy/ndt/ng==
X-IronPort-AV: E=McAfee;i="6000,8403,9691"; a="168817734"
X-IronPort-AV: E=Sophos;i="5.75,390,1589266800"; d="scan'208";a="168817734"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2020 03:33:45 -0700
IronPort-SDR: AFKyg6BcltgT++pss6GBZN7/uHsClFAOzAuOStIkk13ienU6Od/PVXOTclCTmmBRC36JQP5+Xx
 L0ce23qp6IgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,390,1589266800"; d="scan'208";a="463185930"
Received: from dmackroy-mobl1.ger.corp.intel.com (HELO [10.249.37.188])
 ([10.249.37.188])
 by orsmga005.jf.intel.com with ESMTP; 24 Jul 2020 03:33:39 -0700
To: Chris Wilson <chris.p.wilson@intel.com>,
 Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200724001901.35662-1-umesh.nerlige.ramappa@intel.com>
 <20200724001901.35662-3-umesh.nerlige.ramappa@intel.com>
 <159558277976.21069.2416672457874030480@build.alporthouse.com>
 <dd661523-be0f-e90d-f450-2079fb109ce0@intel.com>
 <159558594558.21069.2521382659864870599@build.alporthouse.com>
 <159558623641.21069.2918420188225512985@build.alporthouse.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <3f5faae4-4eb9-1d1b-d5c0-327d72d7c8da@intel.com>
Date: Fri, 24 Jul 2020 13:33:38 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <159558623641.21069.2918420188225512985@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/perf: Whitelist OA report
 trigger registers
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

On 24/07/2020 13:23, Chris Wilson wrote:
> Quoting Chris Wilson (2020-07-24 11:19:05)
>> Quoting Lionel Landwerlin (2020-07-24 11:07:18)
>>> On 24/07/2020 12:26, Chris Wilson wrote:
>>>> Quoting Umesh Nerlige Ramappa (2020-07-24 01:18:59)
>>>>> diff --git a/drivers/gpu/drm/i915/gt/selftest_workarounds.c b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
>>>>> index febc9e6692ba..3b1d3dbcd477 100644
>>>>> --- a/drivers/gpu/drm/i915/gt/selftest_workarounds.c
>>>>> +++ b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
>>>>> @@ -934,6 +934,10 @@ static bool pardon_reg(struct drm_i915_private *i915, i915_reg_t reg)
>>>>>           static const struct regmask pardon[] = {
>>>>>                   { GEN9_CTX_PREEMPT_REG, INTEL_GEN_MASK(9, 9) },
>>>>>                   { GEN8_L3SQCREG4, INTEL_GEN_MASK(9, 9) },
>>>>> +               { OAREPORTTRIG2, INTEL_GEN_MASK(8, 11) },
>>>>> +               { OAREPORTTRIG6, INTEL_GEN_MASK(8, 11) },
>>>>> +               { GEN12_OAG_OAREPORTTRIG2, INTEL_GEN_MASK(12, 12) },
>>>>> +               { GEN12_OAG_OAREPORTTRIG6, INTEL_GEN_MASK(12, 12) },
>>>> Because we are not making the mistake of exposing more globals, and the
>>>> pardon is a list of our past sins, not an excuse for more.
>>> I'm afraid the HW design leave us no choice on Gen12 :(
>> The question then is how much mischief can a client get up to if they
>> subvert the OA of the privileged user. It's a privilege escalation hole,
>> but is there anything dangerous behind it? Or is it just going to disturb
>> the data being fed to the privileged client... (Which seems scary enough.)
> The other angle is whether the RING_NONPRIV are context saved; I have
> vague memories of seeing them in the context image. If they are, we can
> add them the to privileged OA client. We still need to respect the
> hard limit on the number, but that would close the hole.
> -Chris

I couldn't find how to do this whitelisting per context. If that's 
possible, that's probably what we should do.


-Lionel

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
