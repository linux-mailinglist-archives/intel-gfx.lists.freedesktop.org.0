Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3870F9F366A
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2024 17:45:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BD5710E703;
	Mon, 16 Dec 2024 16:45:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I4WQYb5z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0535610E3FD;
 Mon, 16 Dec 2024 16:45:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734367547; x=1765903547;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=qtRy+9GkbxkHRYGCm1CpJSSO4bsJW0fCNOsAa4sEefQ=;
 b=I4WQYb5zUimeZ7gPL7ZXZupsxE3QkhtR5Dgpj+bAEZCGchld+mxzWh80
 G6OjHtrCu/tuRcHPBgK2mbsBjqNkf6kaPQhUSASvkpYWYhSNcjJmx6zq7
 rl24y0YPrN4my48rPJf5TnEOQklFzWZ0xe6GL5i1eA9Tlzq/4MGx6SsaA
 IYBFiMUgus5RuKxa1VSICQxfK9cg7ajd8GJzrCT4yEJ2uDKyZgTKREiaT
 TblOTf/0wccugfdR2zb22ygXp2222wpyi1wOnArAvNMJMT6NdYjdRKq6E
 TrlFX0jO8Ym/YUNaaWWIjhD2XcZeXegUnYC392JNN6fIGWoLjl8rUEP3u g==;
X-CSE-ConnectionGUID: +Jae0hkhQ7Kh1IHqQvsAPQ==
X-CSE-MsgGUID: 621l51zyT5u+2pIWNu+Rig==
X-IronPort-AV: E=McAfee;i="6700,10204,11288"; a="34055054"
X-IronPort-AV: E=Sophos;i="6.12,239,1728975600"; d="scan'208";a="34055054"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2024 08:45:46 -0800
X-CSE-ConnectionGUID: RmvESWDdQ6O5tSMYW30nOw==
X-CSE-MsgGUID: F/JWTCkGRMeKsMh+++Jy0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="98041308"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.245])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2024 08:45:41 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Luca Coelho <luca@coelho.fi>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Subject: Re: [RESEND 6/6] drm/i915/display: drop i915_drv.h include from
 intel_display_trace.h
In-Reply-To: <8c64a63a532c35c7b16e3238f19c8e02eb8c4685.camel@coelho.fi>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1732104170.git.jani.nikula@intel.com>
 <c51352a2152cebd56ab3597ae5a791d2bb41439e.1732104170.git.jani.nikula@intel.com>
 <8c64a63a532c35c7b16e3238f19c8e02eb8c4685.camel@coelho.fi>
Date: Mon, 16 Dec 2024 18:45:35 +0200
Message-ID: <877c7zshjk.fsf@intel.com>
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

On Fri, 13 Dec 2024, Luca Coelho <luca@coelho.fi> wrote:
> On Wed, 2024-11-20 at 14:03 +0200, Jani Nikula wrote:
>> Finish the job of removing implicit dependencies on i915_drv.h via other
>> includes in display code. Add a few missing explicit includes.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>
> Done! Overall a nice series. :)
>
>
> Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

Thanks, pushed to drm-intel-next.

BR,
Jani.


-- 
Jani Nikula, Intel
