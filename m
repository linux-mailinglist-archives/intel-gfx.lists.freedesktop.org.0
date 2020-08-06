Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E9DF23DEB1
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Aug 2020 19:29:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8B646E8F3;
	Thu,  6 Aug 2020 17:29:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28B736E8F3
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Aug 2020 17:29:17 +0000 (UTC)
IronPort-SDR: faZveW2jiWnQL1EMq1bol0p+Q52IbAjd2OI/E+fSH8/90yLJLsuT39gJx8v/bHbpd52zvqweU+
 JJ2DUdASNejQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9705"; a="152839743"
X-IronPort-AV: E=Sophos;i="5.75,441,1589266800"; d="scan'208";a="152839743"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2020 10:29:16 -0700
IronPort-SDR: A9wDJYpFFoVPGtlZp1MKge/d83MEHlthu5/8AjIS5eLHuYS5P7s6nX72WQt1lC1tWrqirufgn4
 RaxBa8DdBrog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,441,1589266800"; d="scan'208";a="323502589"
Received: from salerno-mobl2.ger.corp.intel.com (HELO [10.252.62.160])
 ([10.252.62.160])
 by orsmga008.jf.intel.com with ESMTP; 06 Aug 2020 10:29:15 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200806161056.17593-1-chris@chris-wilson.co.uk>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <3814b8d6-6b4e-7d8a-7087-df934d9ab005@intel.com>
Date: Thu, 6 Aug 2020 20:29:14 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200806161056.17593-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Free the fence after a
 fence-chain lookup failure
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

On 06/08/2020 19:10, Chris Wilson wrote:
> If dma_fence_chain_find_seqno() reports an error, it does so in its
> preamable before it disposes of the input fence. On handling the
> error, we need to drop the reference to the fence.
>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2292
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>

Oops...

Fixes: dc61199c09b1 ("drm/i915: add syncobj timeline support")

Reviewed-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>


> ---
>   drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 1 +
>   1 file changed, 1 insertion(+)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index 9ce114d67288..24a1486d2dc5 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -2289,6 +2289,7 @@ add_timeline_fence_array(struct i915_execbuffer *eb,
>   
>   		if (err && !(user_fence.flags & I915_EXEC_FENCE_SIGNAL)) {
>   			DRM_DEBUG("Syncobj handle missing requested point %llu\n", point);
> +			dma_fence_put(fence);
>   			drm_syncobj_put(syncobj);
>   			return err;
>   		}


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
