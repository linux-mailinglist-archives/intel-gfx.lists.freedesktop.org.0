Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77B3C180350
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 17:30:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD9E16E8B4;
	Tue, 10 Mar 2020 16:30:46 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CD676E8B4
 for <Intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 16:30:45 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20512084-1500050 for multiple; Tue, 10 Mar 2020 16:30:34 +0000
MIME-Version: 1.0
In-Reply-To: <20200310162428.4249-1-tvrtko.ursulin@linux.intel.com>
References: <158385636096.28297.16094425592161557812@build.alporthouse.com>
 <20200310162428.4249-1-tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <158385783405.28297.697815843424889789@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 10 Mar 2020 16:30:34 +0000
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/gen12: Disable preemption
 timeout
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

Quoting Tvrtko Ursulin (2020-03-10 16:24:28)
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Allow super long OpenCL workloads which cannot be preempted within
> the default timeout to run out of the box.
> 
> v2:
>  * Make it stick out more and apply only to RCS. (Chris)
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Michal Mrozek <michal.mrozek@intel.com>

I prefer that we apply these quirks for specific reasons (but that
specific reason may apply to the whole device...),
Acked-by: Chris Wilson <chris@chris-wilson.co.uk>

> ---
>  drivers/gpu/drm/i915/gt/intel_engine_cs.c | 13 +++++++++----
>  1 file changed, 9 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> index 53ac3f00909a..02b1f60c0925 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -275,6 +275,7 @@ static void intel_engine_sanitize_mmio(struct intel_engine_cs *engine)
>  static int intel_engine_setup(struct intel_gt *gt, enum intel_engine_id id)
>  {
>         const struct engine_info *info = &intel_engines[id];
> +       struct drm_i915_private *i915 = gt->i915;

Heh! The goal was to kill i915 from this function.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
