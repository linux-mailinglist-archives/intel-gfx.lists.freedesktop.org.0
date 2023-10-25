Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C9DA7D692B
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Oct 2023 12:42:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD09010E0AD;
	Wed, 25 Oct 2023 10:42:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 425 seconds by postgrey-1.36 at gabe;
 Wed, 25 Oct 2023 10:42:14 UTC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8AC110E0AD
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Oct 2023 10:42:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698230535; x=1729766535;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=DC6SVCwblwAGf4kkI50tsehsf6GtbxsKogwJ/9M5nt0=;
 b=d6MghOyf2ZSWWdkiByCOrsUxQ4fITYSstm4OFWsRa5ZkTmkZCc0Dqlon
 eNC5hQYmR7X0Uld6uDSL9zEt/XOIjLgbmUqZZBQmIf+MvmSqSAr5S3H0Y
 hQLaMv8VsIJxcIvTuFSyPDWTCIKaXKFOL+bcPBpfQop85cGdh16gh94Ze
 LWKEmFwnX1d9bYT1bRsCIk5hcw0s3n9HG/TxJNbQ4xoLG2rsJrUz+chLm
 uFXyt7vt38BiS+YZXqvE8VFx3eng+DmW0l6zkoYAR+Wf8dC9I+seBdGbK
 kBkEVeBSej6y5Y3IoQHojy2UqMc7/pqtzqPVU/39IzLYbV1IfaczCx4rR g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="35509"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; 
   d="scan'208";a="35509"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 03:35:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="762410623"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="762410623"
Received: from dtorrice-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.33.83])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 03:35:06 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Nirmoy Das <nirmoy.das@linux.intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <b09a4449-0e15-606e-107f-163ce60ecfc9@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231024130448.576297-1-jani.nikula@intel.com>
 <20231024130448.576297-2-jani.nikula@intel.com>
 <b09a4449-0e15-606e-107f-163ce60ecfc9@linux.intel.com>
Date: Wed, 25 Oct 2023 13:35:04 +0300
Message-ID: <877cnb9ehz.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: move Makefile display debugfs
 files next to display
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

On Wed, 25 Oct 2023, Nirmoy Das <nirmoy.das@linux.intel.com> wrote:
> On 10/24/2023 3:04 PM, Jani Nikula wrote:
>> Keep the display build lists together.
>>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>   drivers/gpu/drm/i915/Makefile | 7 ++++---
>>   1 file changed, 4 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
>> index bc785dd89c19..e92682424915 100644
>> --- a/drivers/gpu/drm/i915/Makefile
>> +++ b/drivers/gpu/drm/i915/Makefile
>> @@ -95,9 +95,7 @@ i915-$(CONFIG_COMPAT) += \
>>   	i915_ioc32.o
>>   i915-$(CONFIG_DEBUG_FS) += \
>>   	i915_debugfs.o \
>> -	i915_debugfs_params.o \
>> -	display/intel_display_debugfs.o \
>> -	display/intel_pipe_crc.o
>> +	i915_debugfs_params.o
>>   i915-$(CONFIG_PERF_EVENTS) += \
>>   	i915_pmu.o
>>   
>> @@ -318,6 +316,9 @@ i915-$(CONFIG_ACPI) += \
>>   	display/intel_opregion.o
>>   i915-$(CONFIG_DRM_FBDEV_EMULATION) += \
>>   	display/intel_fbdev.o
>> +i915-$(CONFIG_DEBUG_FS) += \
>> +	display/intel_display_debugfs.o \
>> +	display/intel_pipe_crc.o
>
>  From a quick look, I am not sure how this file is related to debugfs. I 
> will try to find out but that is

The pipe crc is only available via drm debugfs.

>
> unrelated to this patch so
>
> Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>

Thanks,
Jani.

>
>>   
>>   # modesetting output/encoder code
>>   i915-y += \

-- 
Jani Nikula, Intel
