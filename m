Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DCAD61EC394
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jun 2020 22:18:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F7CB6E185;
	Tue,  2 Jun 2020 20:18:24 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2DF06E185
 for <Intel-gfx@lists.freedesktop.org>; Tue,  2 Jun 2020 20:18:21 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21377634-1500050 for multiple; Tue, 02 Jun 2020 21:17:58 +0100
MIME-Version: 1.0
In-Reply-To: <20200602192501.5446-1-clinton.a.taylor@intel.com>
References: <20200602192501.5446-1-clinton.a.taylor@intel.com>
To: Intel-gfx@lists.freedesktop.org, clinton.a.taylor@intel.com
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <159112907493.29407.4400269611880004007@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 02 Jun 2020 21:17:54 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Implement WA_16011163337
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

Quoting clinton.a.taylor@intel.com (2020-06-02 20:25:01)
> From: Clint Taylor <clinton.a.taylor@intel.com>
> 
> Set GS Timer to 224. Combine with Wa_1604555607 due to register FF_MODE2
> not being able to be read.
> 
> Cc: Caz Yokoyama <caz.yokoyama@intel.com>
> Cc: Matt Atwood <matthew.s.atwood@intel.com>
> Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 8 ++++----
>  drivers/gpu/drm/i915/i915_reg.h             | 2 ++
>  2 files changed, 6 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index fa1e15657663..7bc6474cce0e 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -594,11 +594,11 @@ static void tgl_ctx_workarounds_init(struct intel_engine_cs *engine,
>          * Wa_1604555607:gen12 and Wa_1608008084:gen12
>          * FF_MODE2 register will return the wrong value when read. The default
>          * value for this register is zero for all fields and there are no bit
> -        * masks. So instead of doing a RMW we should just write the TDS timer
> -        * value for Wa_1604555607.
> +        * masks. So instead of doing a RMW we should just write the GS Timer
> +        * and TDS timer values for Wa_1604555607 and Wa_16011163337.
>          */
> -       wa_add(wal, FF_MODE2, FF_MODE2_TDS_TIMER_MASK,
> -              FF_MODE2_TDS_TIMER_128, 0);
> +       wa_add(wal, FF_MODE2, FF_MODE2_GS_TIMER_MASK & FF_MODE2_TDS_TIMER_MASK,

GS_TIMER_MASK & TDS_TIMER_MASK is 0

I think you meant |
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
