Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E01F53AE8C3
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Jun 2021 14:08:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54C2889F4A;
	Mon, 21 Jun 2021 12:08:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B75B89F4A
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Jun 2021 12:08:22 +0000 (UTC)
IronPort-SDR: KBFRmgniG04DRJfLFKjb8FfgTHG3hFpzhzg3FSd8UBu7KODu50jMVnToORZAfp1vr/12pyYZ5W
 s8bsTidPH7Jg==
X-IronPort-AV: E=McAfee;i="6200,9189,10021"; a="194139629"
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; d="scan'208";a="194139629"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2021 05:08:04 -0700
IronPort-SDR: EjfKzpJXx2HzqUine2u4fccHJX/fTcuCVaNI6twyvYF1++SmRYoVyZI6ZPdUm2QPaxuM04yIl5
 248f9Sdventg==
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; d="scan'208";a="405941146"
Received: from bchikkop-mobl.ger.corp.intel.com (HELO [10.213.238.150])
 ([10.213.238.150])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2021 05:08:02 -0700
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20210621114123.3131534-1-maarten.lankhorst@linux.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <04424cbf-750a-4cb9-a99a-6a5a3671452f@linux.intel.com>
Date: Mon, 21 Jun 2021 13:08:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210621114123.3131534-1-maarten.lankhorst@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/gt: Do not allow setting ring
 size for legacy ring submission
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


I had some questions on the trybot mailing list, let me copy&paste..

On 21/06/2021 12:41, Maarten Lankhorst wrote:
> It doesn't work for legacy ring submission, and is in the best case
> ignored.

Looks rejected instead of ignored:

static int set_ringsize(struct i915_gem_context *ctx,
             struct drm_i915_gem_context_param *args)
{
     if (!HAS_LOGICAL_RING_CONTEXTS(ctx->i915))
         return -ENODEV;
> 
> In the worst case we end up freeing engine->legacy.ring for all other
> active engines, resulting in a use-after-free.

Worst case is cloning because ring_context_alloc is not taking a 
reference to engine->legacy.ring, or something else?

Regards,

Tvrtko

> 
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Fixes: 88be76cdafc7 ("drm/i915: Allow userspace to specify ringsize on construction")
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/gt/intel_context_param.c | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_context_param.c b/drivers/gpu/drm/i915/gt/intel_context_param.c
> index 65dcd090245d..412c36d1b1dd 100644
> --- a/drivers/gpu/drm/i915/gt/intel_context_param.c
> +++ b/drivers/gpu/drm/i915/gt/intel_context_param.c
> @@ -12,6 +12,9 @@ int intel_context_set_ring_size(struct intel_context *ce, long sz)
>   {
>   	int err;
>   
> +	if (ce->engine->gt->submission_method == INTEL_SUBMISSION_RING)
> +		return 0;
> +
>   	if (intel_context_lock_pinned(ce))
>   		return -EINTR;
>   
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
