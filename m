Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 977ED42D3FA
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Oct 2021 09:45:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DA906EC26;
	Thu, 14 Oct 2021 07:45:19 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A04816EC26;
 Thu, 14 Oct 2021 07:45:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10136"; a="227520427"
X-IronPort-AV: E=Sophos;i="5.85,371,1624345200"; d="scan'208";a="227520427"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2021 00:45:18 -0700
X-IronPort-AV: E=Sophos;i="5.85,371,1624345200"; d="scan'208";a="524964338"
Received: from ebarkhuy-mobl2.ger.corp.intel.com (HELO [10.213.193.241])
 ([10.213.193.241])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2021 00:45:16 -0700
To: John.C.Harrison@Intel.com, IGT-Dev@Lists.FreeDesktop.Org
Cc: Intel-GFX@Lists.FreeDesktop.Org
References: <20211013224317.943625-1-John.C.Harrison@Intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <c2ffbee7-7fc6-7556-5351-295d85b67254@linux.intel.com>
Date: Thu, 14 Oct 2021 08:45:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211013224317.943625-1-John.C.Harrison@Intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] tests/i915: Skip
 gem_exec_fair on GuC based platforms
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 13/10/2021 23:43, John.C.Harrison@Intel.com wrote:
> From: John Harrison <John.C.Harrison@Intel.com>
> 
> The gem_exec_fair test is specifically testing scheduler algorithm
> performance. However, GuC does not implement the same algorithm as
> execlist mode and this test is not applicable. So, until sw arch
> approves a new algorithm and it is implemented in GuC, stop running
> the test.
> 
> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
> ---
>   tests/i915/gem_exec_fair.c | 6 ++++++
>   1 file changed, 6 insertions(+)
> 
> diff --git a/tests/i915/gem_exec_fair.c b/tests/i915/gem_exec_fair.c
> index ef5a450f6..ca9c73c6e 100644
> --- a/tests/i915/gem_exec_fair.c
> +++ b/tests/i915/gem_exec_fair.c
> @@ -1314,6 +1314,12 @@ igt_main
>   		igt_require(gem_scheduler_enabled(i915));
>   		igt_require(gem_scheduler_has_ctx_priority(i915));
>   
> +		/*
> +		 * These tests are for a specific scheduling model which is
> +		 * not currently implemented by GuC. So skip on GuC platforms.
> +		 */
> +		igt_require(intel_gen(intel_get_drm_devid(i915)) < 12);

I don't understand why do patches which claim Tigerlake is a GuC 
submission platform keep appearing?

It's a stupid patch to use it against, but as a matter of principle this 
has to receive a clear NACK, from me at least.

There are so many ways to avoid the nack, but factually incorrect commit 
message and code comment just have no place so IMO cannot go in.

We can look at on which platforms it passes and on which platforms it 
mostly fails and decide what to do about it.

Or just use debugfs to check whether GuC is in use, IGT does it all the 
time and it's not ABI. Or improve the skip condition to include gen 
_and_ _platform_ checks.

Anything but proposing patches which are factually incorrect.

Regards,

Tvrtko

> +
>   		cfg = intel_ctx_cfg_all_physical(i915);
>   
>   		igt_info("CS timestamp frequency: %d\n",
> 
