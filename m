Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96089917D70
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2024 12:13:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC8D310E828;
	Wed, 26 Jun 2024 10:13:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LtwBCfBG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E34A810E0A1;
 Wed, 26 Jun 2024 10:13:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719396788; x=1750932788;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=z44h/xkd7bCRHysoERSHfypo3wfUM27Yp5pLwaZ6xkc=;
 b=LtwBCfBGNVKVbl4XnADLM9fEZChpB+TV+OO2R/k93XFxCvyoAJunJdy6
 njWCOfpHv4/8AnC1/rU1LoOtzFIq0TTW1AXFeYl9XhEeGvVM+azJ296Xp
 OtT6gxk+6AYQiUhdg+CHwULdQV8mQMMXwK6eceKPIqeReOQRReQ12pbDC
 bf0P3RHIGLveJG/pLR3D4J+caUqDHpp8LbAezJ7nvCRNZqKGLnNlP72tR
 OmXy8jeYR3J8Ul1HScghuTonwa5yGXWXGp5dgAqLl0VDHBK8h4AOk9IMk
 TTHvqHRXbPiprtp/CPAhlyJRGjwb5mUDvg+lIYwwpBVDv62Wqx/01zVyb Q==;
X-CSE-ConnectionGUID: 8dhPg8RqRHaZJwK/2lVJ1g==
X-CSE-MsgGUID: R0oIOKmdRL+gqVt2xYH2vQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11114"; a="33992442"
X-IronPort-AV: E=Sophos;i="6.08,266,1712646000"; d="scan'208";a="33992442"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2024 03:13:07 -0700
X-CSE-ConnectionGUID: atCaj4hKRCm/nu9EynfnYA==
X-CSE-MsgGUID: 6rsJ9iUJRnixguF3DQQVzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,266,1712646000"; d="scan'208";a="43855937"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.95])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2024 03:13:04 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, mika.kahola@intel.com,
 matthew.d.roper@intel.com
Subject: Re: [PATCH 5/5] drm/xe: Add intel_pll_algorithm in Makefile
In-Reply-To: <20240626050056.3996349-6-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240626050056.3996349-1-ankit.k.nautiyal@intel.com>
 <20240626050056.3996349-6-ankit.k.nautiyal@intel.com>
Date: Wed, 26 Jun 2024 13:12:57 +0300
Message-ID: <87o77oc8ra.fsf@intel.com>
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

On Wed, 26 Jun 2024, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> Include the intel_pll_algorithm for xe driver.

Not how this works. Please build every commit before submitting and
you'll see the build is broken at patch 2.

git rebase -i $tip -x make

BR,
Jani.


>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/xe/Makefile | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
> index 478acc94a71c..30b63c2eadd0 100644
> --- a/drivers/gpu/drm/xe/Makefile
> +++ b/drivers/gpu/drm/xe/Makefile
> @@ -261,6 +261,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
>  	i915-display/intel_modeset_setup.o \
>  	i915-display/intel_modeset_verify.o \
>  	i915-display/intel_panel.o \
> +	i915-display/intel_pll_algorithm.o \
>  	i915-display/intel_pmdemand.o \
>  	i915-display/intel_pps.o \
>  	i915-display/intel_psr.o \

-- 
Jani Nikula, Intel
