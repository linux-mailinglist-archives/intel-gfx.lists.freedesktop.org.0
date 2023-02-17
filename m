Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1A3C69A8A4
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Feb 2023 10:55:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBD108995F;
	Fri, 17 Feb 2023 09:55:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D3D688CBF
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Feb 2023 09:55:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676627755; x=1708163755;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=5/Er4JhQyH0/on+PQHJQ8z1oG4L2AJ0eUfeE18ME9p8=;
 b=NsmHp/Y+nOD/hu8jSYRFXPbNloSXP6IiWdOKvwamI5gFzTaeaZUUHbzO
 AxAfPmHWaZ2V93KZuvdrypBjDQ4+WoBY210ke/km9cTkNFYC7DNbd6B4d
 Y6eiLMytcvInX1NU/K0fxAZ8UQU9FHHLt80VFnvMr/OCndokI75t7nNkQ
 KY3Nsu1ZfvwMKkcXlU/66nuQjY4Rn89o3lJNgaJAg4ocg8F3vlqidOt1J
 SSj3OXL3demqMp/h0xfhUQwQ6YRoMacfq8jUYVi0GGYh/oAqHqEEpUqMC
 qZXTCmbnlYI1GOYd/lJkD563Bqrk3/6DSLVRAreNWaPbOWF9LOyQvYXmZ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="315668784"
X-IronPort-AV: E=Sophos;i="5.97,304,1669104000"; d="scan'208";a="315668784"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2023 01:55:54 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="794356440"
X-IronPort-AV: E=Sophos;i="5.97,304,1669104000"; d="scan'208";a="794356440"
Received: from akocherg-mobl1.ccr.corp.intel.com (HELO localhost)
 ([10.252.53.1])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2023 01:55:52 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>, Umesh Nerlige Ramappa
 <umesh.nerlige.ramappa@intel.com>
In-Reply-To: <87fsb5f3nm.wl-ashutosh.dixit@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230217005850.2511422-1-umesh.nerlige.ramappa@intel.com>
 <20230217005850.2511422-6-umesh.nerlige.ramappa@intel.com>
 <87fsb5f3nm.wl-ashutosh.dixit@intel.com>
Date: Fri, 17 Feb 2023 11:55:49 +0200
Message-ID: <87a61czkd6.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2 5/9] drm/i915/perf: Fail modprobe if
 i915_perf_init fails on OOM
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

On Thu, 16 Feb 2023, "Dixit, Ashutosh" <ashutosh.dixit@intel.com> wrote:
> On Thu, 16 Feb 2023 16:58:46 -0800, Umesh Nerlige Ramappa wrote:
>>
>> i915_perf_init can fail due to OOM. Fail driver init if i915_perf_init
>> fails.
>>
>> v2: (Jani)
>> - Reorder patch in the series
>
> Jani seemed ok with this: that a drm_err will get lost in the dmesg deluge
> on OOM so it's better to fail the probe as long as it's only due to OOM.
>
>> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/i915_driver.c | 4 +++-
>>  drivers/gpu/drm/i915/i915_perf.c   | 8 ++++++--
>>  drivers/gpu/drm/i915/i915_perf.h   | 2 +-
>>  3 files changed, 10 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
>> index 0c0ae3eabb4b..998ca41c9713 100644
>> --- a/drivers/gpu/drm/i915/i915_driver.c
>> +++ b/drivers/gpu/drm/i915/i915_driver.c
>> @@ -477,7 +477,9 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
>>	if (ret)
>>		return ret;
>>
>> -	i915_perf_init(dev_priv);
>> +	ret = i915_perf_init(dev_priv);
>
> Maybe add a comment here like this to allay people's concerns?
>
> 	/* The only non-zero ret here is -ENOMEM */
>
> or even:
>
> 	drm_WARN_ON(&dev_priv->drm, ret && ret != -ENOMEM);

Frankly I would not clutter the high level hw probe function with the
above.

BR,
Jani.


>
> Otherwise this is:
>
> Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
>
>> +	if (ret)
>> +		return ret;
>>
>>	ret = i915_ggtt_probe_hw(dev_priv);
>>	if (ret)
>> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
>> index 37c4cc44d68c..3306653c0b85 100644
>> --- a/drivers/gpu/drm/i915/i915_perf.c
>> +++ b/drivers/gpu/drm/i915/i915_perf.c
>> @@ -4941,7 +4941,7 @@ static void i915_perf_init_info(struct drm_i915_private *i915)
>>   * Note: i915-perf initialization is split into an 'init' and 'register'
>>   * phase with the i915_perf_register() exposing state to userspace.
>>   */
>> -void i915_perf_init(struct drm_i915_private *i915)
>> +int i915_perf_init(struct drm_i915_private *i915)
>>  {
>>	struct i915_perf *perf = &i915->perf;
>>
>> @@ -5057,12 +5057,16 @@ void i915_perf_init(struct drm_i915_private *i915)
>>		perf->i915 = i915;
>>
>>		ret = oa_init_engine_groups(perf);
>> -		if (ret)
>> +		if (ret) {
>>			drm_err(&i915->drm,
>>				"OA initialization failed %d\n", ret);
>> +			return ret;
>> +		}
>>
>>		oa_init_supported_formats(perf);
>>	}
>> +
>> +	return 0;
>>  }
>>
>>  static int destroy_config(int id, void *p, void *data)
>> diff --git a/drivers/gpu/drm/i915/i915_perf.h b/drivers/gpu/drm/i915/i915_perf.h
>> index f96e09a4af04..253637651d5e 100644
>> --- a/drivers/gpu/drm/i915/i915_perf.h
>> +++ b/drivers/gpu/drm/i915/i915_perf.h
>> @@ -18,7 +18,7 @@ struct i915_oa_config;
>>  struct intel_context;
>>  struct intel_engine_cs;
>>
>> -void i915_perf_init(struct drm_i915_private *i915);
>> +int i915_perf_init(struct drm_i915_private *i915);
>>  void i915_perf_fini(struct drm_i915_private *i915);
>>  void i915_perf_register(struct drm_i915_private *i915);
>>  void i915_perf_unregister(struct drm_i915_private *i915);
>> --
>> 2.36.1
>>

-- 
Jani Nikula, Intel Open Source Graphics Center
