Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FDFD737DEB
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jun 2023 10:57:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D24410E41C;
	Wed, 21 Jun 2023 08:57:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D659410E41C
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jun 2023 08:57:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687337832; x=1718873832;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=EJXpZS49jnYwv53eMJtXFdmO1IvIrdS5IJ3vyBBKE18=;
 b=L9q74hnrRcBVHbMleg2ZVkMz1XJ5jt8MtoAEbs0E2MDQJEZzuVwP73Sf
 bP2dqKfAxMey+pWDI0mHZbnZDrbY49BZ4iiW86K+R39xTkqRyjStMGO7Y
 1UaK93QnB4GF8tbpAp9XahwqLz3L3vmbq4zuDZuGkX/kbJmsw84HfPdv2
 3VE3/InRDmNrqzO+Hm4kkHc7h/9h6ADi2VmpXjGIypTpYmoxrZL+wnkpJ
 5xI8OAQU7B0N22FggaqHzHXQBIWrJqbzqqRsw2MFQUyYinT7hXsU4WARn
 7zOP7Bzw0sMduLVOyYJOAFFw6ftJWOY9Bq7EnGXF93sINhTTzzES26BTQ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="340456876"
X-IronPort-AV: E=Sophos;i="6.00,259,1681196400"; d="scan'208";a="340456876"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 01:57:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="838534626"
X-IronPort-AV: E=Sophos;i="6.00,259,1681196400"; d="scan'208";a="838534626"
Received: from dafnaroz-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.63.122])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 01:57:07 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230620025243.979317-1-arun.r.murthy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230620025243.979317-1-arun.r.murthy@intel.com>
Date: Wed, 21 Jun 2023 11:57:06 +0300
Message-ID: <871qi5fb19.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display/dp: Remove support for
 UHBR13.5
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

On Tue, 20 Jun 2023, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> As per the DP2.1 Spec support for UHBR13.5 is optional. Hence removing
> the support for UHBR13.5

That's just not a proper rationale. Please explain.

BR,
Jani.


> UHBR10 can be used for 6k panels.
>
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 9f40da20e88d..54ddc953e5bc 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -465,7 +465,7 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
>  	};
>  	static const int icl_rates[] = {
>  		162000, 216000, 270000, 324000, 432000, 540000, 648000, 810000,
> -		1000000, 1350000,
> +		1000000,
>  	};
>  	static const int bxt_rates[] = {
>  		162000, 216000, 243000, 270000, 324000, 432000, 540000

-- 
Jani Nikula, Intel Open Source Graphics Center
