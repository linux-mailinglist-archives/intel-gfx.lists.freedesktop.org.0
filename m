Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 052674508D6
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Nov 2021 16:44:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 648F96E120;
	Mon, 15 Nov 2021 15:44:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34F316E120
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Nov 2021 15:44:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10168"; a="213496206"
X-IronPort-AV: E=Sophos;i="5.87,236,1631602800"; d="scan'208";a="213496206"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2021 07:44:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,236,1631602800"; d="scan'208";a="454064771"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga006.jf.intel.com with SMTP; 15 Nov 2021 07:44:08 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 15 Nov 2021 17:44:07 +0200
Date: Mon, 15 Nov 2021 17:44:07 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YZKARz5YS7PvL23H@intel.com>
References: <20211115140549.27629-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211115140549.27629-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/fbc: fix the FBC kernel-doc
 warnings
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Nov 15, 2021 at 04:05:49PM +0200, Jani Nikula wrote:
> Fix the recently introduced 'make htmldocs' warnings:
> 
> $ make htmldocs 2>&1 > /dev/null | grep i915
> ./drivers/gpu/drm/i915/display/intel_fbc.c:635: warning: Excess function parameter 'i915' description in 'intel_fbc_is_active'
> ./drivers/gpu/drm/i915/display/intel_fbc.c:1638: warning: Excess function parameter 'i915' description in 'intel_fbc_handle_fifo_underrun_irq'
> ./drivers/gpu/drm/i915/display/intel_fbc.c:635: warning: Function parameter or member 'fbc' not described in 'intel_fbc_is_active'
> ./drivers/gpu/drm/i915/display/intel_fbc.c:635: warning: Excess function parameter 'i915' description in 'intel_fbc_is_active'
> ./drivers/gpu/drm/i915/display/intel_fbc.c:1638: warning: Function parameter or member 'fbc' not described in 'intel_fbc_handle_fifo_underrun_irq'
> ./drivers/gpu/drm/i915/display/intel_fbc.c:1638: warning: Excess function parameter 'i915' description in 'intel_fbc_handle_fifo_underrun_irq'
> 
> Fixes: e49a656b924e ("drm/i915/fbc: Start passing around intel_fbc")
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index a7e0f79ceb63..d0c34bc3af6c 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -624,7 +624,7 @@ int intel_fbc_set_false_color(struct intel_fbc *fbc, bool enable)
>  
>  /**
>   * intel_fbc_is_active - Is FBC active?
> - * @i915: i915 device instance
> + * @fbc: The FBC instance
>   *
>   * This function is used to verify the current state of FBC.
>   *
> @@ -1592,7 +1592,7 @@ static void intel_fbc_underrun_work_fn(struct work_struct *work)
>  
>  /*
>   * intel_fbc_reset_underrun - reset FBC fifo underrun status.
> - * @i915: i915 device instance
> + * @fbc: The FBC instance
>   *
>   * See intel_fbc_handle_fifo_underrun_irq(). For automated testing we
>   * want to re-enable FBC after an underrun to increase test coverage.
> @@ -1622,7 +1622,7 @@ int intel_fbc_reset_underrun(struct intel_fbc *fbc)
>  
>  /**
>   * intel_fbc_handle_fifo_underrun_irq - disable FBC when we get a FIFO underrun
> - * @i915: i915 device instance
> + * @fbc: The FBC instance
>   *
>   * Without FBC, most underruns are harmless and don't really cause too many
>   * problems, except for an annoying message on dmesg. With FBC, underruns can
> -- 
> 2.30.2

-- 
Ville Syrjälä
Intel
