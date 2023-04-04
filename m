Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 015E36D5999
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Apr 2023 09:27:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 163E310E10D;
	Tue,  4 Apr 2023 07:27:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7118E10E10D
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Apr 2023 07:27:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680593274; x=1712129274;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=bELUBXVPTwOXXJBDIlX/V1H19KrDONtIqN6QSUS6Dic=;
 b=LimjteTqY9rSFlw0lQ59AIluF1CAPmYSD7O2ze0shYK+TYzzN7jxFUh4
 jjNuJ9dAzqSjYoOnhfBUaZLKG5fAPWo4WEl6f+QjwpOiqHLGTeXsoi7yI
 f0X/RGvMQJBccK0HpuWXRjVQTi3pXieiboOhCAl8oPizgERHlMlusP7Mp
 Sb3gfa5rV+5PYTt7PJebIoVOK6LOG/kvhFlggL6/TxlQ/MjYIsTCGLYUa
 cvuyVzTrEE0gqwITdYnvvPL7uPJYO8fDfnnUp72itj7NzzXvORS3xe0E9
 aC4eJ6ORew0KVXyk2hzA3GXFvL9KX27vmEf+4swdAwpsBEV2w5ICRNpdp A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="339599910"
X-IronPort-AV: E=Sophos;i="5.98,317,1673942400"; d="scan'208";a="339599910"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 00:27:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="829877425"
X-IronPort-AV: E=Sophos;i="5.98,317,1673942400"; d="scan'208";a="829877425"
Received: from vkats-mobl2.ger.corp.intel.com (HELO localhost) ([10.252.54.5])
 by fmsmga001-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Apr 2023 00:27:51 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
In-Reply-To: <ZCrSDn+JSlMxOu6L@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230403125710.3617230-1-jani.nikula@intel.com>
 <ZCrSDn+JSlMxOu6L@intel.com>
Date: Tue, 04 Apr 2023 10:27:48 +0300
Message-ID: <87edp014zv.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: enable kernel-doc warnings for
 CONFIG_DRM_I915_WERROR=y
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
Cc: intel-gfx@lists.freedesktop.org, Masahiro Yamada <masahiroy@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 03 Apr 2023, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Mon, Apr 03, 2023 at 03:57:10PM +0300, Jani Nikula wrote:
>> Increase awareness of kernel-doc issues by enabling doc check locally
>> when CONFIG_DRM_I915_WERROR=y is enabled.
>> 
>> Once the warnings have been fixed, we can pass -Werror to kernel-doc
>> locally, and fail the build when there are kernel-doc warnings in i915.
>> 
>> v2: Don't check for KBUILD_EXTRA_WARN (Masahiro)
>> 
>> Cc: Masahiro Yamada <masahiroy@kernel.org>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Thanks, pushed to drm-intel-next. Let's see if this helps us keep our
kernel-doc in order.

BR,
Jani.

>
>> ---
>>  drivers/gpu/drm/i915/Makefile | 7 +++++++
>>  1 file changed, 7 insertions(+)
>> 
>> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
>> index 057ef22fa9c6..831e42175165 100644
>> --- a/drivers/gpu/drm/i915/Makefile
>> +++ b/drivers/gpu/drm/i915/Makefile
>> @@ -369,6 +369,13 @@ include $(src)/gvt/Makefile
>>  obj-$(CONFIG_DRM_I915) += i915.o
>>  obj-$(CONFIG_DRM_I915_GVT_KVMGT) += kvmgt.o
>>  
>> +# kernel-doc test
>> +#
>> +# Enable locally for CONFIG_DRM_I915_WERROR=y. See also scripts/Makefile.build
>> +ifdef CONFIG_DRM_I915_WERROR
>> +    cmd_checkdoc = $(srctree)/scripts/kernel-doc -none $<
>> +endif
>> +
>>  # header test
>>  
>>  # exclude some broken headers from the test coverage
>> -- 
>> 2.39.2
>> 

-- 
Jani Nikula, Intel Open Source Graphics Center
