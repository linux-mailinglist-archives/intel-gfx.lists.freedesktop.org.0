Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 65DB774D3D3
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jul 2023 12:45:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE4C910E140;
	Mon, 10 Jul 2023 10:45:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E83EC10E140
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jul 2023 10:45:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688985929; x=1720521929;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=Q7b7oDE5YXKUW9ZVWFiWYq9/8ywIDBwFrTuxVzeDaVg=;
 b=VK4mWrHRtDdU144SREleF/DCymPznVeOvPEvSFXCKtwCo6sOyHMSXP5C
 c1ByH8XCjwlnZklr/4OcSNsbgyLBC4So5jSTl2YDv7QqO4YCWbkTIXbYf
 QhZDKhTojMBR6qEH0m+lUYz8loY238OG3/UfmFVqFnWE9gjVGLtgeNw4f
 XviVI/olWH93A0CFdFaQIVNS8XsLvkxtLnpHFAVAtNS+PZ79ACzPtqCny
 /FnBnJqXFovFOeoRfq95m8laAAWjLihe5EbEsnxhUJqrcTkeRqiIke1j1
 omdh9v0SKz0wUZWtEV+3LIGTKSZxv/FBo1VJ/vX3aoFqdHYJtn+wUYksM A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10766"; a="343903754"
X-IronPort-AV: E=Sophos;i="6.01,194,1684825200"; d="scan'208";a="343903754"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2023 03:45:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10766"; a="894733562"
X-IronPort-AV: E=Sophos;i="6.01,194,1684825200"; d="scan'208";a="894733562"
Received: from stoicaan-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.52.170])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2023 03:45:18 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230710100911.2736389-2-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230710100911.2736389-1-suraj.kandpal@intel.com>
 <20230710100911.2736389-2-suraj.kandpal@intel.com>
Date: Mon, 10 Jul 2023 13:45:15 +0300
Message-ID: <87bkgkjb9g.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/dsc: Add PPS enum
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

On Mon, 10 Jul 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Add PPS enum so that we can later on use it to distinguish which
> PPS is being read or written onto.

The patch adding the enum alone isn't useful, should be squashed with
something that uses it.

BR,
Jani.

>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vdsc.c | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index bd9116d2cd76..1a8272324c36 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -19,6 +19,23 @@
>  #include "intel_vdsc.h"
>  #include "intel_vdsc_regs.h"
>  
> +enum intel_dsc_pps {
> +	PPS_0 = 0,
> +	PPS_1,
> +	PPS_2,
> +	PPS_3,
> +	PPS_4,
> +	PPS_5,
> +	PPS_6,
> +	PPS_7,
> +	PPS_8,
> +	PPS_9,
> +	PPS_10,
> +	PPS_16,
> +	PPS_17,
> +	PPS_18,
> +};
> +
>  bool intel_dsc_source_support(const struct intel_crtc_state *crtc_state)
>  {
>  	const struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);

-- 
Jani Nikula, Intel Open Source Graphics Center
