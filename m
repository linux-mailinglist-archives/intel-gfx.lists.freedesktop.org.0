Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E4D6F19F793
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Apr 2020 16:07:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7BCB6E3D8;
	Mon,  6 Apr 2020 14:07:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAF9E6E3D6
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Apr 2020 14:07:32 +0000 (UTC)
IronPort-SDR: JQ+VmKZ69aJy4H5tEU34rQtz1ncaSOfPNlkDfqo731Vi+WAGu99O6YfQSq9vMIQfJhae9YkATH
 qX8+mwqzSjuQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2020 07:07:32 -0700
IronPort-SDR: OQlpbziFGLDnkwPCDZWbnhBhDtxLtB9yr1R7JNjuoEde/1QvDtHEz5BEKbsGCpBZDOUOLuxjqi
 +KfxCNns4qgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,351,1580803200"; d="scan'208";a="285898926"
Received: from unknown (HELO [10.252.48.224]) ([10.252.48.224])
 by fmsmga002.fm.intel.com with ESMTP; 06 Apr 2020 07:07:31 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200331114821.81957-1-lionel.g.landwerlin@intel.com>
 <20200331114821.81957-3-lionel.g.landwerlin@intel.com>
 <158567812981.5852.12449950625595064091@build.alporthouse.com>
 <5bdf47bd-91f5-9f84-fb3b-05a1d5350605@intel.com>
 <158618154668.6356.9721928351250010796@build.alporthouse.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <ed57ddbf-c064-c26c-7fd4-44432f6ee90e@intel.com>
Date: Mon, 6 Apr 2020 17:07:30 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <158618154668.6356.9721928351250010796@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 3/3] drm/i915/perf: enable filtering on
 multiple contexts
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

On 06/04/2020 16:59, Chris Wilson wrote:
> Quoting Lionel Landwerlin (2020-04-06 14:54:38)
>> On 31/03/2020 21:08, Chris Wilson wrote:
>>> Quoting Lionel Landwerlin (2020-03-31 12:48:21)
>>>> Add 2 new properties to the i915-perf open ioctl to specify an array
>>>> of GEM context handles as well as the length of the array.
>>> Hmm. The other thought is ctx->engine[] where one context may have more
>>> than one logical context instance that OA could track. The extension to
>>> track multiple pinned contexts should equally work for multiple engines.
>>>
>>>        I915_DEFINE_CONTEXT_PARAM_ENGINES(engines, 64) = {};
>>>        struct drm_i915_gem_context_param p = {
>>>                .ctx_id = gem_context_create(i915),
>>>                .param = I915_CONTEXT_PARAM_ENGINES,
>>>                .value = to_user_pointer(&engines),
>>>                .size = sizeof(struct i915_context_param_engines),
>>>        };
>>>        gem_context_set_param(i915, &p);
>>>
>>> would do the trick in creating one context with 64 rcs0 that they may
>>> want to track. And that also opens the door to virtual engines over top.
>>> -Chris
>>
>> I rather punt this away for now :)
>>
>> I can't see use cases for Iris/Vulkan.
> There's immediate use cases for iris, since it uses 2 contexts instead
> of 2 logical instances within one GL/GEM context.


I don't understand this. Are you saying Iris could use the stuff from 
above and still select what logical context to dispatch to?


It really wants to pin a given logical context to particular set of 
commands.


-Lionel


>
> The changes you have here trivially accommodate supporting user defined
> engines[], it seems a waste not to.
> -Chris


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
