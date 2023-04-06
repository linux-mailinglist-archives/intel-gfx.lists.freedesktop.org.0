Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F09B36D977B
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Apr 2023 14:59:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82A3110E267;
	Thu,  6 Apr 2023 12:59:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 783A510E267
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Apr 2023 12:59:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680785954; x=1712321954;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=buYJmfDJIzLkj6OCwrMlwgx0oR9E1f4Le3miTTgz2vA=;
 b=Hzpp/9DOon29yArNFFSNManBq9f60UCo+vKsUvbzEttCXzTVKrJ0vqfK
 skkbpmfGs1Fj/vC91k3wzR+gbHUzEeCl23Whtyn1kgMNDg/3g4o2UjroT
 plvaso2K0s7GXLQ+4GD/gGDiGbCpnqtbvMLB0OSsaUyfeyFXdgmoD0Qxt
 nKHQ9e+1e9finbnfd1HI1zpZA7QCxwcL3LnS2xbav4apvQ7Htk497tAAV
 iNlF7szzresmbuQzXfPBr9quFJMtOW3MxzCWQLoIUkMSAAAoBSaKC5Qq6
 WqvyeEyGcSyIF0QdBEtr2/T0HeNGB8bRH1xSs0EKsrPBlits/pJxXAFGV A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10671"; a="331346516"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="331346516"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2023 05:46:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10671"; a="776474234"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="776474234"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2023 05:46:13 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <88463430b9f571f90f49e710223cd371d763771d.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230405104142.766598-1-jani.nikula@intel.com>
 <88463430b9f571f90f49e710223cd371d763771d.camel@intel.com>
Date: Thu, 06 Apr 2023 15:46:10 +0300
Message-ID: <87sfddxjot.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/tc: demote a kernel-doc
 comment to a regular comment
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

On Wed, 05 Apr 2023, "Govindapillai, Vinod" <vinod.govindapillai@intel.com> wrote:
> On Wed, 2023-04-05 at 13:41 +0300, Jani Nikula wrote:
>> There's not much point in a static work function having a kernel-doc
>> comment. Just clean it up and make it a regular comment.
>>
>> This fixes the kernel-doc warnings:
>>
>> drivers/gpu/drm/i915/display/intel_tc.c:1370: warning: Function
>> parameter or member 'work' not described in
>> 'intel_tc_port_disconnect_phy_work'
>>
>> drivers/gpu/drm/i915/display/intel_tc.c:1370: warning: Excess function
>> parameter 'dig_port' description in 'intel_tc_port_disconnect_phy_work'
>>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>
> Thanks.
>
> Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>

Thanks for the review, pushed to drm-intel-next.

BR,
Jani.

>
>
>>  drivers/gpu/drm/i915/display/intel_tc.c | 5 +----
>>  1 file changed, 1 insertion(+), 4 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
>> index 2bb02d4e6859..3b60995e9dfb 100644
>> --- a/drivers/gpu/drm/i915/display/intel_tc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
>> @@ -1358,10 +1358,7 @@ void intel_tc_port_lock(struct intel_digital_port *dig_port)
>>         __intel_tc_port_lock(to_tc_port(dig_port), 1);
>>  }
>>
>> -/**
>> - * intel_tc_port_disconnect_phy_work: disconnect TypeC PHY from display port
>> - * @dig_port: digital port
>> - *
>> +/*
>>   * Disconnect the given digital port from its TypeC PHY (handing back the
>>   * control of the PHY to the TypeC subsystem). This will happen in a delayed
>>   * manner after each aux transactions and modeset disables.
>

-- 
Jani Nikula, Intel Open Source Graphics Center
