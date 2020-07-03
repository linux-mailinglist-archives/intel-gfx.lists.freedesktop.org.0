Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4227C213B26
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jul 2020 15:38:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BB686E142;
	Fri,  3 Jul 2020 13:38:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7C816E142
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jul 2020 13:38:52 +0000 (UTC)
IronPort-SDR: /hnvPzpwYBkvk2pItsjZ/3WYFFLfm9duBbyXDoWi9Jp7l2TC+Ygnb1Tki5peEhzH/FFLEG/H4u
 ETfSb0Sm6P3g==
X-IronPort-AV: E=McAfee;i="6000,8403,9670"; a="165209484"
X-IronPort-AV: E=Sophos;i="5.75,308,1589266800"; d="scan'208";a="165209484"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2020 06:38:52 -0700
IronPort-SDR: y0hXWDKK37wg4zv/wJiAPiQAeJBFJ4nBFFblnVK+urEhWpUZu5IYmMWRPZBp9/zAyHf8kz9yiG
 9f2gxidha6VA==
X-IronPort-AV: E=Sophos;i="5.75,308,1589266800"; d="scan'208";a="455903398"
Received: from rbendor-mobl1.ger.corp.intel.com (HELO [10.214.211.147])
 ([10.214.211.147])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2020 06:38:51 -0700
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200703122221.591656-1-maarten.lankhorst@linux.intel.com>
 <20200703122221.591656-12-maarten.lankhorst@linux.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <4cb4137d-3eb5-b650-2368-c5dac8a31fa8@linux.intel.com>
Date: Fri, 3 Jul 2020 14:38:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200703122221.591656-12-maarten.lankhorst@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 11/23] drm/i915: Nuke arguments to
 eb_pin_engine
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


On 03/07/2020 13:22, Maarten Lankhorst wrote:
> Those arguments are already set as eb.file and eb.args, so kill off
> the extra arguments. This will allow us to move eb_pin_engine() to
> after we reserved all BO's.
> 
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 17 +++++++----------
>   1 file changed, 7 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index 45ef9b2368a1..09f3badd564d 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -2599,11 +2599,10 @@ static void eb_unpin_engine(struct i915_execbuffer *eb)
>   }
>   
>   static unsigned int
> -eb_select_legacy_ring(struct i915_execbuffer *eb,
> -		      struct drm_file *file,
> -		      struct drm_i915_gem_execbuffer2 *args)
> +eb_select_legacy_ring(struct i915_execbuffer *eb)
>   {
>   	struct drm_i915_private *i915 = eb->i915;
> +	struct drm_i915_gem_execbuffer2 *args = eb->args;
>   	unsigned int user_ring_id = args->flags & I915_EXEC_RING_MASK;
>   
>   	if (user_ring_id != I915_EXEC_BSD &&
> @@ -2618,7 +2617,7 @@ eb_select_legacy_ring(struct i915_execbuffer *eb,
>   		unsigned int bsd_idx = args->flags & I915_EXEC_BSD_MASK;
>   
>   		if (bsd_idx == I915_EXEC_BSD_DEFAULT) {
> -			bsd_idx = gen8_dispatch_bsd_engine(i915, file);
> +			bsd_idx = gen8_dispatch_bsd_engine(i915, eb->file);
>   		} else if (bsd_idx >= I915_EXEC_BSD_RING1 &&
>   			   bsd_idx <= I915_EXEC_BSD_RING2) {
>   			bsd_idx >>= I915_EXEC_BSD_SHIFT;
> @@ -2643,18 +2642,16 @@ eb_select_legacy_ring(struct i915_execbuffer *eb,
>   }
>   
>   static int
> -eb_pin_engine(struct i915_execbuffer *eb,
> -	      struct drm_file *file,
> -	      struct drm_i915_gem_execbuffer2 *args)
> +eb_pin_engine(struct i915_execbuffer *eb)
>   {
>   	struct intel_context *ce;
>   	unsigned int idx;
>   	int err;
>   
>   	if (i915_gem_context_user_engines(eb->gem_context))
> -		idx = args->flags & I915_EXEC_RING_MASK;
> +		idx = eb->args->flags & I915_EXEC_RING_MASK;
>   	else
> -		idx = eb_select_legacy_ring(eb, file, args);
> +		idx = eb_select_legacy_ring(eb);
>   
>   	ce = i915_gem_context_get_engine(eb->gem_context, idx);
>   	if (IS_ERR(ce))
> @@ -2920,7 +2917,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
>   	if (unlikely(err))
>   		goto err_destroy;
>   
> -	err = eb_pin_engine(&eb, file, args);
> +	err = eb_pin_engine(&eb);
>   	if (unlikely(err))
>   		goto err_context;
>   
> 
Reviewed-by: Tvrtko Ursulin <tvrtko.ursuli@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
