Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 401689648A3
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2024 16:36:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD2CD10E6C1;
	Thu, 29 Aug 2024 14:36:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jhvbLsHE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E556D10E6C1;
 Thu, 29 Aug 2024 14:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724942214; x=1756478214;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=lAby2oYVv50PYe4i0AeRgvY0ROTEVxa6PvR+Plv3qzY=;
 b=jhvbLsHE49/6PeC8H2iuoFGoLI1KR0Mo6uLY7dc71/kCnSHIVfcxRSzI
 aTFfNqIh1dQLaDS+FIfdygzUPibCdxrZ6h1hYZA4BlG12XzSAfchO32n6
 1ivlRSP7CjRbY3LZgp/5qKEc9tMXdDb7slfMxzTeE7o9xf0YaObahihyJ
 2Pbv57gqFAlxgc4Xvn1VV5mnIrwTpuYr/gbxtmMrjhKM2GOfI2ls4xX4r
 uDQodINn5Dc9zvqZ8yuC0AUl468R8JkmHcdbXSNQRU86yco7zq5sNgopJ
 Nl4DavDMFJOD70SZmTl0dD8wi9WDNyJxRMjtvNJRqfdVOYN9JJCV+CrrC A==;
X-CSE-ConnectionGUID: Z1Xi6lUfQUiDFT6lhtV4vQ==
X-CSE-MsgGUID: WKaxospSQsyM536YmBQQHg==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="34197285"
X-IronPort-AV: E=Sophos;i="6.10,185,1719903600"; d="scan'208";a="34197285"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 07:36:54 -0700
X-CSE-ConnectionGUID: XsOUkyTXShOWE7R5+T+HRQ==
X-CSE-MsgGUID: OH4j55UHQvyqxqNVUD5GXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,185,1719903600"; d="scan'208";a="63651790"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO [10.245.245.89])
 ([10.245.245.89])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 07:36:51 -0700
Message-ID: <62a324e0-a52d-4c84-acda-9ef6c45e777e@linux.intel.com>
Date: Thu, 29 Aug 2024 16:36:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/display: Fix BMG CCS modifiers
To: Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 imre.deak@intel.com
References: <20240829122928.423456-1-juhapekka.heikkila@gmail.com>
 <ZtCFnopiRIDSbtJp@intel.com>
Content-Language: en-US
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
In-Reply-To: <ZtCFnopiRIDSbtJp@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
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



Den 2024-08-29 kl. 16:29, skrev Rodrigo Vivi:
> On Thu, Aug 29, 2024 at 03:29:28PM +0300, Juha-Pekka Heikkila wrote:
>> Let I915_FORMAT_MOD_4_TILED_BMG_CCS show up as supported modifier
>>
> 
> doh! I just did the pull-request with that... I guess this is one extra
> pull request next week or the first patch of -next-fixes :/
> 
> Fixes: 97c6efb36497 ("drm/i915/display: Plane capability for 64k phys alignment")
> 
>> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
>> ---
>>  drivers/gpu/drm/i915/display/skl_universal_plane.c | 3 +++
>>  1 file changed, 3 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> index 9452cad41d07..d28b98e7cbd7 100644
>> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> @@ -2453,6 +2453,9 @@ static u8 skl_get_plane_caps(struct drm_i915_private *i915,
>>  	if (gen12_plane_has_mc_ccs(i915, plane_id))
>>  		caps |= INTEL_PLANE_CAP_CCS_MC;
>>  
>> +	if (GRAPHICS_VER(i915) >= 20 && IS_DGFX(i915))
> 
> we should be using display version here, no?!
> 
>> +		caps |= INTEL_PLANE_CAP_NEED64K_PHYS;
Just set it unconditionally if you want to change it IMO, it's a workaround not an actual capability, rest should filter...
