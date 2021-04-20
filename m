Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D4C5365B5F
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Apr 2021 16:42:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5963C6E838;
	Tue, 20 Apr 2021 14:41:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA8C46E838
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Apr 2021 14:41:56 +0000 (UTC)
IronPort-SDR: YNVhzBMVn4CO0XdoYglWTYbLgddZmTjCwfXNVcXHMzMj8lE4sISfM6UXovv8iDowKtd+rASrtw
 K0i8oO9jm4ZA==
X-IronPort-AV: E=McAfee;i="6200,9189,9960"; a="216108620"
X-IronPort-AV: E=Sophos;i="5.82,237,1613462400"; d="scan'208";a="216108620"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2021 07:41:56 -0700
IronPort-SDR: qzxt3+WYUUDhDw9tWEpXqK1BCfwePiB/GyvD9FhhH1sLd2lf+j/T6qtehILsjoguB7ZXMKjOoL
 EtmUq3wTMXhQ==
X-IronPort-AV: E=Sophos;i="5.82,237,1613462400"; d="scan'208";a="426991815"
Received: from karunatx-mobl.gar.corp.intel.com (HELO localhost)
 ([10.252.35.249])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2021 07:41:50 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
In-Reply-To: <YH7cAx8cE4nszX7+@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210420130853.10573-1-jani.nikula@intel.com>
 <YH7cAx8cE4nszX7+@intel.com>
Date: Tue, 20 Apr 2021 17:41:47 +0300
Message-ID: <87k0ox9fx0.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Rename pm_ prefixed
 functions names
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
Cc: intel-gfx@lists.freedesktop.org, Hsin-Yi Wang <hsinyi@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 20 Apr 2021, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Tue, Apr 20, 2021 at 04:08:53PM +0300, Jani Nikula wrote:
>> From: Hsin-Yi Wang <hsinyi@chromium.org>
>> 
>> pm_resume and pm_suspend might be conflict with the ones defined in
>> include/linux/suspend.h. Rename all pm_* to igt_pm_* in selftests since
>> they are only used here.
>> 
>> v2 by Jani:
>> - Use igt_ prefix instead of i915_ to avoid colliding with existing
>>   i915_pm_* functions
>
> what about i915_st_pm?!

Honestly I don't really care, as long as they don't conflict with what's
in suspend.h or i915_drv.c.

They are called from functions named igt_gem_suspend() and
igt_gem_hibernate(), so I went with igt_. *shrug*


BR,
Jani.


>
>> - Rename all pm_ prefixed functions in the file
>> 
>> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
>> Reported-by: kernel test robot <lkp@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/selftests/i915_gem.c | 20 ++++++++++----------
>>  1 file changed, 10 insertions(+), 10 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/selftests/i915_gem.c b/drivers/gpu/drm/i915/selftests/i915_gem.c
>> index dc394fb7ccfa..152d9ab135b1 100644
>> --- a/drivers/gpu/drm/i915/selftests/i915_gem.c
>> +++ b/drivers/gpu/drm/i915/selftests/i915_gem.c
>> @@ -87,14 +87,14 @@ static void simulate_hibernate(struct drm_i915_private *i915)
>>  	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
>>  }
>>  
>> -static int pm_prepare(struct drm_i915_private *i915)
>> +static int igt_pm_prepare(struct drm_i915_private *i915)
>>  {
>>  	i915_gem_suspend(i915);
>>  
>>  	return 0;
>>  }
>>  
>> -static void pm_suspend(struct drm_i915_private *i915)
>> +static void igt_pm_suspend(struct drm_i915_private *i915)
>>  {
>>  	intel_wakeref_t wakeref;
>>  
>> @@ -104,7 +104,7 @@ static void pm_suspend(struct drm_i915_private *i915)
>>  	}
>>  }
>>  
>> -static void pm_hibernate(struct drm_i915_private *i915)
>> +static void igt_pm_hibernate(struct drm_i915_private *i915)
>>  {
>>  	intel_wakeref_t wakeref;
>>  
>> @@ -116,7 +116,7 @@ static void pm_hibernate(struct drm_i915_private *i915)
>>  	}
>>  }
>>  
>> -static void pm_resume(struct drm_i915_private *i915)
>> +static void igt_pm_resume(struct drm_i915_private *i915)
>>  {
>>  	intel_wakeref_t wakeref;
>>  
>> @@ -148,16 +148,16 @@ static int igt_gem_suspend(void *arg)
>>  	if (err)
>>  		goto out;
>>  
>> -	err = pm_prepare(i915);
>> +	err = igt_pm_prepare(i915);
>>  	if (err)
>>  		goto out;
>>  
>> -	pm_suspend(i915);
>> +	igt_pm_suspend(i915);
>>  
>>  	/* Here be dragons! Note that with S3RST any S3 may become S4! */
>>  	simulate_hibernate(i915);
>>  
>> -	pm_resume(i915);
>> +	igt_pm_resume(i915);
>>  
>>  	err = switch_to_context(ctx);
>>  out:
>> @@ -183,16 +183,16 @@ static int igt_gem_hibernate(void *arg)
>>  	if (err)
>>  		goto out;
>>  
>> -	err = pm_prepare(i915);
>> +	err = igt_pm_prepare(i915);
>>  	if (err)
>>  		goto out;
>>  
>> -	pm_hibernate(i915);
>> +	igt_pm_hibernate(i915);
>>  
>>  	/* Here be dragons! */
>>  	simulate_hibernate(i915);
>>  
>> -	pm_resume(i915);
>> +	igt_pm_resume(i915);
>>  
>>  	err = switch_to_context(ctx);
>>  out:
>> -- 
>> 2.20.1
>> 
>> _______________________________________________
>> Intel-gfx mailing list
>> Intel-gfx@lists.freedesktop.org
>> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
