Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AD0B5F3FDB
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 11:37:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1240B10E2B3;
	Tue,  4 Oct 2022 09:37:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1421910E2B3
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Oct 2022 09:36:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664876217; x=1696412217;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=CjDy17MCO8gL8xOWN0V0Ebypf+OqmbTnKBKGZ1wn94Y=;
 b=SR8K+/HtT0y2DmCShZGkGoUX8HtiS/EhpbrA+eICR9oAi6pDDzOnNm+Z
 ATKOlt27oZHYayaipixQA0kfsYb7mfCxyJaUX6An1q072ZBPnmj37dhJi
 IGVdXYidliEwH+HHMZt0ANv3nE+ODEqVbS0Uv7YyL2JIzjw8gEf8dKpT+
 PmPiy9JbIsXvWhAd1HdBgpIorHYj6xRWM2jSf6xTRZBQKVBITpSDuaQLd
 Zvy+xJtvO/YLfgKqEXOog0bZnpv1avyYC24sT+gPgo7AlYTYDt5ku/2J7
 FF1TXDFNc1oms/zLOY9MnJKebAloaztld+TQc29GyAbWqF96yx9RZnAZI A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="301587435"
X-IronPort-AV: E=Sophos;i="5.93,367,1654585200"; d="scan'208";a="301587435"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 02:36:56 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="766274086"
X-IronPort-AV: E=Sophos;i="5.93,367,1654585200"; d="scan'208";a="766274086"
Received: from pvarla-mobl4.gar.corp.intel.com (HELO localhost)
 ([10.252.39.104])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 02:36:55 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220926191341.5495-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220926191341.5495-1-ville.syrjala@linux.intel.com>
 <20220926191341.5495-4-ville.syrjala@linux.intel.com>
Date: Tue, 04 Oct 2022 12:36:52 +0300
Message-ID: <87wn9gszez.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2 3/4] drm/i915: Introduce
 for_each_shared_dpll()
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

On Mon, 26 Sep 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> index b8dce4e9ac54..d419f4f98d28 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> @@ -36,6 +36,10 @@
>  	(void) (&__a == &__b);			\
>  	__a > __b ? (__a - __b) : (__b - __a); })
>  
> +#define for_each_shared_dpll(__i915, __pll, __i) \
> +	for ((__i) = 0; (__i) < (__i915)->display.dpll.num_shared_dpll && \
> +		     ((__pll) = &(__i915)->display.dpll.shared_dplls[(__i)]); (__i)++)
> +

A follow-up could drop dpll.num_shared_dpll altogether, and use
ARRAY_SIZE() to loop. This anyway stops at first NULL value.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
