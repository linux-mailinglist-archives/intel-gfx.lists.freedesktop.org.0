Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 248E0673445
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Jan 2023 10:21:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2888310E8F0;
	Thu, 19 Jan 2023 09:21:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30D8210E8F4
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Jan 2023 09:21:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674120100; x=1705656100;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=oqq+wwGRrgAygTX2QPgPxt0UW74B/lpCWOJzRPOm0kM=;
 b=WPRnxMWPWsx5aVeSQMerETt+iFJXsK08g6hnhiVISnABouwgBixz2MwJ
 fqvnVRhohFRwLNGh5vM2MAQAMydAKVofl5PMPIeBKPwdaQLIryIwhj/nr
 1isD2rS/EhstUSXdafkq5NkkaQzyyp1oTKf3ya/WfJcyZ7Vq1F6GxN4gR
 TP//KAypryqACaon1MVxmfOPRZtXG4dsHLHxZ5vsMRQrus+oOEqKpZSy/
 NmZHfP7K0ivR/aDWD6POOFjlIqcOHHSLK7wkVsgXFWqvq64XkD2KiKtaM
 enN5IiQreCOU/gzEUBj3peOpwt8CVHz9peXcbaM9EJGhXtJlV3a1KwfV/ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="325287466"
X-IronPort-AV: E=Sophos;i="5.97,228,1669104000"; d="scan'208";a="325287466"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2023 01:21:39 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="988914909"
X-IronPort-AV: E=Sophos;i="5.97,228,1669104000"; d="scan'208";a="988914909"
Received: from sarahgar-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.15.69])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2023 01:21:38 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
In-Reply-To: <Y8g7zhs8DXmMZbSA@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230118170624.9326-1-nirmoy.das@intel.com>
 <Y8g7zhs8DXmMZbSA@intel.com>
Date: Thu, 19 Jan 2023 11:21:36 +0200
Message-ID: <878rhydgm7.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Remove unused variable
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 18 Jan 2023, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Wed, Jan 18, 2023 at 06:06:24PM +0100, Nirmoy Das wrote:
>> Removed unused i915 var.
>> 
>> Fixes: a273e95721e9 ("drm/i915: Allow switching away via vga-switcheroo if uninitialized")
>> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
>
> and pushed to drm-misc-fixes.
>
> Thanks for the patch.

I guess this was a quick fix to avoid warnings about it.

But really, for i915 the way to go would be to have i915 local var, and
pass that around instead of struct drm_device *dev.

BR,
Jani.


>
>> ---
>>  drivers/gpu/drm/i915/i915_driver.c | 2 --
>>  1 file changed, 2 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
>> index 33e231b120c1..6469c7c1e154 100644
>> --- a/drivers/gpu/drm/i915/i915_driver.c
>> +++ b/drivers/gpu/drm/i915/i915_driver.c
>> @@ -1071,8 +1071,6 @@ static int i915_driver_open(struct drm_device *dev, struct drm_file *file)
>>   */
>>  static void i915_driver_lastclose(struct drm_device *dev)
>>  {
>> -	struct drm_i915_private *i915 = to_i915(dev);
>> -
>>  	intel_fbdev_restore_mode(dev);
>>  
>>  	vga_switcheroo_process_delayed_switch();
>> -- 
>> 2.39.0
>> 

-- 
Jani Nikula, Intel Open Source Graphics Center
