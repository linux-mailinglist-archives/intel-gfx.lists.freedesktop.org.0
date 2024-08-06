Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A711D948EC7
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2024 14:14:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 455B110E343;
	Tue,  6 Aug 2024 12:14:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HQS5zyEi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B496410E342;
 Tue,  6 Aug 2024 12:14:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722946459; x=1754482459;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=jStN+day6eSgc3h6ivo9cSspRV/5dze7DJkAV2flumM=;
 b=HQS5zyEihUUHDMnUgosfC8MaAUkdKSHFqSwXhehLUt18L4zsMHwJPeRn
 Mzh/yjvdj1Ec5SWM6Y2vhP/phmlFdTrbW5a4bjK+fKBxKSaZ7NlimAPDX
 opPR9CVqo9XhBAddAwA2Vpl8NJ9lZeyzL7QBMSfff2r4x7cN/F3QUDjhb
 QzUcOLFD355i+g9oZVPXi8wPgmuD4MeLbUlLxW4QWELspkU+bV0zDeUjl
 UjlgAQVoR07UqPCaCrqt+cb4a973Lcd+u5KA2nRTfD/oIWS0I2qjwkfBc
 ruL9RYkp1yZMAxxmOxFTJyzVzvvkR+4eAW5ofMeWEd+KFUsWJJnUY9GzZ w==;
X-CSE-ConnectionGUID: LCse7KEdSi2prviq7DYQxA==
X-CSE-MsgGUID: G4pIOL4YTUKldekWPyjI1A==
X-IronPort-AV: E=McAfee;i="6700,10204,11156"; a="20627927"
X-IronPort-AV: E=Sophos;i="6.09,267,1716274800"; d="scan'208";a="20627927"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2024 05:14:19 -0700
X-CSE-ConnectionGUID: kIWWPraKStKovHIz0/iT/g==
X-CSE-MsgGUID: ynxzLy6MRGe1q7QuZPDCsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,267,1716274800"; d="scan'208";a="56576192"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.4])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2024 05:14:16 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>, Jonathan Cavitt
 <jonathan.cavitt@intel.com>, Lucas De Marchi <lucas.demarchi@intel.com>
Subject: Re: [PATCH 03/10] drm/xe/tests: fix drvdata usage
In-Reply-To: <87h6bx6e94.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1722263308.git.jani.nikula@intel.com>
 <66f8959522a679d80eb71ba8dae47b86d94e71d9.1722263308.git.jani.nikula@intel.com>
 <172253145846.5121.4226200139944139785@gjsousa-mobl2>
 <87h6bx6e94.fsf@intel.com>
Date: Tue, 06 Aug 2024 15:14:02 +0300
Message-ID: <87ed716e7p.fsf@intel.com>
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

On Tue, 06 Aug 2024, Jani Nikula <jani.nikula@intel.com> wrote:
> On Thu, 01 Aug 2024, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>> Quoting Jani Nikula (2024-07-29 11:30:04-03:00)
>>>The test code seems to assume struct drm_device * is stored in
>>>drvdata. This is (currently) not the case. Use the proper helper to get
>>>at the xe device.
>>>
>>>This has not been an issue, because struct drm_device is embedded in
>>>struct xe_device at offset 0.
>>>
>>>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>
>> The fix looks correct, so:
>>
>> Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
>>
>> I noticed that xe_call_for_each_device() stopped being used as of commit
>> 57ecead343e7 ("drm/xe/tests: Convert xe_mocs live tests"), so we could
>> also have a patch removing it and dev_to_xe_device_fn().
>
> Cc: people involved with that commit.

And now actually Cc. *facepalm*

>
> Do you want xe_call_for_each_device() removed or retained?
>
> BR,
> Jani.
>
>
>>
>> --
>> Gustavo Sousa
>>
>>>---
>>> drivers/gpu/drm/xe/tests/xe_pci.c | 6 +++---
>>> 1 file changed, 3 insertions(+), 3 deletions(-)
>>>
>>>diff --git a/drivers/gpu/drm/xe/tests/xe_pci.c b/drivers/gpu/drm/xe/tests/xe_pci.c
>>>index 577ee7d14381..2046789f62bd 100644
>>>--- a/drivers/gpu/drm/xe/tests/xe_pci.c
>>>+++ b/drivers/gpu/drm/xe/tests/xe_pci.c
>>>@@ -20,15 +20,15 @@ struct kunit_test_data {
>>> static int dev_to_xe_device_fn(struct device *dev, void *__data)
>>> 
>>> {
>>>-        struct drm_device *drm = dev_get_drvdata(dev);
>>>+        struct xe_device *xe = kdev_to_xe_device(dev);
>>>         struct kunit_test_data *data = __data;
>>>         int ret = 0;
>>>         int idx;
>>> 
>>>         data->ndevs++;
>>> 
>>>-        if (drm_dev_enter(drm, &idx))
>>>-                ret = data->xe_fn(to_xe_device(dev_get_drvdata(dev)));
>>>+        if (drm_dev_enter(&xe->drm, &idx))
>>>+                ret = data->xe_fn(xe);
>>>         drm_dev_exit(idx);
>>> 
>>>         return ret;
>>>-- 
>>>2.39.2
>>>

-- 
Jani Nikula, Intel
