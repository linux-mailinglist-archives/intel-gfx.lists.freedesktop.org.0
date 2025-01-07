Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9414A03FCF
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jan 2025 13:52:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5C3010E6D2;
	Tue,  7 Jan 2025 12:52:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h9x1stHe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44C0C10E6D2
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jan 2025 12:52:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736254325; x=1767790325;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=NlsJaWykxr37cfIegPMJ8DSSVhqZlFF5cypeKY6M5Rg=;
 b=h9x1stHeSo2etEUJ+my+45v9ZimgBUg8gx3WssguYnT719vepuc8jscp
 u4kdJzRSL/V4pdhMb2b8T2jQPrLinrEFrv2mJ057Zn8NbQLzM6GpvAZ20
 Pm7txiHDni0szOmQZLtCe15Z4spuX01hWR+9mFL0PsFzT6t9lg/WHvnwa
 oijG/VPwQ9fNsuHA4kOQwduEvo2wLoG9brmm7Vn7qlEZDm/UPEUuR4v1S
 fRuG3mrBgmNwzMbBYo7FgKmAP4w7Hwrf+gC6FOp5YeH3gGHlRo2IMGWdc
 peb6Y5EGxBKJgTnXfQmcCkTYcI77z8GMGetBPmlYU/w13GYusLFPycSue Q==;
X-CSE-ConnectionGUID: 5gfQLjEcRHuMG8EF/ZPPVg==
X-CSE-MsgGUID: P/cP3xVUQBKJ/ZH6Sz0Igw==
X-IronPort-AV: E=McAfee;i="6700,10204,11308"; a="40205675"
X-IronPort-AV: E=Sophos;i="6.12,295,1728975600"; d="scan'208";a="40205675"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2025 04:52:04 -0800
X-CSE-ConnectionGUID: WoU5/8vWSXO+XCzC7tMNQw==
X-CSE-MsgGUID: Mox61swJRGCKjIiNKfBW+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,295,1728975600"; d="scan'208";a="107742148"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.85])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2025 04:52:02 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Nitin Gote <nitin.r.gote@intel.com>, intel-gfx@lists.freedesktop.org
Cc: andi.shyti@intel.com, Nitin Gote <nitin.r.gote@intel.com>
Subject: Re: [PATCH v1 7/8] drm/i915/display: fix typos in i915/display files
In-Reply-To: <20250106103037.1401847-8-nitin.r.gote@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250106103037.1401847-1-nitin.r.gote@intel.com>
 <20250106103037.1401847-8-nitin.r.gote@intel.com>
Date: Tue, 07 Jan 2025 14:51:58 +0200
Message-ID: <87zfk2lrbl.fsf@intel.com>
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

On Mon, 06 Jan 2025, Nitin Gote <nitin.r.gote@intel.com> wrote:
> @@ -8440,7 +8440,7 @@ intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
>  
>  	/*
>  	 * Most people will probably want a fullscreen
> -	 * plane so let's not advertize modes that are
> +	 * plane so let's not advertise modes that are
>  	 * too big for that.
>  	 */
>  	if (DISPLAY_VER(dev_priv) >= 30) {

I appreciate the typo fixes, but there's an explicit policy that certain
things are not typos and should not be fixed. This includes British
vs. American spelling.

Can you not tell codespell that?

> @@ -2552,7 +2552,7 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
>  		 * seem to suggest we should do otherwise.
>  		 *
>  		 * Use the maximum clock and number of lanes the eDP panel
> -		 * advertizes being capable of in case the initial fast
> +		 * advertises being capable of in case the initial fast
>  		 * optimal params failed us. The panels are generally
>  		 * designed to support only a single clock and lane
>  		 * configuration, and typically on older panels these

Ditto.

> @@ -442,8 +444,10 @@ static int intel_overlay_off(struct intel_overlay *overlay)
>  	return i915_active_wait(&overlay->last_flip);
>  }
>  
> -/* recover from an interruption due to a signal
> - * We have to be careful not to repeat work forever an make forward progess. */
> +/*
> + * recover from an interruption due to a signal
> + * We have to be careful not to repeat work forever an make forward progress.
> + */

If you're changing the comment format while at it, might as well
capitalize the first sentence and add a period.


BR,
Jani.


-- 
Jani Nikula, Intel
