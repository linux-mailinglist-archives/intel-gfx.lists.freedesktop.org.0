Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17DD817367A
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 12:53:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7646C6F431;
	Fri, 28 Feb 2020 11:53:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86D296F431
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 11:53:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Feb 2020 03:53:24 -0800
X-IronPort-AV: E=Sophos;i="5.70,495,1574150400"; d="scan'208";a="232221906"
Received: from pmulhall-mobl.ger.corp.intel.com (HELO [10.251.85.135])
 ([10.251.85.135])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 28 Feb 2020 03:53:23 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200227085723.1961649-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <aec3d15f-e094-20d7-9aa3-40d532b2af5b@linux.intel.com>
Date: Fri, 28 Feb 2020 11:53:19 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200227085723.1961649-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 01/20] drm/i915: Skip barriers inside waits
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


On 27/02/2020 08:57, Chris Wilson wrote:
> Attaching to the i915_active barrier is a two stage process, and a flush
> is only effective when the barrier is activation. Thus it is possible
> for us to see a barrier, and attempt to flush, only for our flush to
> have no effect. As such, before attempting to activate signaling on the
> fence we need to double check it is a fence!
> 
> Fixes: d13a31770077 ("drm/i915: Flush idle barriers when waiting")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_active.c | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/i915_active.c b/drivers/gpu/drm/i915/i915_active.c
> index 0b12d5023800..7b3d6c12ad61 100644
> --- a/drivers/gpu/drm/i915/i915_active.c
> +++ b/drivers/gpu/drm/i915/i915_active.c
> @@ -453,6 +453,9 @@ static void enable_signaling(struct i915_active_fence *active)
>   {
>   	struct dma_fence *fence;
>   
> +	if (unlikely(is_barrier(active)))
> +		return;
> +
>   	fence = i915_active_fence_get(active);
>   	if (!fence)
>   		return;
> 

So that smp_rmb() is not really effective, I mean the race is wider than 
that. I was worried about that.. now I need to figure out where it 
starts and where it ends (the race).

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
