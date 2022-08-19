Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFE9E599905
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Aug 2022 11:50:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED91A10E3E3;
	Fri, 19 Aug 2022 09:50:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10D4310E3CB
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Aug 2022 09:50:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660902643; x=1692438643;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=A3Wwcy43nk/VDleS0B9K4Z0xT29BNDHOA/cqoV90Kek=;
 b=iblO8jcANMB5paRsaHmm5L85y3US4f5hisH2gk5EnGsvSS3BuXVm97yD
 uw0L++CwUAX0hyPMg70gygnftLPwzaEfg+syMQYmFTHxtkeV5oHeARC3b
 DwCBlLqo7f0BQY244VPNisNqmZstPttCbfNmA4dVI0xobQcuz0Rop5q4Q
 qdMtyQ3BPD0C5zCPO9H8yvUih23O1GaPiXqeh7imF/BIvc/1izJ0p0xH9
 T3nDkSw9ojefbZj0Ti9plr1DyNH+bEZzG90mRnbIPOIWoHQeo6FJI5TDt
 clF3rbjAAs3IVITuDjyQObG+iZeGBSbVEvN2ORjDk9B46zXoB2PgleKS0 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10443"; a="379273899"
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="379273899"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2022 02:50:42 -0700
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="637220213"
Received: from jastrom-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.51.176])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2022 02:50:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <DM4PR11MB6360AD3C2F292B8A4A4E05E4F46A9@DM4PR11MB6360.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220817121948.180655-1-jani.nikula@intel.com>
 <DM4PR11MB6360AD3C2F292B8A4A4E05E4F46A9@DM4PR11MB6360.namprd11.prod.outlook.com>
Date: Fri, 19 Aug 2022 12:50:38 +0300
Message-ID: <87tu68o93l.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Meteorlake and later support
 DP 2.0
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

On Wed, 17 Aug 2022, "Shankar, Uma" <uma.shankar@intel.com> wrote:
>> -----Original Message-----
>> From: Nikula, Jani <jani.nikula@intel.com>
>> Sent: Wednesday, August 17, 2022 5:50 PM
>> To: intel-gfx@lists.freedesktop.org
>> Cc: Nikula, Jani <jani.nikula@intel.com>; Shankar, Uma <uma.shankar@intel.com>
>> Subject: [PATCH] drm/i915/mtl: Meteorlake and later support DP 2.0
>>
>> Meteorlake and newer platforms support DP 2.0.
>
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>

Thanks for the review, pushed to drm-intel-next.

BR,
Jani.

>
>> Cc: Uma Shankar <uma.shankar@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/i915_drv.h | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
>> index 086bbe8945d6..b4733c5a01da 100644
>> --- a/drivers/gpu/drm/i915/i915_drv.h
>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>> @@ -1255,7 +1255,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>>  #define HAS_IPS(dev_priv)    (IS_HSW_ULT(dev_priv) ||
>> IS_BROADWELL(dev_priv))
>>
>>  #define HAS_DP_MST(dev_priv) (INTEL_INFO(dev_priv)->display.has_dp_mst)
>> -#define HAS_DP20(dev_priv)   (IS_DG2(dev_priv))
>> +#define HAS_DP20(dev_priv)   (IS_DG2(dev_priv) || DISPLAY_VER(dev_priv) >= 14)
>>
>>  #define HAS_CDCLK_CRAWL(dev_priv)     (INTEL_INFO(dev_priv)-
>> >display.has_cdclk_crawl)
>>  #define HAS_DDI(dev_priv)             (INTEL_INFO(dev_priv)->display.has_ddi)
>> --
>> 2.34.1
>

-- 
Jani Nikula, Intel Open Source Graphics Center
