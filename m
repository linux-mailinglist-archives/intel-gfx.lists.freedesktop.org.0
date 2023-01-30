Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BB16680CAF
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Jan 2023 12:58:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDD4010E0EE;
	Mon, 30 Jan 2023 11:58:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6267110E0EE
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Jan 2023 11:58:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675079925; x=1706615925;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=MCRIDghS+PX/rPkE1A5t2bLCPQ8Nac5/uDpLhux9TJY=;
 b=gqogxdu3RK/F1CAhbCwuOjO7aWaxK37sWWIpm0QKX9L2J6Vtu+JTPYQ6
 q/ywZL0twpA7qysZWf6pj1YFH/V+TS3U+Gh+aeXDqbhIehwXNqODhEatK
 KIc/xe9Ulz6QXYIdIXvt2N9r7Cvx4taxN9JAS8LTHrmnrdvSJs0lGQ6B4
 q3Qxj/4tKBWVTg8iHdJGd05MJoPS0tXiEut+2Mhgeu4LVeIhLC/rq3Ns6
 LNWpg8VncIV5nTWcri1MG2hNWC0RPBkHA3F5eWafefbaRrrXGwfmpCuFF
 9bU3qqEp+Cyb1Ewga+HGBzxE1mp0kF2Eg2zlgNaq/Xkypn1gnhr/N6rqG g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10605"; a="311158887"
X-IronPort-AV: E=Sophos;i="5.97,257,1669104000"; d="scan'208";a="311158887"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 03:58:44 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10605"; a="787998177"
X-IronPort-AV: E=Sophos;i="5.97,257,1669104000"; d="scan'208";a="787998177"
Received: from jproschw-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.33.170])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 03:58:43 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, Chaitanya Kumar Borah
 <chaitanya.kumar.borah@intel.com>
In-Reply-To: <Y8BGF+6ygAV3vH3Z@mdroper-desk1.amr.corp.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230112094131.550252-1-chaitanya.kumar.borah@intel.com>
 <Y8BGF+6ygAV3vH3Z@mdroper-desk1.amr.corp.intel.com>
Date: Mon, 30 Jan 2023 13:58:41 +0200
Message-ID: <87h6w844jy.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Fix typo for reference
 clock
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 12 Jan 2023, Matt Roper <matthew.d.roper@intel.com> wrote:
> On Thu, Jan 12, 2023 at 03:11:31PM +0530, Chaitanya Kumar Borah wrote:
>> Fix typo for reference clock from 24400 to 24000
>> 
>> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
>
> Fixes: 626426ff9ce4 ("drm/i915/adl_p: Add cdclk support for ADL-P")
> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

Pushed to drm-intel-next, thanks for the patch and review.

BR,
Jani.

>
>> ---
>>  drivers/gpu/drm/i915/display/intel_cdclk.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
>> index 0c107a38f9d0..7e16b655c833 100644
>> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>> @@ -1319,7 +1319,7 @@ static const struct intel_cdclk_vals adlp_cdclk_table[] = {
>>  	{ .refclk = 24000, .cdclk = 192000, .divider = 2, .ratio = 16 },
>>  	{ .refclk = 24000, .cdclk = 312000, .divider = 2, .ratio = 26 },
>>  	{ .refclk = 24000, .cdclk = 552000, .divider = 2, .ratio = 46 },
>> -	{ .refclk = 24400, .cdclk = 648000, .divider = 2, .ratio = 54 },
>> +	{ .refclk = 24000, .cdclk = 648000, .divider = 2, .ratio = 54 },
>>  
>>  	{ .refclk = 38400, .cdclk = 179200, .divider = 3, .ratio = 14 },
>>  	{ .refclk = 38400, .cdclk = 192000, .divider = 2, .ratio = 10 },
>> -- 
>> 2.25.1
>> 

-- 
Jani Nikula, Intel Open Source Graphics Center
