Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E6F286AAEB
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Feb 2024 10:09:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D70C10E43E;
	Wed, 28 Feb 2024 09:09:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Riddy4ly";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1850C10E43E
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Feb 2024 09:09:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709111342; x=1740647342;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=xqdCE8saf9yjl04BMQfF8tLBTtrO9q1KyeivzSAh2ws=;
 b=Riddy4lyRvZmQiXjFfiPjudnYhwKWPFcdGPAmMP8Ss89C8LLdTuixwIX
 RXoPfFnl/27pOn4iNAc/4+wSGwhWT6nFKb+XyucMD4V01LyticLplDIv1
 MDGaQt4ghW46Ah8TxJzPVKZkz2RKCnWxQZlIKdNM2gq9ib49wTKKXLlPA
 kSHst3ebp1JKYLMKnw5DubMPjcr/cOfdInjH07YzwhcaiC8j/Qi9ZhqE0
 gMZR0DDXAGUXcWn8HBOJ4vz5Pr35Z9JLullzhZ2ClLIuM8XppqZua7NUj
 Tb7DJqVdDhRv87LzrNdwoT2FHiHUmFq8lEjulyh7BLUIi54Cvh1Fj4BdM w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="3344431"
X-IronPort-AV: E=Sophos;i="6.06,190,1705392000"; 
   d="scan'208";a="3344431"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2024 01:09:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,190,1705392000"; d="scan'208";a="12081961"
Received: from albuadri-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.50.67])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2024 01:08:58 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Vidya Srinivas <vidya.srinivas@intel.com>, intel-gfx@lists.freedesktop.org
Cc: khaled.almahallawy@intel.com, Vidya Srinivas <vidya.srinivas@intel.com>
Subject: Re: [PATCH 1/2] Revert "drm/i915/mst: Reject modes that require the
 bigjoiner"
In-Reply-To: <20240227181849.22614-2-vidya.srinivas@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240227181849.22614-1-vidya.srinivas@intel.com>
 <20240227181849.22614-2-vidya.srinivas@intel.com>
Date: Wed, 28 Feb 2024 11:08:55 +0200
Message-ID: <87bk81dkgo.fsf@intel.com>
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

On Tue, 27 Feb 2024, Vidya Srinivas <vidya.srinivas@intel.com> wrote:
> This reverts commit 9c058492b16f90bb772cb0dad567e8acc68e155d.
>
> Reverting for adding MST bigjoiner functionality.

Please squash this together with the fix. Someone might think a revert
is a fix that needs to be backported. Besides, for bisection this
creates a non-working commit.

BR,
Jani.


>
> Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 4 ----
>  1 file changed, 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index db1254b036f1..b062f4ee6c8b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -1349,10 +1349,6 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
>  	if (intel_dp_need_bigjoiner(intel_dp, mode->hdisplay, target_clock)) {
>  		bigjoiner = true;
>  		max_dotclk *= 2;
> -
> -		/* TODO: add support for bigjoiner */
> -		*status = MODE_CLOCK_HIGH;
> -		return 0;
>  	}
>  
>  	if (DISPLAY_VER(dev_priv) >= 10 &&

-- 
Jani Nikula, Intel
