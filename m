Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C78DA2EF502
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jan 2021 16:42:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 319636E831;
	Fri,  8 Jan 2021 15:42:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 1839 seconds by postgrey-1.36 at gabe;
 Fri, 08 Jan 2021 15:42:35 UTC
Received: from 9.mo177.mail-out.ovh.net (9.mo177.mail-out.ovh.net
 [46.105.72.238])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC5876E831
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jan 2021 15:42:35 +0000 (UTC)
Received: from player762.ha.ovh.net (unknown [10.108.1.68])
 by mo177.mail-out.ovh.net (Postfix) with ESMTP id 3C61414E000
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jan 2021 16:27:27 +0100 (CET)
Received: from etezian.org (213-243-141-64.bb.dnainternet.fi [213.243.141.64])
 (Authenticated sender: andi@etezian.org)
 by player762.ha.ovh.net (Postfix) with ESMTPSA id 8051119D66E60;
 Fri,  8 Jan 2021 15:27:25 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass
 (GARM-98R002d4a1aefd-6582-48a6-919f-f51ecee3da77,
 83D1C09382E53F50CE2429AE6C9B6AA8FD9DCB87) smtp.auth=andi@etezian.org
X-OVh-ClientIp: 213.243.141.64
Date: Fri, 8 Jan 2021 17:27:23 +0200
From: Andi Shyti <andi@etezian.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <X/h5279BCJbh0s+s@jack.zhora.eu>
References: <20210107221724.10036-1-chris@chris-wilson.co.uk>
 <20210107221724.10036-5-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210107221724.10036-5-chris@chris-wilson.co.uk>
X-Ovh-Tracer-Id: 8781737801361048073
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedujedrvdeghedgtdekucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpeetnhguihcuufhhhihtihcuoegrnhguihesvghtvgiiihgrnhdrohhrgheqnecuggftrfgrthhtvghrnheptdfgudduhfefueeujeefieehtdeftefggeevhefgueellefhudetgeeikeduieefnecukfhppedtrddtrddtrddtpddvudefrddvgeefrddugedurdeigeenucevlhhushhtvghrufhiiigvpedunecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrhejiedvrdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomheprghnughisegvthgviihirghnrdhorhhgpdhrtghpthhtohepihhnthgvlhdqghhfgieslhhishhtshdrfhhrvggvuggvshhkthhophdrohhrgh
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915/gt: Disable arbitration on
 no-preempt requests
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Chris,

On Thu, Jan 07, 2021 at 10:17:24PM +0000, Chris Wilson wrote:
> If a request is submitted and known to require no preemption, disable
> arbitration around the batch which prevents the HW from handling a
> preemption request during the payload.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Cc: Matthew Brost <matthew.brost@intel.com>
> Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 6 +++---
>  drivers/gpu/drm/i915/gt/gen8_engine_cs.c       | 3 +++
>  2 files changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index cf9a6b4eb913..b91b32195dcf 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -2534,6 +2534,9 @@ static int eb_submit(struct i915_execbuffer *eb, struct i915_vma *batch)
>  {
>  	int err;
>  
> +	if (intel_context_nopreempt(eb->context))
> +		__set_bit(I915_FENCE_FLAG_NOPREEMPT, &eb->request->fence.flags);
> +
>  	err = eb_move_to_gpu(eb);
>  	if (err)
>  		return err;
> @@ -2574,9 +2577,6 @@ static int eb_submit(struct i915_execbuffer *eb, struct i915_vma *batch)
>  			return err;
>  	}
>  
> -	if (intel_context_nopreempt(eb->context))
> -		__set_bit(I915_FENCE_FLAG_NOPREEMPT, &eb->request->fence.flags);
> -

makes sense to me...

Reviewed-by: Andi Shyti <andi.shyti@intel.com>

Thanks,
Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
