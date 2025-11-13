Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E389C56515
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Nov 2025 09:40:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D42A010E64E;
	Thu, 13 Nov 2025 08:40:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MXyT7B3t";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17EB910E64E;
 Thu, 13 Nov 2025 08:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763023254; x=1794559254;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=drevdN8dGvQxX2skbIrP387eUqOLSXvJslVjEbn/zBg=;
 b=MXyT7B3tHIUgHJEuYlkjuho12lvjilM41l4xEJhfD0EkGtBXyXUk65XE
 6gL2PcjxDJ5nfIMIz4CvP5It1WAlSN7PngJN0MzqRI7rBxRhbUea0nEq0
 awxxOHfXQgMoa5WZkyVqXvcAYN1ud5V9k0jWGdoUrL6NcqkxyxI6l1+RV
 Fe3+QUcWzrffjPO1vyTwdQiBw4ZTBrxXYIsWvXE+GZzcXJh8FxHTiiKz0
 sIBg7vU210I/tgWPQgN96uhlf/iQRhXPZ2SIUL66D/zZRwZ9yFCoc6Vmi
 xW3CmEoajQEEodMYen3sJ2RlffSy5hVk7TqV9u/WZ46kAOtGCjeAuEVRL A==;
X-CSE-ConnectionGUID: AI9fbbZdTLWmbkFB6G2FDA==
X-CSE-MsgGUID: LwgYR+R3QZmCKqP+kayuYw==
X-IronPort-AV: E=McAfee;i="6800,10657,11611"; a="75707622"
X-IronPort-AV: E=Sophos;i="6.19,301,1754982000"; d="scan'208";a="75707622"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 00:40:53 -0800
X-CSE-ConnectionGUID: NUq6N5xySTi+erNK+DJqSg==
X-CSE-MsgGUID: MRYebsfwQ8SLm2hEI7Q6mw==
X-ExtLoop1: 1
Received: from aotchere-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.135])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 00:40:52 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/xe: remove stale runtime_pm member
In-Reply-To: <aRTh7OPupcEh1qW2@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251112185547.172113-1-jani.nikula@intel.com>
 <aRTh7OPupcEh1qW2@intel.com>
Date: Thu, 13 Nov 2025 10:40:49 +0200
Message-ID: <20777272c8c439d25e1ecf92669f621f6074fee4@intel.com>
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

On Wed, 12 Nov 2025, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Wed, Nov 12, 2025 at 08:55:47PM +0200, Jani Nikula wrote:
>> This has become unused and unnecessary. Remove.
>
> \o/
>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> (trusting more your compiler than my eyes)

Thanks, pushed via drm-intel-next as there's more to come in this area.

BR,
Jani.


>
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/xe/xe_device_types.h | 3 ---
>>  1 file changed, 3 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/xe_device_types.h
>> index 7baf15f51575..0b2fa7c56d38 100644
>> --- a/drivers/gpu/drm/xe/xe_device_types.h
>> +++ b/drivers/gpu/drm/xe/xe_device_types.h
>> @@ -656,9 +656,6 @@ struct xe_device {
>>  	 */
>>  	u32 edram_size_mb;
>>  
>> -	/* To shut up runtime pm macros.. */
>> -	struct xe_runtime_pm {} runtime_pm;
>> -
>>  	struct intel_uncore {
>>  		spinlock_t lock;
>>  	} uncore;
>> -- 
>> 2.47.3
>> 

-- 
Jani Nikula, Intel
