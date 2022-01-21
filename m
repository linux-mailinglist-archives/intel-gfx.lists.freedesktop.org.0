Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51BA8495D37
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jan 2022 11:04:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 734E210E9C9;
	Fri, 21 Jan 2022 10:04:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from pio-pvt-msa1.bahnhof.se (pio-pvt-msa1.bahnhof.se [79.136.2.40])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E22AE10E9C9
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jan 2022 10:04:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by pio-pvt-msa1.bahnhof.se (Postfix) with ESMTP id 17E893F595;
 Fri, 21 Jan 2022 11:04:49 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.1
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, NICE_REPLY_A=-0.001,
 URIBL_BLOCKED=0.001] autolearn=ham autolearn_force=no
Authentication-Results: pio-pvt-msa1.bahnhof.se (amavisd-new);
 dkim=pass (1024-bit key) header.d=shipmail.org
Received: from pio-pvt-msa1.bahnhof.se ([127.0.0.1])
 by localhost (pio-pvt-msa1.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iCew8aSdbk8v; Fri, 21 Jan 2022 11:04:48 +0100 (CET)
Received: by pio-pvt-msa1.bahnhof.se (Postfix) with ESMTPA id 8DCF53F55C;
 Fri, 21 Jan 2022 11:04:46 +0100 (CET)
Received: from [192.168.0.209] (unknown [192.55.55.53])
 by mail1.shipmail.org (Postfix) with ESMTPSA id 93EEF360347;
 Fri, 21 Jan 2022 11:04:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1642759485; bh=9G06Eiff/Bed2ESoF3p68kikpFWGmIOGKEJmwO/Hg/Y=;
 h=Date:Subject:To:References:From:In-Reply-To:From;
 b=ajNrrUXJsaiv8ZNRDaRMGIaPwMiVS7vTsWRxMjCN28YSptYPaARYy23EK0HhdyYe9
 5qV2cC+m6S9ZWvvoxbxlr3aPgNkSmS3EPtYkRyaZl4G3saiEiTPbpQnF3EqPKYhrYG
 yS+XIhnevaHn0ACBZwAYzF6JAMGIk2Go6f7Ap9Y0=
Message-ID: <ea6146a4-db14-1126-c849-db9205d091c9@shipmail.org>
Date: Fri, 21 Jan 2022 11:04:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Content-Language: en-US
To: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20211220120030.4116079-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
In-Reply-To: <20211220120030.4116079-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: reset RING_HEAD during
 intel_gt_unset_wedged
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


On 12/20/21 13:00, Tejas Upadhyay wrote:
> During repeated wedged-unwedged, it is
> found that i915_request_retire zaps the old
> request with 0x6b6b6b6b.
>
> On unwedged, we write a new request at RING_TAIL,
> expecting to start executuing from that position,
> but execution resumes from RING_HEAD (preserved
> from an earlier wakeup before wedging) and
> consumes the 0x6b.
>
> Resetting kernel/user context setup enables
> RING_HEAD to use RING_TAIL for submitting new
> requests which resolves issue. Normally this reset
> is applied when unpinning a user context, or for
> kernel_contexts upon waking up the device. But fast
> wedged-unwedged sequence will keep the device awake,
> preserving the RING_HEAD from before.
>
> Testcase: igt@gem_eio@unwedge-stress
>
> Note : Current user impact is assessed to be low, as
> this only affects intel_gt_unset_wedged which is
> currently only used during testing and upon suspend
> resume (where the device was already flushed and will
> reset the kernel_contexts on waking up). In the
> future though, this will present an issue for PCI
> error recovery.
>
> Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_engine_cs.c | 8 ++++++++
>   drivers/gpu/drm/i915/gt/intel_reset.c     | 3 +++
>   2 files changed, 11 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> index 352254e001b4..7e1c561bce69 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -1455,9 +1455,17 @@ void intel_engines_reset_default_submission(struct intel_gt *gt)
>   	enum intel_engine_id id;
>   
>   	for_each_engine(engine, gt, id) {
> +		struct intel_context *ce = engine->kernel_context;
> +
>   		if (engine->sanitize)
>   			engine->sanitize(engine);
>   
> +		/* Reset RING_HEAD so we don't consume the old
> +		 * poisoned request on unwedging
> +		 */
> +		if (ce)
> +			ce->ops->reset(ce);
> +

Would it make sense to instead stop excluding the kernel context in 
intel_engine_reset_pinned_contexts, which is called from 
engine->sanitize(). That would lead to a double kernel context reset in 
some situations, though, but I figure the above would as well if the 
engine was parked before unwedging?

How is the PCI error recovery affected? Do we have have a plan to 
address that?

Thanks,

/Thomas


>   		engine->set_default_submission(engine);
>   	}
>   }
> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
> index 7be0002d9d70..1c26e936e699 100644
> --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> @@ -961,6 +961,9 @@ static bool __intel_gt_unset_wedged(struct intel_gt *gt)
>   	}
>   	spin_unlock(&timelines->lock);
>   
> +	/* Ensure that all non-kernel contexts are unpinned as well */
> +	intel_gt_retire_requests(gt);
> +
>   	/* We must reset pending GPU events before restoring our submission */
>   	ok = !HAS_EXECLISTS(gt->i915); /* XXX better agnosticism desired */
>   	if (!INTEL_INFO(gt->i915)->gpu_reset_clobbers_display)
