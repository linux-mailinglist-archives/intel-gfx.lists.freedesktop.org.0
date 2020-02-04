Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 516BE151DD2
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 17:07:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19F136E870;
	Tue,  4 Feb 2020 16:07:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 513936E870;
 Tue,  4 Feb 2020 16:07:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20114898-1500050 for multiple; Tue, 04 Feb 2020 16:07:15 +0000
MIME-Version: 1.0
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200131153123.25254-1-janusz.krzysztofik@linux.intel.com>
References: <20200131153123.25254-1-janusz.krzysztofik@linux.intel.com>
Message-ID: <158083243313.1394.7470071904734111804@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 04 Feb 2020 16:07:13 +0000
Subject: Re: [Intel-gfx] [RFC PATCH v2] drm/i915: Never allow userptr into
 the new mapping types
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
Cc: igt-dev@lists.freedesktop.org, Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Janusz Krzysztofik (2020-01-31 15:31:23)
> diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
> index 9ddcf17230e6..334a578ce85f 100644
> --- a/drivers/gpu/drm/i915/i915_gem.c
> +++ b/drivers/gpu/drm/i915/i915_gem.c
> @@ -923,7 +923,7 @@ i915_gem_object_ggtt_pin(struct drm_i915_gem_object *obj,
>         struct i915_vma *vma;
>         int ret;
>  
> -       if (i915_gem_object_never_bind_ggtt(obj))
> +       if (i915_gem_object_never_mmap(obj))
>                 return ERR_PTR(-ENODEV);

I think never_mmap() is more strictly correct than bind_ggtt() and it
was a mistake to prevent ggtt_pin() itself. Though I'll need to check
the revocation to make sure.

Right we should only revoke_mmap if i915_vma_has_userfault, which will
never be the case.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
