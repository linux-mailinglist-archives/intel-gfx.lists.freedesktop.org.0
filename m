Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B02C11A2274
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Apr 2020 15:01:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA8286E9E9;
	Wed,  8 Apr 2020 13:01:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 697976E9E9
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2020 13:01:09 +0000 (UTC)
IronPort-SDR: SlKTH5qU5CVInMKZ75ue/eddPQd3PlrG3Q4i/5gYo+hcYYf896FO/nFaAeQhT7rOeMULqluRPC
 bzMAWwX9npJQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2020 06:01:08 -0700
IronPort-SDR: EPOSA47AhjfYPOQ/5vLuQci95YeCmlJRp3EmTxs1kkI3QFryspB5XseqD6y59okUEh7Op7QFY1
 YKAR7IHM1LGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,358,1580803200"; d="scan'208";a="240292385"
Received: from mkuligow-mobl1.ger.corp.intel.com (HELO [10.252.40.242])
 ([10.252.40.242])
 by orsmga007.jf.intel.com with ESMTP; 08 Apr 2020 06:01:08 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200407123540.601497-1-lionel.g.landwerlin@intel.com>
 <20200407123540.601497-2-lionel.g.landwerlin@intel.com>
 <158627655632.8918.7532038582567584503@build.alporthouse.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <0f98ab3b-3bf6-178e-c3f7-b84ace90cb7b@intel.com>
Date: Wed, 8 Apr 2020 16:01:07 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <158627655632.8918.7532038582567584503@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v4 2/3] drm/i915/perf: prepare driver to
 receive multiple ctx handles
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

On 07/04/2020 19:22, Chris Wilson wrote:
> Quoting Lionel Landwerlin (2020-04-07 13:35:39)
>> -static struct intel_context *oa_context(struct i915_perf_stream *stream)
>> -{
>> -       return stream->pinned_ctx ?: stream->engine->kernel_context;
>> -}
> Idle thought: create a
>
> stream->context = intel_context_create(stream->engine);
>
> so I can stop worrying about the kernel_context. (What's the cost of one
> more context, heh?)
> -Chris

Bah... Now I need to create a timeline. Who's timeline?

-Lionel

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
