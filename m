Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B8D0590C0E
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Aug 2022 08:43:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8148B9B7AB;
	Fri, 12 Aug 2022 06:43:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E042997CD
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Aug 2022 06:43:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660286616; x=1691822616;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=zOeWzjB7kCV5D47/3Nvbz6M1e29x3RVFl62C1MNmvQ4=;
 b=Qv/M+3sf60d1+r6+QCk3gf6SL/9Ej1UvIM7smpMLjeyiNOytZTq8OI8N
 o9TLJ+BqS6QXnFeiLNPnB1GUEqRL8zlcpvcTiIsc87zC/JZlQAnn7pP3W
 4B7bDQ1t17R1AdcGIb4/yGO/fn5yCBh297lm0BQe9UC50mISkTtBLv4v+
 7GBcYg0MHNMvqyWYDfGyTgIGDbWrsheZad3Uh5zcobxPHwawvVlvTsN57
 AQFFBz5TtozChwVDRbSrucc6hlGfAMekcVA4cTBw3jOiU6JOZ2gMzwskE
 DiST0UiL/tjHuAg5ka7u+KzdMFmT0b/KWpoRM8CAmlwNeWhRlXQoesXY9 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="291535616"
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="291535616"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 23:43:36 -0700
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="665708849"
Received: from ebrazil-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.252.37.174])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 23:43:34 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <DM6PR11MB3177C4C0D0790E1A46F90116BA679@DM6PR11MB3177.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1660230121.git.jani.nikula@intel.com>
 <835133f5ef41aa58f8fbbc7e1c86ed2efd5de694.1660230121.git.jani.nikula@intel.com>
 <DM6PR11MB3177C4C0D0790E1A46F90116BA679@DM6PR11MB3177.namprd11.prod.outlook.com>
Date: Fri, 12 Aug 2022 09:43:32 +0300
Message-ID: <878rnut10r.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 02/39] drm/i915: move cdclk_funcs to
 display.funcs
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
Cc: "De Marchi, Lucas" <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 12 Aug 2022, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h
>> b/drivers/gpu/drm/i915/display/intel_display_core.h
>> index aafe548875cc..74e4ae0609b9 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
>> @@ -9,6 +9,7 @@
>>  #include <linux/types.h>
>>
>>  struct intel_atomic_state;
>> +struct intel_cdclk_funcs;
>>  struct intel_crtc;
>>  struct intel_crtc_state;
>>  struct intel_initial_plane_config;
>> @@ -32,6 +33,9 @@ struct intel_display {
>>       struct {
>>               /* Top level crtc-ish functions */
>>               const struct intel_display_funcs *crtc;
>> +
>> +             /* Display CDCLK functions */
>> +             const struct intel_cdclk_funcs *cdclk;
>
> Like having intel_cdclk_funcs *cdclk, will intel_display_funcs
> *display makes more sense and maintaining same terminology across the
> driver.

I was considering renaming it struct intel_crtc_funcs but it's not all
crtc either. But display is both too generic (these are *all* display
functions) and has a tautology (display.funcs.display). Dunno.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
