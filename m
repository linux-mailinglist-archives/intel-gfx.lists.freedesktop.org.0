Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F04AD2F1C87
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Jan 2021 18:35:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E43089CB3;
	Mon, 11 Jan 2021 17:35:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3D7E89CB3
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Jan 2021 17:35:49 +0000 (UTC)
IronPort-SDR: +GY3a7Gr4ZAuSOt8T2kiNxSUbzt9UojkzL4gwtpkmsa23rrEri0KQMT0wjPDyop1uVd4OjbHHt
 RQ2Q+jV6Di4w==
X-IronPort-AV: E=McAfee;i="6000,8403,9861"; a="175325723"
X-IronPort-AV: E=Sophos;i="5.79,339,1602572400"; d="scan'208";a="175325723"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2021 09:35:49 -0800
IronPort-SDR: 0HXAZT+Q/0MbEDzcvR/jKGI3sSTMeEl/lYDkhUXJQSA6eyzg96u8hUE/TDMCQ7FIKZqYB6HJJ9
 oSHlTN8Ew7SA==
X-IronPort-AV: E=Sophos;i="5.79,339,1602572400"; d="scan'208";a="363207850"
Received: from jaksamit-mobl.amr.corp.intel.com (HELO intel.com)
 ([10.212.178.167])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2021 09:35:48 -0800
Date: Mon, 11 Jan 2021 12:35:45 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20210111173545.GB3689@intel.com>
References: <20210110150404.19535-1-chris@chris-wilson.co.uk>
 <20210110150404.19535-2-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210110150404.19535-2-chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 02/11] drm/i915/gt: Restore clear-residual
 mitigations for Ivybridge, Baytrail
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

On Sun, Jan 10, 2021 at 03:03:55PM +0000, Chris Wilson wrote:
> The mitigation is required for all gen7 platforms, now that it does not
> cause GPU hangs, restore it for Ivybridge and Baytrail.
> 
> Fixes: 47f8253d2b89 ("drm/i915/gen7: Clear all EU/L3 residual contexts")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Cc: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>
> Cc: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
> Cc: Bloomfield Jon <jon.bloomfield@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_ring_submission.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> index 1c6d421f6fe5..724d56c9583d 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> @@ -1324,7 +1324,7 @@ int intel_ring_submission_setup(struct intel_engine_cs *engine)
>  
>  	GEM_BUG_ON(timeline->hwsp_ggtt != engine->status_page.vma);
>  
> -	if (IS_HASWELL(engine->i915) && engine->class == RENDER_CLASS) {
> +	if (IS_GEN(engine->i915, 7) && engine->class == RENDER_CLASS) {

when CI is really happy

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>


>  		err = gen7_ctx_switch_bb_init(engine);
>  		if (err)
>  			goto err_ring_unpin;
> -- 
> 2.20.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
