Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B978212367
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jul 2020 14:35:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8ED06E0A6;
	Thu,  2 Jul 2020 12:35:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E70816E0A6
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jul 2020 12:35:46 +0000 (UTC)
IronPort-SDR: Ln0l+c5nh4zJsrWNZysPnnwTaEU2HTzeNSbYLGmxwkyEW6ZKaKNCxc8o9KrCGZy2f/3sXaaMMS
 /ULMHOPPPXww==
X-IronPort-AV: E=McAfee;i="6000,8403,9669"; a="144393265"
X-IronPort-AV: E=Sophos;i="5.75,304,1589266800"; d="scan'208";a="144393265"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2020 05:35:46 -0700
IronPort-SDR: aUOMEcMHxcBVRI/jTKRR7PWoch8lhg0NVq+E303fJ3NOHkdDFvxrWiPcnPtJ8Eo+UGP+r+Z7vH
 ZxsmXVU8/6oQ==
X-IronPort-AV: E=Sophos;i="5.75,304,1589266800"; d="scan'208";a="481986374"
Received: from dandoron-mobl.ger.corp.intel.com (HELO [10.214.212.30])
 ([10.214.212.30])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2020 05:35:45 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200702083225.20044-1-chris@chris-wilson.co.uk>
 <20200702083225.20044-4-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <d5431a01-602b-4a99-97cc-60de9a09f3c6@linux.intel.com>
Date: Thu, 2 Jul 2020 13:35:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200702083225.20044-4-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 04/23] drm/i915/gem: Only revoke mmap
 handlers if active
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


On 02/07/2020 09:32, Chris Wilson wrote:
> Avoid waking up the device and taking stale locks if we know that the
> object is not currently mmapped. This is particularly useful as not many
> object are actually mmapped and so we can destroy them without waking
> the device up, and gives us a little more freedom of workqueue ordering
> during shutdown.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_mman.c | 7 +++++--
>   1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> index fe27c5b344e3..522ca4f51b53 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> @@ -516,8 +516,11 @@ void i915_gem_object_release_mmap_offset(struct drm_i915_gem_object *obj)
>    */
>   void i915_gem_object_release_mmap(struct drm_i915_gem_object *obj)
>   {
> -	i915_gem_object_release_mmap_gtt(obj);
> -	i915_gem_object_release_mmap_offset(obj);
> +	if (obj->userfault_count)
> +		i915_gem_object_release_mmap_gtt(obj);
> +
> +	if (!RB_EMPTY_ROOT(&obj->mmo.offsets))
> +		i915_gem_object_release_mmap_offset(obj);
>   }
>   
>   static struct i915_mmap_offset *
> 

Both conditions will need explaining why they are not racy.

First should normally be done under the ggtt->mutex, second under 
obj->mmo.lock.

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
