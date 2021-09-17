Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AF9F4100C3
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Sep 2021 23:35:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9798D6E069;
	Fri, 17 Sep 2021 21:35:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E06A6E069
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Sep 2021 21:35:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10110"; a="222536751"
X-IronPort-AV: E=Sophos;i="5.85,302,1624345200"; d="scan'208";a="222536751"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2021 14:35:33 -0700
X-IronPort-AV: E=Sophos;i="5.85,302,1624345200"; d="scan'208";a="453415274"
Received: from jons-linux-dev-box.fm.intel.com (HELO jons-linux-dev-box)
 ([10.1.27.20])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2021 14:35:30 -0700
Date: Fri, 17 Sep 2021 14:30:32 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: Hugh Dickins <hughd@google.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 Michal Wajdeczko <michal.wajdeczko@intel.com>,
 Sujaritha Sundaresan <sujaritha.sundaresan@intel.com>,
 John Harrison <John.C.Harrison@intel.com>,
 Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Pavel Machek <pavel@denx.de>, linux-kernel@vger.kernel.org
Message-ID: <20210917213032.GA34270@jons-linux-dev-box>
References: <9e1a6f3b-5e64-be91-ba54-9b5d135ef638@google.com>
 <9e4c1c68-8d1e-ee2c-99bf-320046130775@linux.intel.com>
 <87mtocx1rm.fsf@intel.com>
 <1f955bff-fd9e-d2ee-132a-f758add9e9cb@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1f955bff-fd9e-d2ee-132a-f758add9e9cb@google.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] 5.15-rc1 i915 blank screen booting on ThinkPads
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

On Fri, Sep 17, 2021 at 02:26:48PM -0700, Hugh Dickins wrote:
> On Thu, 16 Sep 2021, Jani Nikula wrote:
> > On Thu, 16 Sep 2021, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wrote:
> > > On 16/09/2021 05:37, Hugh Dickins wrote:
> > >> Two Lenovo ThinkPads, old T420s (2011), newer X1 Carbon 5th gen (2017):
> > >> i915 working fine on both up to 5.14, but blank screens booting 5.15-rc1,
> > >> kernel crashed in some way.
> ...
> > > Kernel logs with drm.debug=0xe, with the broken black screen state, 
> > > would probably answer a lot of questions if you could gather it from 
> > > both machines?
> > 
> > And for that, I think it's best to file separate bugs at [1] and attach
> > the logs there. It helps keep the info in one place. Thanks.
> > 
> > BR,
> > Jani.
> > 
> > [1] https://gitlab.freedesktop.org/drm/intel/issues/new
> 
> Thanks for the quick replies: but of course, getting kernel logs was
> the difficult part, this being bootup, with just a blank screen, and
> no logging to disk at this stage.  I've never needed it before, but
> netconsole to the rescue.
> 
> Problem then obvious, both machines now working,
> please let me skip the bug reports, here's a patch:
> 

Thanks for finding / fixing this Hugh. I will post this patch in a way
our CI system can understand.

Matt 

> [PATCH] drm/i915: fix blank screen booting crashes
> 
> 5.15-rc1 crashes with blank screen when booting up on two ThinkPads
> using i915.  Bisections converge convincingly, but arrive at different
> and surprising "culprits", none of them the actual culprit.
> 
> netconsole (with init_netconsole() hacked to call i915_init() when
> logging has started, instead of by module_init()) tells the story:
> 
> kernel BUG at drivers/gpu/drm/i915/i915_sw_fence.c:245!
> with RSI: ffffffff814d408b pointing to sw_fence_dummy_notify().
> I've been building with CONFIG_CC_OPTIMIZE_FOR_SIZE=y, and that
> function needs to be 4-byte aligned.
> 
> Fixes: 62eaf0ae217d ("drm/i915/guc: Support request cancellation")
> Signed-off-by: Hugh Dickins <hughd@google.com>
> ---
> 
>  drivers/gpu/drm/i915/gt/intel_context.c |    1 +
>  1 file changed, 1 insertion(+)
> 
> --- a/drivers/gpu/drm/i915/gt/intel_context.c
> +++ b/drivers/gpu/drm/i915/gt/intel_context.c
> @@ -362,6 +362,7 @@ static int __intel_context_active(struct
>  	return 0;
>  }
>  
> +__aligned(4)	/* Respect the I915_SW_FENCE_MASK */
>  static int sw_fence_dummy_notify(struct i915_sw_fence *sf,
>  				 enum i915_sw_fence_notify state)
>  {
