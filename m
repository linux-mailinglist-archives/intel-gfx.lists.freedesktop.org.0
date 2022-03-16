Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5AB84DB7AC
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Mar 2022 18:57:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32C1010E91F;
	Wed, 16 Mar 2022 17:57:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 416DE10E91F
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Mar 2022 17:57:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647453447; x=1678989447;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=GB9nqNMTsV/me4qm2zHrsPt9J0yZ+zImoQAp45EqDPc=;
 b=gwpi17aPFfauu0SB/eoauHU54DEY0NJ28QwhJ777BhKam2gXLcnRsyRe
 FsowIU08OkfRtGSv53nstXsZ1mVxxzHnXbNRGF2XgWS4E32wj0PWz2qtG
 Kh+a2TQScYJ8cXSDzryctM/DBy2cqKvN8QePEzMGgw9inUawLGxWRAnfc
 FSSmvHguXa+U1IlmRw9vKyG5qiv2OAPfbyI0cFiSPHcX13hqeZn05Bao8
 NAkR5LAWz62hgyhMALV8izA54OmX8YCC/a18A6fb2jGhZ2Ca6AJzBtVZw
 kbqLd2HUhJCjVexC89OEzo3oZbd4s4Pij278v2a6uM/GSK+ok/k8w7HdT A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10288"; a="236622862"
X-IronPort-AV: E=Sophos;i="5.90,187,1643702400"; d="scan'208";a="236622862"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2022 10:57:26 -0700
X-IronPort-AV: E=Sophos;i="5.90,187,1643702400"; d="scan'208";a="690676530"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2022 10:57:25 -0700
Date: Wed, 16 Mar 2022 19:58:00 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20220316175800.GG21723@intel.com>
References: <20220309164948.10671-1-ville.syrjala@linux.intel.com>
 <20220309164948.10671-5-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220309164948.10671-5-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v2 4/8] drm/i915: Reject excessive SAGV
 block time
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

On Wed, Mar 09, 2022 at 06:49:44PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> If the mailbox returns an exceesively large SAGV block time let's just
> reject it. This avoids having to worry about overflows when we add the
> SAGV block time to the wm0 latency.
> 
> We shall put the limit arbitrarily at U16_MAX. >65msec latency
> doesn't really make sense to me in any case.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/intel_pm.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 36f5bccabf64..166246fa27e4 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -3716,6 +3716,12 @@ static void intel_sagv_init(struct drm_i915_private *i915)
>  	drm_dbg_kms(&i915->drm, "SAGV supported: %s, original SAGV block time: %u us\n",
>  		    str_yes_no(intel_has_sagv(i915)), i915->sagv_block_time_us);
>  
> +	/* avoid overflow when adding with wm0 latency/etc. */
> +	if (drm_WARN(&i915->drm, i915->sagv_block_time_us > U16_MAX,
> +		     "Excessive SAGV block time %u, ignoring\n",
> +		     i915->sagv_block_time_us))
> +		i915->sagv_block_time_us = 0;
> +
>  	if (!intel_has_sagv(i915))
>  		i915->sagv_block_time_us = 0;
>  }
> -- 
> 2.34.1
> 
