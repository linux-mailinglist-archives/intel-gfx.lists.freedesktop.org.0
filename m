Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A95E819F744
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Apr 2020 15:54:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11F3B6E3C6;
	Mon,  6 Apr 2020 13:54:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 992936E3C6
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Apr 2020 13:54:40 +0000 (UTC)
IronPort-SDR: 1zAUKQxLq5/2AssZ1UoZvqFy6Cb+hyIo34Q2Gt9o/vGYztCp2xy+Xn5ihaTNcDN0rmyIgbVDeZ
 NqUsOD/sWAYw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2020 06:54:40 -0700
IronPort-SDR: jZunp+CBr/QwjgXNFrYb5htQTLwVLsceZK6f3s2xJuldHBHORGODsG/HXCe+Qm3OTTNjHTliFw
 L5VcVaCLIW9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,351,1580803200"; d="scan'208";a="285894330"
Received: from unknown (HELO [10.252.48.224]) ([10.252.48.224])
 by fmsmga002.fm.intel.com with ESMTP; 06 Apr 2020 06:54:39 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200331114821.81957-1-lionel.g.landwerlin@intel.com>
 <20200331114821.81957-3-lionel.g.landwerlin@intel.com>
 <158567812981.5852.12449950625595064091@build.alporthouse.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <5bdf47bd-91f5-9f84-fb3b-05a1d5350605@intel.com>
Date: Mon, 6 Apr 2020 16:54:38 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <158567812981.5852.12449950625595064091@build.alporthouse.com>
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

On 31/03/2020 21:08, Chris Wilson wrote:
> Quoting Lionel Landwerlin (2020-03-31 12:48:21)
>> Add 2 new properties to the i915-perf open ioctl to specify an array
>> of GEM context handles as well as the length of the array.
> Hmm. The other thought is ctx->engine[] where one context may have more
> than one logical context instance that OA could track. The extension to
> track multiple pinned contexts should equally work for multiple engines.
>
> 	I915_DEFINE_CONTEXT_PARAM_ENGINES(engines, 64) = {};
> 	struct drm_i915_gem_context_param p = {
> 		.ctx_id = gem_context_create(i915),
> 		.param = I915_CONTEXT_PARAM_ENGINES,
> 		.value = to_user_pointer(&engines),
> 		.size = sizeof(struct i915_context_param_engines),
> 	};
> 	gem_context_set_param(i915, &p);
>
> would do the trick in creating one context with 64 rcs0 that they may
> want to track. And that also opens the door to virtual engines over top.
> -Chris


I rather punt this away for now :)

I can't see use cases for Iris/Vulkan.

This seems more of a media thing where we have multiple engines already.

And media doesn't do much perf queries because much of the available 
counters are 3D/compute and queries are not available on media engines.


We can always bump the perf revision later once we've figured how this 
would be used.


-Lionel

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
