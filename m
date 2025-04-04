Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6EBAA7BCB6
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Apr 2025 14:34:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C58D710E128;
	Fri,  4 Apr 2025 12:34:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SpAi7642";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A86810E092;
 Fri,  4 Apr 2025 12:34:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743770080; x=1775306080;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=eoi1bXreYOdRlCVAgzwbHQvMQ62II81oeZvol3t4Fjs=;
 b=SpAi7642rWV2+6+pZ1RiBF7QHhT08ypbeN/CaLfTqDamziAcZqakiHc8
 9RvvE6pEtL/JBgrEQktemKCDC+vDNFV5tPAXk0kBeMZso2bqW13nVPvuf
 8b4zY+YKgrgeeoLysdPtbT/uA8l6yvCui1c58EY61yNkLu3u2uDD+pmCo
 H4f7HarT3CZOmHYImZBNf4NnsMzJ24FA5C+EfyPXnj93tOUnQhUGoe5II
 aNi+ukNq2d8nAgh3iedMaw0NK7fuz71CD3MFrkJUTz726n+nvgWhbWuoA
 JvADlUJs5DauaFkWMZWsQN81uE3ufiDpZsGzpVK6dPqmAb64jvSJqouEq Q==;
X-CSE-ConnectionGUID: jmRcjmiyRs298olyNsx6zg==
X-CSE-MsgGUID: jDw0G5jvTtm5PpB5pTKbbA==
X-IronPort-AV: E=McAfee;i="6700,10204,11393"; a="55841648"
X-IronPort-AV: E=Sophos;i="6.15,188,1739865600"; d="scan'208";a="55841648"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2025 05:34:39 -0700
X-CSE-ConnectionGUID: QEXCURfsTwuAy+aom5u6YA==
X-CSE-MsgGUID: 4EPH64BtRRCUeXKuBRcFlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,188,1739865600"; d="scan'208";a="127282348"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.234])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2025 05:34:37 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com, Arun R Murthy <arun.r.murthy@intel.com>
Subject: Re: [PATCH v5 1/2] drm/i915/display/dp: Remove support for UHBR13.5
In-Reply-To: <20250404-dprates-v5-1-c93f561a095e@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250404-dprates-v5-0-c93f561a095e@intel.com>
 <20250404-dprates-v5-1-c93f561a095e@intel.com>
Date: Fri, 04 Apr 2025 15:34:34 +0300
Message-ID: <87r028yujp.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Fri, 04 Apr 2025, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> The retimer issue for UHBR13.5 is fixed in BMG.

As I said before, I don't even know what "the retimer issue" was. It's
never been explained anywhere. Please explain it to me. And don't send a
new version of the patch.

BR,
Jani.


> So for all platforms lesser than BMG(XE2_HPD/DISPLAY_VERx100 1401)
> disable UHBR13.5.
> commit caf3d748f646 ("drm/i915/dp: Remove support for UHBR13.5")
> removes UHBR13.5 for MTL.
>
> v2: Reframed the commit msg (Jani)
> v4: Reframed the commit msg & update the max rate supported (Jani)
> v5: Reframed the commit msg (Jani)
>
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index f21f9b441fc2a4e644c69410e6ec6b3d37907478..92bca701a989b03e2ad4b3d9e7d0a9ef12567e5a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -481,7 +481,7 @@ bool intel_dp_has_joiner(struct intel_dp *intel_dp)
>  
>  static int dg2_max_source_rate(struct intel_dp *intel_dp)
>  {
> -	return intel_dp_is_edp(intel_dp) ? 810000 : 1350000;
> +	return intel_dp_is_edp(intel_dp) ? 810000 : 1000000;
>  }
>  
>  static int icl_max_source_rate(struct intel_dp *intel_dp)
> @@ -550,7 +550,7 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
>  	};
>  	static const int icl_rates[] = {
>  		162000, 216000, 270000, 324000, 432000, 540000, 648000, 810000,
> -		1000000, 1350000,
> +		1000000,
>  	};
>  	static const int bxt_rates[] = {
>  		162000, 216000, 243000, 270000, 324000, 432000, 540000

-- 
Jani Nikula, Intel
