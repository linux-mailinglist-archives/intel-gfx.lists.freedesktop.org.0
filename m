Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B11EA1C33D1
	for <lists+intel-gfx@lfdr.de>; Mon,  4 May 2020 09:44:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DED57884E2;
	Mon,  4 May 2020 07:44:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5F9E884E2
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 May 2020 07:44:07 +0000 (UTC)
IronPort-SDR: S/ObwThhTDn9o4S8xN9VKGB4hpt99wNhZl1Lp/DJktUlvAHKnSfTM/qJzgPUeoANezodeBsRdK
 HpiblC3sAC8A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2020 00:44:05 -0700
IronPort-SDR: ABf0REq69q5LorW9bpak8ZAzpw6kJxtDVgRG2lRwwcJlSPwYIX6IXdZdf5l1QIsibnQhlVLLdU
 SFmKbBYDqQ4g==
X-IronPort-AV: E=Sophos;i="5.73,351,1583222400"; d="scan'208";a="434019438"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2020 00:44:04 -0700
Message-ID: <ee2cfc4a74963a12d4e8e89a307d6642a196526d.camel@linux.intel.com>
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
Date: Mon, 04 May 2020 09:44:01 +0200
In-Reply-To: <20200503171513.18704-1-chris@chris-wilson.co.uk>
References: <20200503171513.18704-1-chris@chris-wilson.co.uk>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
User-Agent: Evolution 3.32.5 (3.32.5-1.fc30) 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Lazily acquire the device
 wakeref for freeing objects
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sun, 2020-05-03 at 18:15 +0100, Chris Wilson wrote:
> We only need the device wakeref on freeing the objects if we have to
> unbind the object from the global GTT, or otherwise update device
> information. If the objects are clean, we never need the wakeref, so
> avoid taking until required.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_object.c | 3 ---
>  1 file changed, 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
> index 9d1d0131f7c2..99356c00c19e 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
> @@ -162,9 +162,7 @@ static void __i915_gem_free_objects(struct drm_i915_private *i915,
>  				    struct llist_node *freed)
>  {
>  	struct drm_i915_gem_object *obj, *on;
> -	intel_wakeref_t wakeref;
>  
> -	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
>  	llist_for_each_entry_safe(obj, on, freed, freed) {
>  		struct i915_mmap_offset *mmo, *mn;
>  
> @@ -224,7 +222,6 @@ static void __i915_gem_free_objects(struct drm_i915_private *i915,
>  		call_rcu(&obj->rcu, __i915_gem_free_object_rcu);
>  		cond_resched();
>  	}
> -	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
>  }
>  
>  void i915_gem_flush_free_objects(struct drm_i915_private *i915)

Reviewed-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>

Thanks,
Janusz

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
