Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A9BD2E27D0
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Dec 2020 15:50:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4C03891F8;
	Thu, 24 Dec 2020 14:50:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45698891F8
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Dec 2020 14:50:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23423834-1500050 for multiple; Thu, 24 Dec 2020 14:50:20 +0000
MIME-Version: 1.0
In-Reply-To: <20201224143455.387624-1-matthew.auld@intel.com>
References: <20201224143455.387624-1-matthew.auld@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
Date: Thu, 24 Dec 2020 14:50:19 +0000
Message-ID: <160882141974.19405.14277501027996947719@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: clear the shadow batch
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

Quoting Matthew Auld (2020-12-24 14:34:54)
> The shadow batch is an internal object, which doesn't have any page
> clearing, and since the batch_len can be smaller than the object, we
> should take care to clear it.
> 
> Testcase: igt/gen9_exec_parse/shadow-peek
> Fixes: 4f7af1948abc ("drm/i915: Support ro ppgtt mapped cmdparser shadow buffers")
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_cmd_parser.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/i915_cmd_parser.c b/drivers/gpu/drm/i915/i915_cmd_parser.c
> index 8d88402387bd..ff3a0b8ccdd5 100644
> --- a/drivers/gpu/drm/i915/i915_cmd_parser.c
> +++ b/drivers/gpu/drm/i915/i915_cmd_parser.c
> @@ -1147,6 +1147,13 @@ static u32 *copy_batch(struct drm_i915_gem_object *dst_obj,
>         if (IS_ERR(dst))
>                 return dst;
>  
> +       if (length < dst_obj->base.size) {
> +               memset32(dst + length, 0,
> +                        (dst_obj->base.size - length) / sizeof(u32));
> +               __i915_gem_object_flush_map(dst_obj, length,
> +                                           dst_obj->base.size - length);
> +       }

I feel like we might as well remove the shadow_needs_clflush() and just
do a i915_gem_object_flush_map(shadow->obj) after parsing.

Then for simple chronological ordering, we can place this at the end of
copy_batch

memset32(dst + length, 0, (dst_obj->base.size - length) / sizeof(u32));

The cost of one more function call along here? Unnoticable.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
