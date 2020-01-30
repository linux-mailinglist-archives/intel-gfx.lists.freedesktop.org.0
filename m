Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F2EC14D984
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2020 12:11:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDF4B6E0CE;
	Thu, 30 Jan 2020 11:11:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA19B6E0CE
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jan 2020 11:11:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jan 2020 03:11:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,381,1574150400"; d="scan'208";a="277775317"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by FMSMGA003.fm.intel.com with ESMTP; 30 Jan 2020 03:11:20 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 3B8C35C1DCF; Thu, 30 Jan 2020 13:10:32 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200130092239.1743672-1-chris@chris-wilson.co.uk>
References: <20200130092239.1743672-1-chris@chris-wilson.co.uk>
Date: Thu, 30 Jan 2020 13:10:32 +0200
Message-ID: <871rrh9p3r.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/gt: Skip global serialisation
 of clear_range for bxt vtd
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

Chris Wilson <chris@chris-wilson.co.uk> writes:

> VT'd on Broxton and on Braswell require serialisation of GGTT updates.
> However, it seems to only be required for insertion, so drop the
> complication and heavyweight stop_machine() for clears. The range will
> be serialised again before use.

This makes much sense.

>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>


Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_ggtt.c | 27 ---------------------------
>  1 file changed, 27 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> index 79096722ce16..81a63f7bc6c4 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> @@ -350,31 +350,6 @@ static void bxt_vtd_ggtt_insert_entries__BKL(struct i915_address_space *vm,
>  	stop_machine(bxt_vtd_ggtt_insert_entries__cb, &arg, NULL);
>  }
>  
> -struct clear_range {
> -	struct i915_address_space *vm;
> -	u64 start;
> -	u64 length;
> -};
> -
> -static int bxt_vtd_ggtt_clear_range__cb(void *_arg)
> -{
> -	struct clear_range *arg = _arg;
> -
> -	gen8_ggtt_clear_range(arg->vm, arg->start, arg->length);
> -	bxt_vtd_ggtt_wa(arg->vm);
> -
> -	return 0;
> -}
> -
> -static void bxt_vtd_ggtt_clear_range__BKL(struct i915_address_space *vm,
> -					  u64 start,
> -					  u64 length)
> -{
> -	struct clear_range arg = { vm, start, length };
> -
> -	stop_machine(bxt_vtd_ggtt_clear_range__cb, &arg, NULL);
> -}
> -
>  static void gen6_ggtt_clear_range(struct i915_address_space *vm,
>  				  u64 start, u64 length)
>  {
> @@ -879,8 +854,6 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
>  	    IS_CHERRYVIEW(i915) /* fails with concurrent use/update */) {
>  		ggtt->vm.insert_entries = bxt_vtd_ggtt_insert_entries__BKL;
>  		ggtt->vm.insert_page    = bxt_vtd_ggtt_insert_page__BKL;
> -		if (ggtt->vm.clear_range != nop_clear_range)
> -			ggtt->vm.clear_range = bxt_vtd_ggtt_clear_range__BKL;
>  	}
>  
>  	ggtt->invalidate = gen8_ggtt_invalidate;
> -- 
> 2.25.0
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
