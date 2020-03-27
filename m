Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1E85195575
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2020 11:40:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 985086E9F4;
	Fri, 27 Mar 2020 10:40:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 827E26E9F4
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Mar 2020 10:40:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20711100-1500050 for multiple; Fri, 27 Mar 2020 10:40:03 +0000
MIME-Version: 1.0
In-Reply-To: <20200327103209.3099292-2-lionel.g.landwerlin@intel.com>
References: <20200327103209.3099292-1-lionel.g.landwerlin@intel.com>
 <20200327103209.3099292-2-lionel.g.landwerlin@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158530560250.19268.45847609565708891@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Fri, 27 Mar 2020 10:40:02 +0000
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/perf: break OA config buffer
 object in 2
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

Quoting Lionel Landwerlin (2020-03-27 10:32:07)
> We want to enable performance monitoring on multiple contexts to cover
> the Iris use case of using 2 GEM contexts (3D & compute).
> 
> So start by breaking the OA configuration BO which contains global &
> per context register writes.
> 
> NOA muxes & OA configurations are global, while FLEXEU register
> configurations are per context.
> 
> Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_perf.c | 194 ++++++++++++++++++++++---------
>  1 file changed, 137 insertions(+), 57 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> index 3222f6cd8255..f524f50abdef 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -376,7 +376,8 @@ struct i915_oa_config_bo {
>         struct llist_node node;
>  
>         struct i915_oa_config *oa_config;
> -       struct i915_vma *vma;
> +       struct i915_vma *ctx_vma;
> +       struct i915_vma *global_vma;

What's the allocation like? Worth packing into one vma and use an
offset?
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
