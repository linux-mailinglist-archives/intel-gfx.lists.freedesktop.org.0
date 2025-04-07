Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CAE2A7E617
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Apr 2025 18:19:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B67D410E4F1;
	Mon,  7 Apr 2025 16:19:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Rmn1bV4s";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5CFE10E4F1;
 Mon,  7 Apr 2025 16:19:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744042769; x=1775578769;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=IlsfnuiykyeFlHX1aMjQGh1SU+4+4alWz6meWIXREYA=;
 b=Rmn1bV4sW9rxBi1l0wCiMl60H7rP1y8+2XA3KjtqC8t2eYPqVMG9nQhU
 WfvdYTGFWzfqtUxh+7dd+doCBMBHtaFwm2b4PpOm8UFatXcUZ3TU56NxU
 70cJvVe6HLxJt1qpIAsryRWmDY26aCqN7cK+vUt+UliSKVFvUkX6yzoTs
 H53AOxM8q+eSZt2LfF+3bqHYGGsW4wDvcLealKWXM1kpKYWPVn8woTvWL
 eWQggz/vblAPWXWlRLBWobNKGKSvKJCA8Hq8Aw3mI7sDGuQtJesLZe2W8
 MwiCUotJEQgpml+UaYzz9xp05wDfbp3QX6BhYDgLpmxdyefNVUNDGBILq A==;
X-CSE-ConnectionGUID: 1NR5yQylRCezUe8DN7zF5Q==
X-CSE-MsgGUID: lSqB+EfwSrO4fcJd1ETdxg==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="44584155"
X-IronPort-AV: E=Sophos;i="6.15,194,1739865600"; d="scan'208";a="44584155"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 09:19:29 -0700
X-CSE-ConnectionGUID: KD88OITATHmtpJ3c/ZuKvw==
X-CSE-MsgGUID: D01itwlBTBa1Blf5B95I4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,194,1739865600"; d="scan'208";a="133205573"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 07 Apr 2025 09:19:26 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 07 Apr 2025 19:19:25 +0300
Date: Mon, 7 Apr 2025 19:19:25 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 uma.shankar@intel.com, animesh.manna@intel.com
Subject: Re: [PATCH 05/11] drm/i915/dsb: add intel_dsb_gosub_finish()
Message-ID: <Z_P7Da3un_pvEfqj@intel.com>
References: <20250407142359.1398410-1-chaitanya.kumar.borah@intel.com>
 <20250407142359.1398410-6-chaitanya.kumar.borah@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250407142359.1398410-6-chaitanya.kumar.borah@intel.com>
X-Patchwork-Hint: comment
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

On Mon, Apr 07, 2025 at 07:53:53PM +0530, Chaitanya Kumar Borah wrote:
> A DSB buffer which will be used for GOSUB execution does not need
> the DEWAKE mechanism but still need to be 64 bit aligned. Add helper
> to finish preparation of a dsb buffer to be executed with GOSUB
> instruction.
> 
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dsb.c | 7 +++++++
>  drivers/gpu/drm/i915/display/intel_dsb.h | 1 +
>  2 files changed, 8 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
> index 2cda6fc7857b..bffa02a0442c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> @@ -585,6 +585,13 @@ void intel_dsb_gosub(struct intel_dsb *dsb,
>  	intel_dsb_align_tail(dsb);
>  }
>  
> +void intel_dsb_gosub_finish(struct intel_dsb *dsb)
> +{
> +	intel_dsb_align_tail(dsb);

There is one more w/a listd that may require us to do something like::

/* "All subroutines called by the GOSUB instruction must end with a cacheline of NOPs" */
intel_dsb_noop(8);

> +
> +	intel_dsb_buffer_flush_map(&dsb->dsb_buf);
> +}
> +
>  void intel_dsb_finish(struct intel_dsb *dsb)
>  {
>  	struct intel_crtc *crtc = dsb->crtc;
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.h b/drivers/gpu/drm/i915/display/intel_dsb.h
> index 8b2cf0a7b7e6..6900acd603b8 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.h
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.h
> @@ -31,6 +31,7 @@ struct intel_dsb *intel_dsb_prepare(struct intel_atomic_state *state,
>  				    enum intel_dsb_id dsb_id,
>  				    unsigned int max_cmds);
>  void intel_dsb_finish(struct intel_dsb *dsb);
> +void intel_dsb_gosub_finish(struct intel_dsb *dsb);
>  void intel_dsb_cleanup(struct intel_dsb *dsb);
>  void intel_dsb_reg_write(struct intel_dsb *dsb,
>  			 i915_reg_t reg, u32 val);
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
