Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7FB58A83C2
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Apr 2024 15:05:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0EFD1134D2;
	Wed, 17 Apr 2024 13:05:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iyJykNgP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 760E41134D6;
 Wed, 17 Apr 2024 13:05:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713359117; x=1744895117;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=aVUzZsaZtpaIKU6l1n7y/5HO1KzhshYd5xLI3WDULvU=;
 b=iyJykNgP/kf7yOXlLqW51RaXdEJyhVz+VLMiQqbE7Nc7WU3/4aF4YRBi
 P/1PI6ci4bzHl8aTRocJXPzLtJYEHPHe6PjeUKeizAMx52plgTVmHNfp7
 GK3xzlr90+vfy0HUw+hQs8LoeP/KYEMmuuBD3MJzuG+aHDITagWH9KDLr
 mY9rnULzO/phzhLXZoUh1vyOBl8pyIgLoDcOIqyLRp2+awUjDEUFxIpmF
 8yUGrIArJRXOkytDx0gNLmngdsHkJ7HKq/9lz8MP9Zn4zB6GuzddYzSh0
 E6IO6tl4IYY9CeB0GfgHVXBcLsZ5xdv/xBUYY7p6XHUHpwCc5gLOcY6JY g==;
X-CSE-ConnectionGUID: BFYc1vv4RDm0cAnG5X5iSA==
X-CSE-MsgGUID: VBQATkfNSiiLWlxVOr4XXQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="19406762"
X-IronPort-AV: E=Sophos;i="6.07,209,1708416000"; d="scan'208";a="19406762"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2024 06:05:16 -0700
X-CSE-ConnectionGUID: KxxyYG6/RCaJR/FDHGv4xA==
X-CSE-MsgGUID: oheFI+YySjC1KB1cIbYp0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,209,1708416000"; d="scan'208";a="53829941"
Received: from vpus-mobl1.ger.corp.intel.com (HELO localhost) ([10.252.45.164])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2024 06:05:12 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 lucas.demarchi@intel.com, ville.syrjala@linux.intel.com,
 joonas.lahtinen@linux.intel.com, tursulin@ursulin.net
Subject: Re: [PATCH v3 5/7] drm/i915/display: accept either i915 or display
 for feature tests
In-Reply-To: <Zh6j0OFxODBBDp2j@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1712665176.git.jani.nikula@intel.com>
 <31d28ef1952d516c737af7b198c6008fe3aece2e.1712665176.git.jani.nikula@intel.com>
 <Zh6j0OFxODBBDp2j@intel.com>
Date: Wed, 17 Apr 2024 16:05:10 +0300
Message-ID: <87frvkxhq1.fsf@intel.com>
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

On Tue, 16 Apr 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Tue, Apr 09, 2024 at 03:26:47PM +0300, Jani Nikula wrote:
>> Use the generic __to_intel_display() to allow passing either struct
>> drm_i915_private * or struct intel_display * to the feature test macros.
>> 
>> Unfortunately, this requires including i915_drv.h in xe display
>> code. This is still better than polluting the main xe_device.h or
>> xe_device_types.h files with the __to_intel_display() macro definition.
>
> what about just duplicating these 2 lines in a compat layer
> (perhaps a new temporary one?) and the only including that
> instead of bringing it entirely?

Added a shared header under display for __to_intel_display(), and the
change in xe can be dropped.

BR,
Jani.


>
> or what else wouldbe needed?
>
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display_device.h | 4 ++--
>>  drivers/gpu/drm/xe/display/xe_hdcp_gsc.c            | 1 +
>>  2 files changed, 3 insertions(+), 2 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
>> index 66b51de86e38..01c6a4bef179 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
>> @@ -100,8 +100,8 @@ struct drm_printer;
>>  	(IS_DISPLAY_IP_RANGE((__i915), (ipver), (ipver)) && \
>>  	 IS_DISPLAY_STEP((__i915), (from), (until)))
>>  
>> -#define DISPLAY_INFO(i915)		((i915)->display.info.__device_info)
>> -#define DISPLAY_RUNTIME_INFO(i915)	(&(i915)->display.info.__runtime_info)
>> +#define DISPLAY_INFO(i915)		(__to_intel_display(i915)->info.__device_info)
>> +#define DISPLAY_RUNTIME_INFO(i915)	(&__to_intel_display(i915)->info.__runtime_info)
>>  
>>  #define DISPLAY_VER(i915)	(DISPLAY_RUNTIME_INFO(i915)->ip.ver)
>>  #define DISPLAY_VER_FULL(i915)	IP_VER(DISPLAY_RUNTIME_INFO(i915)->ip.ver, \
>> diff --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
>> index ac4b870f73fa..54314760f47a 100644
>> --- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
>> +++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
>> @@ -19,6 +19,7 @@
>>  #include "xe_map.h"
>>  #include "xe_pm.h"
>>  #include "xe_uc_fw.h"
>> +#include "i915_drv.h"
>>  
>>  #define HECI_MEADDRESS_HDCP 18
>>  
>> -- 
>> 2.39.2
>> 

-- 
Jani Nikula, Intel
