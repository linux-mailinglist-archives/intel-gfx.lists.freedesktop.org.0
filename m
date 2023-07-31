Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E76A27691CD
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Jul 2023 11:32:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E99D110E187;
	Mon, 31 Jul 2023 09:32:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B2A810E187
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Jul 2023 09:32:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690795937; x=1722331937;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=PoRVddVtJMh8m25d/dMdqZ60vnxRNKv0qvqez/p0zU8=;
 b=VVPAbPzQTYYakz6UaKVPDMc24hJH57zTvdL3066vABqL/F8AmG++LSyA
 ZlSeC97MJSVPxayRxVTOOD+xb113ARR/KOX3Dad/4A1l6NVardHstl7HM
 EG6T9Nsirlb+GF0W7il4dVgpH8pnuaMlyMeivr623nbhp4srspszn874u
 7P8E8sf58WYww4BP2hP7XoDc771KhGCptF+e2Tf9GgNjislwcC0BWGfJ3
 tdMFk3ve7yGCW7bcaEM/1naRs25bifJBbx609+K49b0B9whT8i7XaT8r9
 +kAsaThP3CKr2rz91WR+ASZ6OtnC7IPiJU6g/wVKFHdpR6FOke5kRFJCb A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10787"; a="372601032"
X-IronPort-AV: E=Sophos;i="6.01,244,1684825200"; d="scan'208";a="372601032"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2023 02:32:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10787"; a="757896436"
X-IronPort-AV: E=Sophos;i="6.01,244,1684825200"; d="scan'208";a="757896436"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.62.140])
 ([10.252.62.140])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2023 02:32:15 -0700
Message-ID: <b9e456d0-1b46-05ff-4054-3f79dbf7de21@linux.intel.com>
Date: Mon, 31 Jul 2023 11:32:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: =?UTF-8?Q?Jouni_H=c3=b6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20230727064142.751976-1-jouni.hogander@intel.com>
 <20230727064142.751976-2-jouni.hogander@intel.com>
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <20230727064142.751976-2-jouni.hogander@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v4 1/4] drm/i915: Add macros to get i915
 device from i915_gem_object
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 7/27/2023 8:41 AM, Jouni Högander wrote:
> We want to stop touching directly i915_gem_object struct members in
> intel_frontbuffer code. As a part of this we add helper macro to get i915
> device from i915_gem_object.
>
> v2: operate on and return pointer in defined macros
>
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
> ---
>   .../gpu/drm/i915/display/intel_frontbuffer.c   | 18 +++++++++---------
>   .../gpu/drm/i915/gem/i915_gem_object_types.h   |  3 +++
>   2 files changed, 12 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> index 17a7aa8b28c2..3ce0436a0c7d 100644
> --- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> +++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> @@ -167,7 +167,7 @@ void __intel_fb_invalidate(struct intel_frontbuffer *front,
>   			   enum fb_op_origin origin,
>   			   unsigned int frontbuffer_bits)
>   {
> -	struct drm_i915_private *i915 = to_i915(front->obj->base.dev);
> +	struct drm_i915_private *i915 = intel_bo_to_i915(front->obj);
>   
>   	if (origin == ORIGIN_CS) {
>   		spin_lock(&i915->display.fb_tracking.lock);
> @@ -188,7 +188,7 @@ void __intel_fb_flush(struct intel_frontbuffer *front,
>   		      enum fb_op_origin origin,
>   		      unsigned int frontbuffer_bits)
>   {
> -	struct drm_i915_private *i915 = to_i915(front->obj->base.dev);
> +	struct drm_i915_private *i915 = intel_bo_to_i915(front->obj);
>   
>   	if (origin == ORIGIN_CS) {
>   		spin_lock(&i915->display.fb_tracking.lock);
> @@ -221,14 +221,14 @@ static void frontbuffer_retire(struct i915_active *ref)
>   }
>   
>   static void frontbuffer_release(struct kref *ref)
> -	__releases(&to_i915(front->obj->base.dev)->display.fb_tracking.lock)
> +	__releases(&intel_bo_to_i915(front->obj)->display.fb_tracking.lock)
>   {
>   	struct intel_frontbuffer *front =
>   		container_of(ref, typeof(*front), ref);
>   	struct drm_i915_gem_object *obj = front->obj;
>   	struct i915_vma *vma;
>   
> -	drm_WARN_ON(obj->base.dev, atomic_read(&front->bits));
> +	drm_WARN_ON(&intel_bo_to_i915(obj)->drm, atomic_read(&front->bits));
>   
>   	spin_lock(&obj->vma.lock);
>   	for_each_ggtt_vma(vma, obj) {
> @@ -238,7 +238,7 @@ static void frontbuffer_release(struct kref *ref)
>   	spin_unlock(&obj->vma.lock);
>   
>   	RCU_INIT_POINTER(obj->frontbuffer, NULL);
> -	spin_unlock(&to_i915(obj->base.dev)->display.fb_tracking.lock);
> +	spin_unlock(&intel_bo_to_i915(obj)->display.fb_tracking.lock);
>   
>   	i915_active_fini(&front->write);
>   
> @@ -249,7 +249,7 @@ static void frontbuffer_release(struct kref *ref)
>   struct intel_frontbuffer *
>   intel_frontbuffer_get(struct drm_i915_gem_object *obj)
>   {
> -	struct drm_i915_private *i915 = to_i915(obj->base.dev);
> +	struct drm_i915_private *i915 = intel_bo_to_i915(obj);
>   	struct intel_frontbuffer *front;
>   
>   	front = __intel_frontbuffer_get(obj);
> @@ -286,7 +286,7 @@ void intel_frontbuffer_put(struct intel_frontbuffer *front)
>   {
>   	kref_put_lock(&front->ref,
>   		      frontbuffer_release,
> -		      &to_i915(front->obj->base.dev)->display.fb_tracking.lock);
> +		      &intel_bo_to_i915(front->obj)->display.fb_tracking.lock);
>   }
>   
>   /**
> @@ -315,13 +315,13 @@ void intel_frontbuffer_track(struct intel_frontbuffer *old,
>   	BUILD_BUG_ON(I915_MAX_PLANES > INTEL_FRONTBUFFER_BITS_PER_PIPE);
>   
>   	if (old) {
> -		drm_WARN_ON(old->obj->base.dev,
> +		drm_WARN_ON(&intel_bo_to_i915(old->obj)->drm,
>   			    !(atomic_read(&old->bits) & frontbuffer_bits));
>   		atomic_andnot(frontbuffer_bits, &old->bits);
>   	}
>   
>   	if (new) {
> -		drm_WARN_ON(new->obj->base.dev,
> +		drm_WARN_ON(&intel_bo_to_i915(new->obj)->drm,
>   			    atomic_read(&new->bits) & frontbuffer_bits);
>   		atomic_or(frontbuffer_bits, &new->bits);
>   	}
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> index e72c57716bee..3de7db70f4ed 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> @@ -718,6 +718,9 @@ struct drm_i915_gem_object {
>   	};
>   };
>   
> +#define intel_bo_to_drm_bo(bo) (&(bo)->base)
> +#define intel_bo_to_i915(bo) to_i915(intel_bo_to_drm_bo(bo)->dev)
> +
>   static inline struct drm_i915_gem_object *
>   to_intel_bo(struct drm_gem_object *gem)
>   {
