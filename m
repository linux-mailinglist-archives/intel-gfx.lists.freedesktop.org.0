Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8A34A96C33
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Apr 2025 15:13:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2074B10E22E;
	Tue, 22 Apr 2025 13:13:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cpe2zRca";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EB0B10E22E;
 Tue, 22 Apr 2025 13:13:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745327618; x=1776863618;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=O7ySDkjxY5bFshYvmlu9914kDky76gIlRyiQ39jBxkw=;
 b=cpe2zRca4+OyOpij8vZ7rlpFbxabxj2/DH5WrxlPXABJOfKRqJjK7qN/
 GwSBuBTA4JISYTtdgcGp+7YTvB5xBRN7FfoQAQq3oa0RcA4MC9yJcVipQ
 oKqXYg3hu5kF8nbGAPQxDpu/iY7SMaHtVt+4gG1WFkkspO+Widjgmvhun
 apynCUgWo4iEBZF6c94FF1qGDAWZ6bPfl/inDXlvrC3QMVt3I1XaCYq1T
 b6LgWzIsCUOdiy0MMnsyIFG0fEZvRYGzwKjjDJmiBh/z8bPVpRNJbIuwd
 Ge0bLmfFBIz4x5H4j+86Xk2aOBgeQEnigDqtUwwUy5jW36gR9kWmylzKA Q==;
X-CSE-ConnectionGUID: yC+sif6fRmWni6f2URoNMg==
X-CSE-MsgGUID: E9N+ldpnR0CkgZSUcC0OuQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11411"; a="47013525"
X-IronPort-AV: E=Sophos;i="6.15,231,1739865600"; d="scan'208";a="47013525"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2025 06:13:37 -0700
X-CSE-ConnectionGUID: LJCcW5J4SYOOHBe2bu9U/w==
X-CSE-MsgGUID: yZcLwE60RKGBXJ5ic6ANRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,231,1739865600"; d="scan'208";a="132551021"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.98])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2025 06:13:35 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 1/3] drm/i915/display: pass struct intel_display to
 PCH macros
In-Reply-To: <SJ1PR11MB612936A75B38A19FB5ED33F9B9B82@SJ1PR11MB6129.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1744880985.git.jani.nikula@intel.com>
 <999f4d7b8ed11739b1c5ec8d6408fc39d5e3776b.1744880985.git.jani.nikula@intel.com>
 <SJ1PR11MB612936A75B38A19FB5ED33F9B9B82@SJ1PR11MB6129.namprd11.prod.outlook.com>
Date: Tue, 22 Apr 2025 16:13:32 +0300
Message-ID: <87bjso1gqr.fsf@intel.com>
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

On Mon, 21 Apr 2025, "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com> wrote:
>> -----Original Message-----
>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Jani
>> Nikula
>> Sent: Thursday, April 17, 2025 2:41 PM
>> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Cc: Nikula, Jani <jani.nikula@intel.com>
>> Subject: [PATCH v2 1/3] drm/i915/display: pass struct intel_display to PCH
>> macros
>> 
>> Now that INTEL_PCH_TYPE() and HAS_PCH_*() macros are under display, and
>> accept a struct intel_display pointer, use that instead of struct
>> drm_i915_private pointer in display code.
>> 
>> This is done naively by running:
>> 
>> $ sed -i 's/\(INTEL_PCH_TYPE\|HAS_PCH_[A-Z0-9_-]*\)([^)]*)/\1(display)/g' \
>>   $(find drivers/gpu/drm/i915/display -name "*.c")
>> 
>> and fixing the fallout, i.e. removing unused local i915 variables and
>> adding display variables where needed.
>> 
>> v2: Rebase
>
> LGTM
>
>
> Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

Thanks for the reviews, series pushed to drm-intel-next.

BR,
Jani.

-- 
Jani Nikula, Intel
