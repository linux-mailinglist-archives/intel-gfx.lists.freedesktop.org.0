Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 06E9A133E4E
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2020 10:28:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B5DD6E191;
	Wed,  8 Jan 2020 09:28:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66FD76E20C
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jan 2020 09:28:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jan 2020 01:28:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,409,1571727600"; d="scan'208";a="421394142"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga005.fm.intel.com with ESMTP; 08 Jan 2020 01:28:32 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 0E7DE5C1DE9; Wed,  8 Jan 2020 11:28:02 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200107172842.3315449-1-chris@chris-wilson.co.uk>
References: <20200107172842.3315449-1-chris@chris-wilson.co.uk>
Date: Wed, 08 Jan 2020 11:28:02 +0200
Message-ID: <878smiuwkd.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Always force restore freshly
 pinned contexts
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

> It is highly unlikely, but still conceivable, that we submit a context
> with the same GGTT address as last active on the HW. In this case, with
> a matching LRCA, the HW would not restore the new context image causing
> a potential violation of our context isolation.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>

Acked-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_lrc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index f6174e597dd3..5ccc8a3538ba 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -2583,7 +2583,7 @@ __execlists_context_pin(struct intel_context *ce,
>  		goto unpin_active;
>  	}
>  
> -	ce->lrc_desc = lrc_descriptor(ce, engine);
> +	ce->lrc_desc = lrc_descriptor(ce, engine) | CTX_DESC_FORCE_RESTORE;
>  	ce->lrc_reg_state = vaddr + LRC_STATE_PN * PAGE_SIZE;
>  	__execlists_update_reg_state(ce, engine);
>  
> -- 
> 2.25.0.rc1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
