Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BBB67B30EB
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Sep 2023 12:57:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 316EE10E110;
	Fri, 29 Sep 2023 10:57:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0450F10E110
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Sep 2023 10:57:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695985034; x=1727521034;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=bHBwd0yZQb698ITyR251z0Zy/V2N09GOSVShydoI4wg=;
 b=aRDLUgoFzYfpCoMlv3dfQORMAZHZYsfhFRupnPlSEtwC6GAeZTHZSfEB
 TL7bKkMUL5koFGls31JImNfklrhgjwklxVbiqmMU+vmEtnHBZAK1Gcd/S
 KmWDZiI73QE2BPYjmjOQ/SinT+osk6GlkMIfzVbFDYeWzqhgp9Hs0Rzaz
 bAXUHc4FDVuTUP8X91JDA0nlCBZo07a3Edatsv0Xc5+M/9H8dMFo7uA6G
 w5s+oqY2HCd3HkduHdTbE1ZPOLRyEmdLwAZvopPzvbt2sS2xFZx7j2wWr
 FDl7V3p2C0dTaB7Vd5Dfjt5TYSbJ6lEVt7o7FM706tuLtF2+CDp7mzUCC g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="362520902"
X-IronPort-AV: E=Sophos;i="6.03,187,1694761200"; d="scan'208";a="362520902"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2023 03:57:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="893383728"
X-IronPort-AV: E=Sophos;i="6.03,187,1694761200"; d="scan'208";a="893383728"
Received: from pbrady4x-mobl1.ger.corp.intel.com (HELO [10.213.203.84])
 ([10.213.203.84])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2023 03:55:59 -0700
Message-ID: <8e4d36a3-a36f-0c01-2331-293fc4f0df79@linux.intel.com>
Date: Fri, 29 Sep 2023 11:57:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: Mathias Krause <minipli@grsecurity.net>, intel-gfx@lists.freedesktop.org
References: <20230928182019.10256-1-minipli@grsecurity.net>
 <20230928182019.10256-2-minipli@grsecurity.net>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20230928182019.10256-2-minipli@grsecurity.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915: Register engines early to
 avoid type confusion
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
Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 28/09/2023 19:20, Mathias Krause wrote:
> Commit 1ec23ed7126e ("drm/i915: Use uabi engines for the default engine
> map") switched from using for_each_engine() to for_each_uabi_engine() to
> iterate over the user engines. While this seems to be a sensible change,
> it's only safe to do when the engines are actually chained using the
> rb-tree structure which is not the case during early driver
> initialization where it can be either a lock-less list or regular
> double-linked list.
> 
> In fact, the modesetting initialization code may end up calling
> default_engines() through the fb helper code while the engines list
> is still llist_node-based:
> 
>    i915_driver_probe() ->
>      intel_display_driver_probe() ->
>        intel_fbdev_init() ->
>          drm_fb_helper_init() ->
>            drm_client_init() ->
>              drm_client_open() ->
>                drm_file_alloc() ->
>                  i915_driver_open() ->
>                    i915_gem_open() ->
>                      i915_gem_context_open() ->
>                        i915_gem_create_context() ->
>                          default_engines()
> 
> Using for_each_uabi_engine() in default_engines() is therefore wrong, as
> it would try to interpret the llist as rb-tree, making it find no engine
> at all, as the rb_left and rb_right members will still be NULL, as they
> haven't been initialized yet.
> 
> To fix this type confusion register the engines earlier and at the same
> time reduce the amount of code that has to deal with the intermediate
> llist state.
> 
> Reported-by: sanitiy checks in grsecurity

Typo in sanity - can fix up while merging.

> Suggested-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Fixes: 1ec23ed7126e ("drm/i915: Use uabi engines for the default engine map")
> Signed-off-by: Mathias Krause <minipli@grsecurity.net>
> Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
> Tested on my ADL systems just fine, no rb-tree related type confusion
> any more, as expected.
> 
>   drivers/gpu/drm/i915/i915_gem.c | 9 +++++++--
>   1 file changed, 7 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
> index 1f65bb33dd21..a8551ce322de 100644
> --- a/drivers/gpu/drm/i915/i915_gem.c
> +++ b/drivers/gpu/drm/i915/i915_gem.c
> @@ -1199,6 +1199,13 @@ int i915_gem_init(struct drm_i915_private *dev_priv)
>   			goto err_unlock;
>   	}
>   
> +	/*
> +	 * Register engines early to ensure the engine list is in its final
> +	 * rb-tree form, lowering the amount of code that has to deal with
> +	 * the intermediate llist state.
> +	 */
> +	intel_engines_driver_register(dev_priv);

Comment feels a bit too low level (for this high level component 
interface) and would probably be enough to say this completes the GEM 
initialization by populating the uabi engines, which are needed for GEM 
contexts.

Anyway, it is not that important. Many thanks for working on this and I 
will merge it once it passes our CI.

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko

> +
>   	return 0;
>   
>   	/*
> @@ -1246,8 +1253,6 @@ int i915_gem_init(struct drm_i915_private *dev_priv)
>   void i915_gem_driver_register(struct drm_i915_private *i915)
>   {
>   	i915_gem_driver_register__shrinker(i915);
> -
> -	intel_engines_driver_register(i915);
>   }
>   
>   void i915_gem_driver_unregister(struct drm_i915_private *i915)
