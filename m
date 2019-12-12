Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FB2F11CB43
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 11:48:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 949B26ED13;
	Thu, 12 Dec 2019 10:48:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6084F6ED15
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 10:48:23 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19552636-1500050 for multiple; Thu, 12 Dec 2019 10:48:18 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191212072737.884335-1-chris@chris-wilson.co.uk>
 <op.0colj6ytxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <op.0colj6ytxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
Message-ID: <157614769873.31893.243454885236564240@skylake-alporthouse-com>
Date: Thu, 12 Dec 2019 10:48:18 +0000
Subject: Re: [Intel-gfx] [CI 1/2] drm/i915/uc: Ignore maybe-unused
 debug-only i915 local
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

Quoting Michal Wajdeczko (2019-12-12 10:46:44)
> On Thu, 12 Dec 2019 08:27:36 +0100, Chris Wilson  
> <chris@chris-wilson.co.uk> wrote:
> 
> > As the i915 local in __force_fw_fetch_failures() may not be used in a
> > non-debug build, tell the compiler to ignore it and not throw waarning.
> 
> typo
> 
> >
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c  
> > b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> > index b6aedee46f9e..4d02e06480e5 100644
> > --- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> > +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> > @@ -254,6 +254,8 @@ static void __force_fw_fetch_failures(struct  
> > intel_uc_fw *uc_fw, int e)
> >               uc_fw->minor_ver_wanted = 0;
> >               uc_fw->user_overridden = true;
> >       }
> > +
> > +     (void)i915;
> 
> to avoid such mistakes in the future, I would rather fix inject macro:
> 
> diff --git a/drivers/gpu/drm/i915/i915_utils.h  
> b/drivers/gpu/drm/i915/i915_utils.h
> index 04139ba1191e..b0ade76bec90 100644
> --- a/drivers/gpu/drm/i915/i915_utils.h
> +++ b/drivers/gpu/drm/i915/i915_utils.h
> @@ -69,7 +69,7 @@ bool i915_error_injected(void);
> 
>   #else
> 
> -#define i915_inject_probe_error(_i915, _err) 0
> +#define i915_inject_probe_error(i915, e) ({ BUILD_BUG_ON_INVALID(i915);  
> 0; })
>   #define i915_error_injected() false

Ok, send with my r-b!
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
