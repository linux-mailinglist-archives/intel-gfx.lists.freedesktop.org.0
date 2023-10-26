Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BD9A27D84E8
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Oct 2023 16:37:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE48410E7FC;
	Thu, 26 Oct 2023 14:37:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE1E210E7FC
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Oct 2023 14:37:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698331058; x=1729867058;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=TGbbr140RZ0RZF3U6hzkFLcGRn0wjqix5KiM3gVjOiQ=;
 b=d1o01LpuFbE4hKyeLT8dSwJPa2l42+5hsMFMpRHVeSiMkGKOhOjIhLQ5
 dQZRdaUB4PoDel08LBsevv64YeHAmXEKJy8mUfayP341uEa99SQUSoikQ
 7HQhTMmmZ5ULZfz57uZDjWxy2sesiMaDDRciuKwgNZTtFhlCCpLysxWfk
 yZKnI0KBakJQAq5gWkCbvbLbo/J9gfI1h5dQmrxAR7hFgGHgvkmV9USqT
 SpZnoBnCFwsPdnGinCjjwgQ7Sdmh6CgM9k1lGTken7CWu22ofy8PPphtf
 oHP5Vq1Wrdr0UX0O9f7U4wZiPWLcIdblGOR/+LC9OlVXtRRGfLL7KjobY g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="386450527"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; d="scan'208";a="386450527"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 07:37:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="709091830"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; d="scan'208";a="709091830"
Received: from lthwaite-mobl.ger.corp.intel.com (HELO [10.213.229.85])
 ([10.213.229.85])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 07:37:36 -0700
Message-ID: <2a91c5c0-9048-4b16-bdb4-53313c0e6f48@linux.intel.com>
Date: Thu, 26 Oct 2023 15:37:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Gilbert Adikankwu <gilbertadikankwu@gmail.com>,
 intel-gfx@lists.freedesktop.org
References: <20231026135839.486894-1-gilbertadikankwu@gmail.com>
Content-Language: en-US
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20231026135839.486894-1-gilbertadikankwu@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Remove assignment from if
 condition
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
Cc: chris@chris-wilson.co.uk
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 26/10/2023 14:58, Gilbert Adikankwu wrote:
> Initialize variable "entry" during declaration. Remove assignment from if
> condition.
> 
> Fix checkpatch.pl error:
> ERROR: do not use assignment in if condition
> 
> Signed-off-by: Gilbert Adikankwu <gilbertadikankwu@gmail.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_execlists_submission.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> index e8f42ec6b1b4..cbc4ecf26d8b 100644
> --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> @@ -1751,7 +1751,7 @@ static bool gen8_csb_parse(const u64 csb)
>   static noinline u64
>   wa_csb_read(const struct intel_engine_cs *engine, u64 * const csb)
>   {
> -	u64 entry;
> +	u64 entry = READ_ONCE(*csb);
>   
>   	/*
>   	 * Reading from the HWSP has one particular advantage: we can detect
> @@ -1763,7 +1763,7 @@ wa_csb_read(const struct intel_engine_cs *engine, u64 * const csb)
>   	 * tgl,dg1:HSDES#22011327657
>   	 */
>   	preempt_disable();
> -	if (wait_for_atomic_us((entry = READ_ONCE(*csb)) != -1, 10)) {
> +	if (wait_for_atomic_us(entry != -1, 10)) {

Wait_for_atomic_us is a macro which needs to keep reading the csb until 
it changes so this will not work.

Regards,

Tvrtko

>   		int idx = csb - engine->execlists.csb_status;
>   		int status;
>   
