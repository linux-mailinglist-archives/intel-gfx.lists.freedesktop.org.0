Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DE748CB014
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2024 16:10:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6353910EC54;
	Tue, 21 May 2024 14:10:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SO6IF96U";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D116810EC08;
 Tue, 21 May 2024 14:10:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716300629; x=1747836629;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=kjzULuF+RlW4teVHjQLCoHhAnjqKxp8PzqXvjQkfrSA=;
 b=SO6IF96UFvlcBNx90iLoXQDEpWfUxirPr9SvCnM4OKvEZjM9GCLbmxCW
 Efxq03WJfPUnTWXmHoHiMs5pSLrD7WuneBBPg5emNoSPclN7O3Kb/q1Cc
 GrpzWsPulJZn0SghsqFBxMomqqDMScNlMfEiJK4x/8xsuCnFYxKS9gEt1
 r/welcrR7KF1lGLLq4kydsWxdDEvCiP5CXj/D9OCGlmfehLqHQyJg9F2q
 eD/0n2O0Qvy2Y0thIUnnFtsGPeglcGbV5fk3+1CxfpXrsi6w89ueY3B5k
 vSPYQ44wH2Ct+JJCY1ytw7mmSQ0ODFy3IHdwwHlBsvZpwWWZ7nvvm5OTl g==;
X-CSE-ConnectionGUID: kcxhdr6RTOyh9w8LjKeTTQ==
X-CSE-MsgGUID: NM3uKrgXR+qi51h8Q3JATw==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="12363661"
X-IronPort-AV: E=Sophos;i="6.08,178,1712646000"; d="scan'208";a="12363661"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 07:10:29 -0700
X-CSE-ConnectionGUID: J+ujbssjSomZzMFkpLjLtw==
X-CSE-MsgGUID: tH80IJQhS/O72Rj8gCP2+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,178,1712646000"; d="scan'208";a="37522968"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa004.fm.intel.com with ESMTP; 21 May 2024 07:10:27 -0700
Received: from [10.245.82.128] (mwajdecz-MOBL.ger.corp.intel.com
 [10.245.82.128])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id CD1A928773;
 Tue, 21 May 2024 15:10:25 +0100 (IST)
Message-ID: <19473e9d-8380-4f39-a42b-c522bfbcbfd1@intel.com>
Date: Tue, 21 May 2024 16:10:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] drm/xe: Don't rely on indirect includes from xe_mmio.h
To: Francois Dugast <francois.dugast@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
References: <20240520181814.2392-1-michal.wajdeczko@intel.com>
 <20240520181814.2392-3-michal.wajdeczko@intel.com>
 <ZkypTw2yXt7R2lIu@fdugast-desk>
Content-Language: en-US
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
In-Reply-To: <ZkypTw2yXt7R2lIu@fdugast-desk>
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



On 21.05.2024 16:01, Francois Dugast wrote:
> Hi Michal,
> 
> On Mon, May 20, 2024 at 08:18:13PM +0200, Michal Wajdeczko wrote:
>> These compilation units use udelay() or some GT oriented printk
>> functions without explicitly including proper header files, and
>> relying on #includes from the xe_mmio.h instead. Fix that.
>>
>> Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
>> ---
>>  drivers/gpu/drm/xe/xe_device.c         | 2 ++
>>  drivers/gpu/drm/xe/xe_gsc.c            | 2 ++
>>  drivers/gpu/drm/xe/xe_gt_ccs_mode.c    | 1 +
>>  drivers/gpu/drm/xe/xe_guc_ads.c        | 1 +
>>  drivers/gpu/drm/xe/xe_huc.c            | 2 ++
>>  drivers/gpu/drm/xe/xe_mocs.c           | 1 +
>>  drivers/gpu/drm/xe/xe_ttm_stolen_mgr.c | 1 +
>>  drivers/gpu/drm/xe/xe_uc_fw.c          | 1 +
>>  8 files changed, 11 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/xe/xe_device.c b/drivers/gpu/drm/xe/xe_device.c
>> index 8da90934c900..28a4e0c3b1fe 100644
>> --- a/drivers/gpu/drm/xe/xe_device.c
>> +++ b/drivers/gpu/drm/xe/xe_device.c
>> @@ -5,6 +5,7 @@
>>  
>>  #include "xe_device.h"
>>  
>> +#include <linux/delay.h>
>>  #include <linux/units.h>
>>  
>>  #include <drm/drm_aperture.h>
>> @@ -33,6 +34,7 @@
>>  #include "xe_gsc_proxy.h"
>>  #include "xe_gt.h"
>>  #include "xe_gt_mcr.h"
>> +#include "xe_gt_printk.h"
> 
> It is obvious in the occurrences of this include in other compilation
> units below, but in xe_device.c I am not seeing the need for
> xe_gt_printk.h, am I missing something?

void xe_device_td_flush(struct xe_device *xe)
...
			xe_gt_err_once(gt, "TD flush timeout\n");

