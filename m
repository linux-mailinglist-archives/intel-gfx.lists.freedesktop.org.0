Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 387DFA85F35
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Apr 2025 15:39:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABECE10E031;
	Fri, 11 Apr 2025 13:39:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kSHCuH0Y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35B3410E031;
 Fri, 11 Apr 2025 13:39:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744378754; x=1775914754;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=t4Ygd8tJT8kQ3Z9ZIY1kVNlH0pyyRUFkdwwBS3YIcT4=;
 b=kSHCuH0Y9sQSQvWwajbZ3ZzCib1cKlGQX0sztWX7rUCcjt+Q3pzF5UFb
 P5TDBWj4fXl7ROhWhsUHUbNc8dZ+6zPEXEQYVr+i5HnR74uC3FKRmZiRa
 Dx9hI6o8H+qpz/8V8eo/3ng0+ALwjb8iqUy3652tnUzQs3iD1Y6NBGtJe
 9BkBMy9q0bQhdNve6RZtrFuWWK3T6kYJMjGfesVvRbzOyJHsKHxS9c1c9
 zuA2uvSV8DB8NDcUhIOhSPYwcXvrgaOgkACBR3rAy5UZDoy8fYbUQyTxf
 GIuyXp2vuARCSl82TGf22N2sYh1rEtBmagT49wFuSMfczD4IUB6idMqrN A==;
X-CSE-ConnectionGUID: WKtrJQDOTBmN9HipeybQng==
X-CSE-MsgGUID: W75wlviMSIGXITM6CvHb/w==
X-IronPort-AV: E=McAfee;i="6700,10204,11401"; a="45169904"
X-IronPort-AV: E=Sophos;i="6.15,205,1739865600"; d="scan'208";a="45169904"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2025 06:39:14 -0700
X-CSE-ConnectionGUID: j8cHJQQ9Rf6ei7Zwc7O8Ig==
X-CSE-MsgGUID: 46IqcRCaRwutlkPZw5TWgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,205,1739865600"; d="scan'208";a="134355060"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 11 Apr 2025 06:39:12 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 11 Apr 2025 16:39:10 +0300
Date: Fri, 11 Apr 2025 16:39:10 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 5/5] drm/i915: use graphics version instead of PCH
 split in error capture
Message-ID: <Z_kbfnZ1yKrbmKkO@intel.com>
References: <cover.1744208554.git.jani.nikula@intel.com>
 <786195f92466317f521404be744629b0a077c491.1744208554.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <786195f92466317f521404be744629b0a077c491.1744208554.git.jani.nikula@intel.com>
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

On Wed, Apr 09, 2025 at 05:23:47PM +0300, Jani Nikula wrote:
> Avoid using PCH checks in core i915 code, in preparation for moving PCH
> handling to display.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_gpu_error.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
> index 62e4a293ed9b..aa2cad910902 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.c
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
> @@ -1792,7 +1792,7 @@ static void gt_record_global_nonguc_regs(struct intel_gt_coredump *gt)
>  			gt->gtier[i] =
>  				intel_uncore_read(uncore, GEN8_GT_IER(i));
>  		gt->ngtier = 4;
> -	} else if (HAS_PCH_SPLIT(i915)) {
> +	} else if (GRAPHICS_VER(i915) >= 5) {

This would now cover VLV correctly as well, so you could drop the
vlv special case at the top of the if ladder completely.

Either way
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

>  		gt->gtier[0] = intel_uncore_read(uncore, GTIER);
>  		gt->ngtier = 1;
>  	} else {
> -- 
> 2.39.5

-- 
Ville Syrjälä
Intel
