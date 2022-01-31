Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B9014A48A7
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Jan 2022 14:51:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A880710E38B;
	Mon, 31 Jan 2022 13:51:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 358C910E38B
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Jan 2022 13:51:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643637064; x=1675173064;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=5e3mj6i7BepCK2nCKqekvFat+XO29zl0xVr8peUCWFI=;
 b=n7mdmI86XpgHpByKalqSZtO+oqjZtecqEXxTiqdjOod4xX5YLdbVhv7o
 eoo8mnhBV8R29fW5/9fsyqKWxCOwQXV/U88uId88lD2IAx9clSiCxlv+5
 9prqbRgJEDo5mc7RSMg5UeNiqY037G2Q6AnDM3mj+sqtbR/AbDwaU/4Ib
 OPuz5Fbd35KzdcdXiHi2MnH1zY7uU9SZsTxyuoxrdH5i9xMK+qFuJcfpJ
 5kfMOBz98E9Y9ZnkZMnFpaRkPGLftY8EuNjvg/W9UbDSR5hQJuQwnzhvA
 wX9+LdrL0YFgg4QMX10w6u3Y1XMItV4VHtuScdG8nRHar7It1y4ydOq4N A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10243"; a="234852261"
X-IronPort-AV: E=Sophos;i="5.88,331,1635231600"; d="scan'208";a="234852261"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2022 05:51:03 -0800
X-IronPort-AV: E=Sophos;i="5.88,331,1635231600"; d="scan'208";a="479131255"
Received: from tcallagh-mobl.ger.corp.intel.com (HELO [10.213.246.230])
 ([10.213.246.230])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2022 05:51:02 -0800
Message-ID: <03fdb37a-29a3-278f-459d-8a1247401823@linux.intel.com>
Date: Mon, 31 Jan 2022 13:51:00 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: Michael Cheng <michael.cheng@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220128221020.188253-1-michael.cheng@intel.com>
 <20220128221020.188253-3-michael.cheng@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20220128221020.188253-3-michael.cheng@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2 2/4] drm/i915/gt: Re-work
 invalidate_csb_entries
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
Cc: lucas.demarchi@intel.com, matthew.auld@intel.com, mika.kuoppala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 28/01/2022 22:10, Michael Cheng wrote:
> Re-work invalidate_csb_entries to use drm_clflush_virt_range. This will
> prevent compiler errors when building for non-x86 architectures.
> 
> Signed-off-by: Michael Cheng <michael.cheng@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_execlists_submission.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> index 960a9aaf4f3a..90b5daf9433d 100644
> --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> @@ -1647,8 +1647,8 @@ cancel_port_requests(struct intel_engine_execlists * const execlists,
>   
>   static void invalidate_csb_entries(const u64 *first, const u64 *last)
>   {
> -	clflush((void *)first);
> -	clflush((void *)last);
> +	drm_clflush_virt_range((void *)first, sizeof(*first));
> +	drm_clflush_virt_range((void *)last, sizeof(*last));

How about dropping the helper and from the single call site do:

drm_clflush_virt_range(&buf[0], num_entries * sizeof(buf[0]));

One less function call and CSB is a single cacheline before Gen11 ayway, 
two afterwards, so overall better conversion I think. How does that sound?

Regards,

Tvrtko

>   }
>   
>   /*
> 