> 
> Francois
> 
>>  #include "xe_hwmon.h"
>>  #include "xe_irq.h"
>>  #include "xe_memirq.h"
>> diff --git a/drivers/gpu/drm/xe/xe_gsc.c b/drivers/gpu/drm/xe/xe_gsc.c
>> index 8cc6420a9e7f..80a61934decc 100644
>> --- a/drivers/gpu/drm/xe/xe_gsc.c
>> +++ b/drivers/gpu/drm/xe/xe_gsc.c
>> @@ -5,6 +5,8 @@
>>  
>>  #include "xe_gsc.h"
>>  
>> +#include <linux/delay.h>
>> +
>>  #include <drm/drm_managed.h>
>>  
>>  #include <generated/xe_wa_oob.h>
>> diff --git a/drivers/gpu/drm/xe/xe_gt_ccs_mode.c b/drivers/gpu/drm/xe/xe_gt_ccs_mode.c
>> index a34c9a24dafc..f90cf679c5d7 100644
>> --- a/drivers/gpu/drm/xe/xe_gt_ccs_mode.c
>> +++ b/drivers/gpu/drm/xe/xe_gt_ccs_mode.c
>> @@ -9,6 +9,7 @@
>>  #include "xe_assert.h"
>>  #include "xe_gt.h"
>>  #include "xe_gt_ccs_mode.h"
>> +#include "xe_gt_printk.h"
>>  #include "xe_gt_sysfs.h"
>>  #include "xe_mmio.h"
>>  
>> diff --git a/drivers/gpu/drm/xe/xe_guc_ads.c b/drivers/gpu/drm/xe/xe_guc_ads.c
>> index 9c33cca4e370..1c60b685dbc6 100644
>> --- a/drivers/gpu/drm/xe/xe_guc_ads.c
>> +++ b/drivers/gpu/drm/xe/xe_guc_ads.c
>> @@ -16,6 +16,7 @@
>>  #include "xe_bo.h"
>>  #include "xe_gt.h"
>>  #include "xe_gt_ccs_mode.h"
>> +#include "xe_gt_printk.h"
>>  #include "xe_guc.h"
>>  #include "xe_guc_ct.h"
>>  #include "xe_hw_engine.h"
>> diff --git a/drivers/gpu/drm/xe/xe_huc.c b/drivers/gpu/drm/xe/xe_huc.c
>> index 39a484a57585..b039ff49341b 100644
>> --- a/drivers/gpu/drm/xe/xe_huc.c
>> +++ b/drivers/gpu/drm/xe/xe_huc.c
>> @@ -5,6 +5,8 @@
>>  
>>  #include "xe_huc.h"
>>  
>> +#include <linux/delay.h>
>> +
>>  #include <drm/drm_managed.h>
>>  
>>  #include "abi/gsc_pxp_commands_abi.h"
>> diff --git a/drivers/gpu/drm/xe/xe_mocs.c b/drivers/gpu/drm/xe/xe_mocs.c
>> index f04754ad911b..de3f2d3f1b04 100644
>> --- a/drivers/gpu/drm/xe/xe_mocs.c
>> +++ b/drivers/gpu/drm/xe/xe_mocs.c
>> @@ -12,6 +12,7 @@
>>  #include "xe_force_wake.h"
>>  #include "xe_gt.h"
>>  #include "xe_gt_mcr.h"
>> +#include "xe_gt_printk.h"
>>  #include "xe_mmio.h"
>>  #include "xe_platform_types.h"
>>  #include "xe_pm.h"
>> diff --git a/drivers/gpu/drm/xe/xe_ttm_stolen_mgr.c b/drivers/gpu/drm/xe/xe_ttm_stolen_mgr.c
>> index f77367329760..64592a8e527b 100644
>> --- a/drivers/gpu/drm/xe/xe_ttm_stolen_mgr.c
>> +++ b/drivers/gpu/drm/xe/xe_ttm_stolen_mgr.c
>> @@ -18,6 +18,7 @@
>>  #include "xe_bo.h"
>>  #include "xe_device.h"
>>  #include "xe_gt.h"
>> +#include "xe_gt_printk.h"
>>  #include "xe_mmio.h"
>>  #include "xe_res_cursor.h"
>>  #include "xe_sriov.h"
>> diff --git a/drivers/gpu/drm/xe/xe_uc_fw.c b/drivers/gpu/drm/xe/xe_uc_fw.c
>> index ed819f1df888..12346645a8e5 100644
>> --- a/drivers/gpu/drm/xe/xe_uc_fw.c
>> +++ b/drivers/gpu/drm/xe/xe_uc_fw.c
>> @@ -14,6 +14,7 @@
>>  #include "xe_force_wake.h"
>>  #include "xe_gsc.h"
>>  #include "xe_gt.h"
>> +#include "xe_gt_printk.h"
>>  #include "xe_map.h"
>>  #include "xe_mmio.h"
>>  #include "xe_module.h"
>> -- 
>> 2.43.0
>>
