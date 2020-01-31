Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 831A114EE95
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 15:38:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1D2C6E9AF;
	Fri, 31 Jan 2020 14:38:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9548F6E9AF
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 14:38:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jan 2020 06:38:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,386,1574150400"; d="scan'208";a="253346552"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga004.fm.intel.com with ESMTP; 31 Jan 2020 06:38:08 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 262265C0D3C; Fri, 31 Jan 2020 16:37:19 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200131081543.2251298-1-chris@chris-wilson.co.uk>
References: <20200131081543.2251298-1-chris@chris-wilson.co.uk>
Date: Fri, 31 Jan 2020 16:37:19 +0200
Message-ID: <87pnezae00.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/gt: Also use async bind for
 PIN_USER into bsw/bxt ggtt
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

> In the rare cases where we are using the global GGTT for execution in
> the selftests, we have marked them with PIN_USER knowing that they will
> be bound as PIN_GLOBAL as well. However, we need to catch the extra flag
> in deciding to use the async worker for such binds as well.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_ggtt.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> index 3b23b431bd56..9e8c2e189aef 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> @@ -846,7 +846,8 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
>  	    IS_CHERRYVIEW(i915) /* fails with concurrent use/update */) {
>  		ggtt->vm.insert_entries = bxt_vtd_ggtt_insert_entries__BKL;
>  		ggtt->vm.insert_page    = bxt_vtd_ggtt_insert_page__BKL;
> -		ggtt->vm.bind_async_flags = I915_VMA_GLOBAL_BIND;
> +		ggtt->vm.bind_async_flags =
> +		       	I915_VMA_GLOBAL_BIND | I915_VMA_LOCAL_BIND;
>  	}
>  
>  	ggtt->invalidate = gen8_ggtt_invalidate;
> -- 
> 2.25.0
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
