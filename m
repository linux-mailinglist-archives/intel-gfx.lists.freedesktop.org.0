Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id wCyTLiMbKWr0QgMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 10:06:59 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3375F666EBD
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 10:06:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=ursulin.net header.s=google header.b=rONbnDjl;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=none
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E484C10E79C;
	Wed, 10 Jun 2026 08:06:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com
 [209.85.208.45])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA27A10E794
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jun 2026 08:06:53 +0000 (UTC)
Received: by mail-ed1-f45.google.com with SMTP id
 4fb4d7f45d1cf-69165354c87so4767373a12.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jun 2026 01:06:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin.net; s=google; t=1781078812; x=1781683612; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=tV8bVaCGg3y34HefJ73rptnGNh2U6CedJrnOiZid/gE=;
 b=rONbnDjlWhCUWVkBGCfXJ/v0I9qF6oTYPiXwzAfhBglbcmBX1v6q5d0htVnkvqcbg5
 1+AxjtAhAlPW6Lnv/xYOCJprJdYdRSLlhhi2hnqp4YgFj9CzHqEVIaGh045fAsy+RqHL
 MTatj8XovCKYmYQcShxbFkMbNtb7QbLGhP2o4tzwLHoNopU1m0CMtEl6kuCYGpunwjwp
 US1Wxri8z5ZhATpq8thaMV3m5/EkkVNNyACvJ/6FDV3IB/q2eXJs4ijpYj6OJlyLewvb
 Sj6Pg7UYkUZCYKW1GwF+wYYi0pZ5pE1RYR1KOK8rQqLfuDGiB0lMbtCUtO3wv40si2nK
 N+uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1781078812; x=1781683612;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=tV8bVaCGg3y34HefJ73rptnGNh2U6CedJrnOiZid/gE=;
 b=gGPwM9PnpIrjARskOUTgdlk5Eao0jOPS62PyhecyxVZeHqe2t6/ycIgg6Jlgut6WAL
 9qsvkpD7uk6f+YR+bA/FYRls53AVnhEG6J7hCfKgEI+Lx8yKUFkIk1ptizcf+GXM7Kqg
 DaD42sMjDvU4GTWMVD/lNBbQG+sWNb6RlQtuzS28EaE1hElckQg1Mb/A5VFK1CiKhvE7
 a4Boqej6BVfaZuPUg4aIsXotNrk3S9j89wvPcqbAw5Q2iiMbKkSJ7gc8XGO/SuU5kPqM
 /qJzF0Fu6hSwYKhyT7uCW7TEqS8R4uZiZclDMCMIdH+IKaSVmSVNtB9K2K7R1szwMaOC
 Xj+g==
X-Forwarded-Encrypted: i=1;
 AFNElJ8Fn/h+bun6BbtOZ+7N4c2TElm/sBmzPf6BfMO6IMagvb0EJ3HjIlqpH5oDahwt62aoNppji9357ZQ=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxEFlabGb8DsrpCPAyYm/90YmLOXMDzYiOBxhH4D9bmjNA116gt
 XulASt2lrkyYEhAkPlN/cRc2guN0McTKeU9EajZ70kX6qi5RODE5QJtyidxFZZ3lB6s=
X-Gm-Gg: Acq92OFokCfh9PsCZFM8cOTXThvsNTkyv74lr8GBuY0wx9AKWiLLdFoE5VcWgRo8T9d
 O8r4CJ5Q83Eem3WANxmBbd/EWP5akkeUNKFYoSa2nOZIt2i/D27mre3WjJiM5l6Nqdg2YQT2QLB
 oboC1sH0FBO2i9TQwbIbJMbIE5IDaggmMG8WESW8MRnZd/EdiOX5vcRbJdtynfghEHGtoGHxbAC
 9hZS5mv4AbXFwjCaLMYgYcUl6SiC/SWxmWfY0/169S64IolCJhJHQ1C+X6bEyloAMDizpK0KZZ8
 LNjpjTg3HMuf51V7B2uHPXXam+Grne1gZwGvqMQD0HvM5OPyewZub5UWRQCS5LBbhpz543gsT5P
 4lsPcvxIGIy8f9PzKP5UQVtwqyVubzBrOdQEHRYrc1GoC3r57kl0hdqu/roEIOYbuzX+lSGFBbF
 roN8aUpG+jPiyf1R6ZjtnA+mOuMZfl5DXUJ5eaAXWZJ8U2sGHMErD5Vlc=
X-Received: by 2002:a05:6402:d0d:b0:676:988e:8eb6 with SMTP id
 4fb4d7f45d1cf-68fa5354446mr10490926a12.26.1781078812054; 
 Wed, 10 Jun 2026 01:06:52 -0700 (PDT)
Received: from [192.168.0.116] ([90.240.106.137])
 by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-68e6585154dsm9480292a12.15.2026.06.10.01.06.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 10 Jun 2026 01:06:51 -0700 (PDT)
Message-ID: <9f827a2e-bb9a-4356-96d1-6b10d100695b@ursulin.net>
Date: Wed, 10 Jun 2026 09:06:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/gem: Fix phys BO pread/pwrite with offset
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Intel graphics driver community testing & development
 <intel-gfx@lists.freedesktop.org>
