Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B716B96489E
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2024 16:35:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1761D10E6C0;
	Thu, 29 Aug 2024 14:35:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VY0mrov+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56B1C10E6BF;
 Thu, 29 Aug 2024 14:35:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724942152; x=1756478152;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=zmaOI2DhvFTONo9OabibhQz00amuG/thp3HZ/OjmhSA=;
 b=VY0mrov+DETyt3HYvxrU5pYIi307VtiwunA5Pwa8VkQn/E4FS0QaMasQ
 ZMwSEtgMC9hWBKptxVLPVe95VyBi6JHMLsxz+PN+spv5sRptKAfhYcUez
 N87PCv3/2X62aYz5KNNBJ6SjB7z2fCOcDiITRvTSCvtB6A4WfQmxKEfJs
 olv3CHptNMgkBGdTT/SaEkpwkUUHbxVebN4eC1m/btX+9lPdvdLml5Wne
 ALH1pZx9yMwqZTWOUimGRG1HOx4R9MZ5TcrWrd7fGuAZZh/DWUWqBCkmH
 6Llc3bSR8i9dr4Bcb6lSJuLoQNun267z67T20dOOkrOt+QvL9hS5/jAkG Q==;
X-CSE-ConnectionGUID: HdixwOSsRtaKbYGA6u2oPw==
X-CSE-MsgGUID: 4ErSR28cSQ6nsTOejTGT2Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="34196931"
X-IronPort-AV: E=Sophos;i="6.10,185,1719903600"; d="scan'208";a="34196931"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 07:35:11 -0700
X-CSE-ConnectionGUID: rzXwuD/TRm+sNPLOyZA9hw==
X-CSE-MsgGUID: csnb3bflQ1e9ZCA04zDUcA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,185,1719903600"; d="scan'208";a="63651731"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO [10.245.245.89])
 ([10.245.245.89])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 07:35:09 -0700
Message-ID: <893d0cb8-c0db-4f90-9d34-c3bd398ca46f@linux.intel.com>
Date: Thu, 29 Aug 2024 16:35:10 +0200
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

Hey,

D'oh, serves me right for changing patch around at last moment. :)

Reviewed-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

Cheers,
~Maarten

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
>> +
>>  	return caps;
>>  }
>>  
>> -- 
>> 2.45.2
>>

