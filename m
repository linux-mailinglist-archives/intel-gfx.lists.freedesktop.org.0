Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BFBA5137780
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2020 20:49:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F6AF6EA90;
	Fri, 10 Jan 2020 19:49:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02ECC6EA90
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jan 2020 19:49:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19839185-1500050 for multiple; Fri, 10 Jan 2020 19:48:43 +0000
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200110162930.88968-5-michal.wajdeczko@intel.com>
References: <20200110162930.88968-1-michal.wajdeczko@intel.com>
 <20200110162930.88968-5-michal.wajdeczko@intel.com>
Message-ID: <157868572232.10140.6665347415869441494@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 10 Jan 2020 19:48:42 +0000
Subject: Re: [Intel-gfx] [PATCH v2 4/4] drm/i915/uc: Add sanitize to to
 intel_uc_ops
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

Quoting Michal Wajdeczko (2020-01-10 16:29:30)
> uC sanitization is only meaningful if we are running with uC present
> or enabled. Make this function part of the uc_ops.
> 
> Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Series is 
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>

> ---
>  drivers/gpu/drm/i915/gt/uc/intel_uc.c | 10 ++--------
>  drivers/gpu/drm/i915/gt/uc/intel_uc.h |  3 ++-
>  2 files changed, 4 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> index 1b07135a8515..c1d5af775713 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> @@ -12,6 +12,7 @@
>  
>  #include "i915_drv.h"
>  
> +static int __uc_sanitize(struct intel_uc *uc);
>  static void __uc_fetch_firmwares(struct intel_uc *uc);
>  static void __uc_cleanup_firmwares(struct intel_uc *uc);
>  static void __uc_init(struct intel_uc *uc);
> @@ -25,6 +26,7 @@ static const struct intel_uc_ops uc_ops_off = {
>  };
>  
>  static const struct intel_uc_ops uc_ops_on = {
> +       .sanitize = __uc_sanitize,
>         .init_fw = __uc_fetch_firmwares,
>         .fini_fw = __uc_cleanup_firmwares,
>         .init = __uc_init,

The only nit is that I would use whitespace here more consistently here
to break up the phases, and I would suggest making the ops forwards
declared rather than every function.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
