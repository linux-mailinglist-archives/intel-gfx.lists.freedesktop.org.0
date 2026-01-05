Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2CE7CF2B5A
	for <lists+intel-gfx@lfdr.de>; Mon, 05 Jan 2026 10:23:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4840C10E092;
	Mon,  5 Jan 2026 09:23:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Aq8EXwLV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BC9410E025;
 Mon,  5 Jan 2026 09:23:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767604996; x=1799140996;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=82UQ6CMPWI3UtwcKbNpViKGdLT3o0TEho8pwkejXeGE=;
 b=Aq8EXwLVAAE3wXcHqlM2lWVvfIXkslaaSB0zY0XKmYleSK3iArVbm1Ja
 TzeXhWcYGNvMYzXFrKfmhClS5gSYiVgGWhvDMz4+xVdK/lS8XVFSYHo/r
 /nZTQs4rRuRLTmC4RgE6hXlUVMz7ig/fhZkv1QPxXwDjBZ87vYKy3Qtvx
 fBQWEr+YT11nJ6Ae+F5wL9jx+bQOVWQFs8orm+vz1MQI79v7gmy9SlmgR
 4uFAPYo2+l0SBMlMU7vx6dbsDy2E6QGEWECyajC82K84q8sD2Xvggwz6w
 UHtQY7QjnHwwiCzVHZy+RzcdHDO8TiqUic0I2S/yMd6wn06V7CnZyfTt8 Q==;
X-CSE-ConnectionGUID: S9PtgIKTQSO8hmRI2xzQHw==
X-CSE-MsgGUID: 2YIj+6K0Q42Cdr0bGE8Wgw==
X-IronPort-AV: E=McAfee;i="6800,10657,11661"; a="69043360"
X-IronPort-AV: E=Sophos;i="6.21,203,1763452800"; d="scan'208";a="69043360"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 01:23:15 -0800
X-CSE-ConnectionGUID: oNc1mjPbTPimUvdvuqYQhA==
X-CSE-MsgGUID: I6NBEieNTRiw/jrDg1OA0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,203,1763452800"; d="scan'208";a="233042067"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.3])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 01:23:13 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Nemesa Garg <nemesa.garg@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: Re: [PATCH] drm/i915/display: Disable casf with joiner
In-Reply-To: <20260105091202.203926-1-nemesa.garg@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260105091202.203926-1-nemesa.garg@intel.com>
Date: Mon, 05 Jan 2026 11:23:10 +0200
Message-ID: <d3e9a0decf1667eff15ab8d663a61a146ae13f02@intel.com>
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

On Mon, 05 Jan 2026, Nemesa Garg <nemesa.garg@intel.com> wrote:
> Currently pipe scaling is not supported with the
> joiner. As casf requires pipe scaling, fail the
> atomic commit whenever joiner comes into picture.
>
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_casf.c | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_casf.c b/drivers/gpu/drm/i915/display/intel_casf.c
> index 95339b496f24..259bc50d5ed8 100644
> --- a/drivers/gpu/drm/i915/display/intel_casf.c
> +++ b/drivers/gpu/drm/i915/display/intel_casf.c
> @@ -116,6 +116,11 @@ int intel_casf_compute_config(struct intel_crtc_state *crtc_state)
>  		return 0;
>  	}
>  
> +	if (crtc_state->joiner_pipes) {
> +		drm_WARN(display->drm, 0, "CASF not supported with joiner\n");

With a backtrace?!

> +		return -EINVAL;
> +	}
> +
>  	crtc_state->hw.casf_params.casf_enable = true;
>  
>  	/*

-- 
Jani Nikula, Intel
