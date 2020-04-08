Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 96A9F1A226B
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Apr 2020 14:58:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5F216E114;
	Wed,  8 Apr 2020 12:58:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32EFF6E114
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2020 12:58:53 +0000 (UTC)
IronPort-SDR: v2K9sz0OJ/rYBR3X3xSVMax9XXOx5RfObdkdGFnexbpl6JWc9JjrIQs9LvMFkQUacse2DQKzE2
 SUQfAN5VE0lg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2020 05:58:52 -0700
IronPort-SDR: 7eY5RYlgNm4Ak8bds4RpJgx5/lQpebft2Tw3pFIzhlgT2XwdeFTfetL2JF/6GyH0CYAOWxvg9O
 MAXgMPZvxbMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,358,1580803200"; d="scan'208";a="240291528"
Received: from mkuligow-mobl1.ger.corp.intel.com (HELO [10.252.40.242])
 ([10.252.40.242])
 by orsmga007.jf.intel.com with ESMTP; 08 Apr 2020 05:58:51 -0700
To: Andi Shyti <andi.shyti@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20200407214502.217567-1-andi@etezian.org>
 <20200407214502.217567-2-andi@etezian.org>
 <09803740-08b8-bf29-8b56-4ab11e6bf95f@linux.intel.com>
 <20200408115526.GA12719@intel.intel>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <6a8292a1-0b00-07e0-e988-61f8f8529879@intel.com>
Date: Wed, 8 Apr 2020 15:58:50 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200408115526.GA12719@intel.intel>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v7 1/2] drm/i915: remove broken
 i915_sseu_status interface
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
Cc: Intel GFX <intel-gfx@lists.freedesktop.org>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 08/04/2020 14:55, Andi Shyti wrote:
> Hi Tvrtko,
>
> I start by saying that this patch was mainly sent to kickstart a
> discussion about cleanups required in debugfs and how debugfs can
> be inconsistent and how much it looks to me that we are relying
> on its current state.
>
>>> The i915_sseu_status is broken and the tests on this interface
>>> are disabled. There is no reason to drag it along.
>> Not saying we need it, but can you say how it is broken?
> well tests in igt are failing because we don't get the results we
> expect, I don't know where it is actually broken but the igt test
> looks straight forward to me.
>
> I assume (with some hints I received, though) that the sseu
> reads are inconsistent.
>
> Andi

I think it's broken because we're reading an acknowledgement registers.

These registers seems to be populated only after a context is run.

If you read it before a context is run after coming out of power 
management, there is no request to acknowledge and you get 0 values.


-Lionel

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