Cc: Direct Rendering Infrastructure - Development
 <dri-devel@lists.freedesktop.org>,
 "Matthew Wilcox (Oracle)" <willy@infradead.org>, stable@vger.kernel.org,
 Simona Vetter <simona@ffwll.ch>, Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
References: <20260610060314.26111-1-joonas.lahtinen@linux.intel.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <20260610060314.26111-1-joonas.lahtinen@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.81 / 15.00];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[ursulin.net:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:joonas.lahtinen@linux.intel.com,m:dri-devel@lists.freedesktop.org,m:willy@infradead.org,m:stable@vger.kernel.org,m:simona@ffwll.ch,m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,s:lists@lfdr.de];
	DMARC_NA(0.00)[ursulin.net];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[tursulin@ursulin.net,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	DKIM_TRACE(0.00)[ursulin.net:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tursulin@ursulin.net,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,infradead.org:email,ffwll.ch:email,ursulin.net:dkim,ursulin.net:email,ursulin.net:mid,ursulin.net:from_mime,intel.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3375F666EBD


On 10/06/2026 07:03, Joonas Lahtinen wrote:
> sg_page() returns struct page pointer not (void *) so the scaling
> of pread/pwrite is wrong for phys BO and wrong parts of BO would be
> accessed if non-zero offset is used.
> 
> Last impacted platform with overlay or cursor planes using phys
> mapping was Gen3/945G/Lakeport.
> 
> Reported-by: Matthew Wilcox (Oracle) <willy@infradead.org>
> Fixes: c6790dc22312 ("drm/i915: Wean off drm_pci_alloc/drm_pci_free")
> Cc: <stable@vger.kernel.org> # v4.5+
> Cc: Tvrtko Ursulin <tursulin@ursulin.net>
> Cc: Simona Vetter <simona@ffwll.ch>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_phys.c | 19 +++++++++++++++----
>   1 file changed, 15 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_phys.c b/drivers/gpu/drm/i915/gem/i915_gem_phys.c
> index e375afbf458e..d53129eb5603 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_phys.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_phys.c
> @@ -18,6 +18,17 @@
>   #include "i915_gem_tiling.h"
>   #include "i915_scatterlist.h"
>   
> +/* Abuse scatterlist to store pointer instead of struct page. */
> +static inline void __set_phys_vaddr(struct scatterlist *sg, void *vaddr)
> +{
> +	sg_assign_page(sg, (struct page *)vaddr);
> +}
> +
> +static inline void *__get_phys_vaddr(struct scatterlist *sg)
> +{
> +	return (void *)sg_page(sg);
> +}
> +
>   static int i915_gem_object_get_pages_phys(struct drm_i915_gem_object *obj)
>   {
>   	struct address_space *mapping = obj->base.filp->f_mapping;
> @@ -58,7 +69,7 @@ static int i915_gem_object_get_pages_phys(struct drm_i915_gem_object *obj)
>   	sg->offset = 0;
>   	sg->length = obj->base.size;
>   
> -	sg_assign_page(sg, (struct page *)vaddr);
> +	__set_phys_vaddr(sg, vaddr);
>   	sg_dma_address(sg) = dma;
>   	sg_dma_len(sg) = obj->base.size;
>   
> @@ -99,7 +110,7 @@ i915_gem_object_put_pages_phys(struct drm_i915_gem_object *obj,
>   			       struct sg_table *pages)
>   {
>   	dma_addr_t dma = sg_dma_address(pages->sgl);
> -	void *vaddr = sg_page(pages->sgl);
> +	void *vaddr = __get_phys_vaddr(pages->sgl);
>   
>   	__i915_gem_object_release_shmem(obj, pages, false);
>   
> @@ -139,7 +150,7 @@ i915_gem_object_put_pages_phys(struct drm_i915_gem_object *obj,
>   int i915_gem_object_pwrite_phys(struct drm_i915_gem_object *obj,
>   				const struct drm_i915_gem_pwrite *args)
>   {
> -	void *vaddr = sg_page(obj->mm.pages->sgl) + args->offset;
> +	void *vaddr = __get_phys_vaddr(obj->mm.pages->sgl) + args->offset;
>   	char __user *user_data = u64_to_user_ptr(args->data_ptr);
>   	struct drm_i915_private *i915 = to_i915(obj->base.dev);
>   	int err;
> @@ -170,7 +181,7 @@ int i915_gem_object_pwrite_phys(struct drm_i915_gem_object *obj,
>   int i915_gem_object_pread_phys(struct drm_i915_gem_object *obj,
>   			       const struct drm_i915_gem_pread *args)
>   {
> -	void *vaddr = sg_page(obj->mm.pages->sgl) + args->offset;
> +	void *vaddr = __get_phys_vaddr(obj->mm.pages->sgl) + args->offset;
>   	char __user *user_data = u64_to_user_ptr(args->data_ptr);
>   	int err;
>   

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>

Regards,

Tvrtko

