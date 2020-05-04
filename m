Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4578A1C371C
	for <lists+intel-gfx@lfdr.de>; Mon,  4 May 2020 12:42:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9A308930F;
	Mon,  4 May 2020 10:42:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DF848930F
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 May 2020 10:42:21 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21105408-1500050 for multiple; Mon, 04 May 2020 11:42:19 +0100
MIME-Version: 1.0
In-Reply-To: <20200504103146.1359515-3-lionel.g.landwerlin@intel.com>
References: <20200504103146.1359515-1-lionel.g.landwerlin@intel.com>
 <20200504103146.1359515-3-lionel.g.landwerlin@intel.com>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158858893697.10831.8203285663975172418@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Mon, 04 May 2020 11:42:16 +0100
Subject: Re: [Intel-gfx] [PATCH v11 2/4] drm/i915/perf: stop using the
 kernel context
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

Quoting Lionel Landwerlin (2020-05-04 11:31:44)
> diff --git a/drivers/gpu/drm/i915/i915_perf_types.h b/drivers/gpu/drm/i915/i915_perf_types.h
> index a36a455ae336..a8b903592a39 100644
> --- a/drivers/gpu/drm/i915/i915_perf_types.h
> +++ b/drivers/gpu/drm/i915/i915_perf_types.h
> @@ -16,6 +16,7 @@
>  #include <linux/uuid.h>
>  #include <linux/wait.h>
>  
> +#include "gt/intel_context_types.h"
>  #include "gt/intel_sseu.h"
>  #include "i915_reg.h"
>  #include "intel_wakeref.h"
> @@ -311,6 +312,12 @@ struct i915_perf_stream {
>          * buffer should be checked for available data.
>          */
>         u64 poll_oa_period;
> +
> +       /**
> +        * @config_context: A logical context for use by the perf stream for
> +        * configuring the HW.
> +        */
> +       struct intel_context *config_context;

Looks like you just want a forward decl of struct intel_context rather
than the whole header.

>  };
>  
>  /**
> @@ -348,7 +355,8 @@ struct i915_oa_ops {
>          * @disable_metric_set: Remove system constraints associated with using
>          * the OA unit.
>          */
> -       void (*disable_metric_set)(struct i915_perf_stream *stream);
> +       void (*disable_metric_set)(struct i915_perf_stream *stream,
> +                                  struct i915_active *active);
>  
>         /**
>          * @oa_enable: Enable periodic sampling
> -- 
> 2.26.2
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
