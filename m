Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AB6FB6991F5
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Feb 2023 11:43:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 109CD10ED2A;
	Thu, 16 Feb 2023 10:43:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D4E010ED2D
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Feb 2023 10:43:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676544201; x=1708080201;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=PwqH6pgP/sTbNd6OlFEsWpslG4WQJ0kSrmM3G545GTY=;
 b=QMKMLZJGGKI72GdGFEQBvkAw9U1L3qfQrbMEUufem8ymcbhmCeWDPm3P
 Ru5OsWjhybYRTa3cyetACgJMkw2qWBKEAl1x8r13SY9eGfNZbnKOwH8SC
 dzwcxOhYQVaes1zIpAIDkanUpOd8sLp9nX+JMFl4aTV46e+JbxZp0Tmpr
 G4EJmBvKEJMw+NJPB89vj9RnNkCLjvZ+6mBI0SOZJGFD2i5BXruBP5rCJ
 JoB6RIAf1Wi1hLRNCBvP8ATN41RTJScvLosKimKZcYviC1QEBNC3KMaXE
 g7tgA4WlbsoLMavDNZ9odhw6RkKfvOsEq7SrhPbicO9Ble5fsllbyR75n Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10622"; a="315362628"
X-IronPort-AV: E=Sophos;i="5.97,302,1669104000"; d="scan'208";a="315362628"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2023 02:43:21 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10622"; a="702509136"
X-IronPort-AV: E=Sophos;i="5.97,302,1669104000"; d="scan'208";a="702509136"
Received: from aaronov-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.37.86])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2023 02:43:19 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>, Umesh Nerlige Ramappa
 <umesh.nerlige.ramappa@intel.com>
In-Reply-To: <87wn4im972.wl-ashutosh.dixit@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230215005419.2100887-1-umesh.nerlige.ramappa@intel.com>
 <20230215005419.2100887-5-umesh.nerlige.ramappa@intel.com>
 <87wn4im972.wl-ashutosh.dixit@intel.com>
Date: Thu, 16 Feb 2023 12:43:16 +0200
Message-ID: <87o7pt28mz.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 4/9] drm/i915/perf: Fail modprobe if
 i915_perf_init fails
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
Cc: Lionel G Landwerlin <lionel.g.landwerlin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 15 Feb 2023, "Dixit, Ashutosh" <ashutosh.dixit@intel.com> wrote:
> On Tue, 14 Feb 2023 16:54:14 -0800, Umesh Nerlige Ramappa wrote:
>>
>> Check for return value from i915_perf_init and fail driver init if perf
>> init fails.
>
> Guess we'll start returning anything other than zero later:

And before doing so, this change is useless, and IMO should not be
merged. If it can't or doesn't fail, it should be void. The probe is
complicated enough as is, let's not complicate it unless there's a
reason for it.

Moreover, we'll probably want to consider what parts of the driver probe
are allowed to fail, and the driver can still function. I'm pretty sure
most people prefer a working screen without OA over failing probe.

BR,
Jani.


>
> Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
>
>>
>> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/i915_driver.c | 4 +++-
>>  drivers/gpu/drm/i915/i915_perf.c   | 4 +++-
>>  drivers/gpu/drm/i915/i915_perf.h   | 2 +-
>>  3 files changed, 7 insertions(+), 3 deletions(-)
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
>> +	if (ret)
>> +		return ret;
>>
>>	ret = i915_ggtt_probe_hw(dev_priv);
>>	if (ret)
>> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
>> index 0b2097ad000e..e134523576f8 100644
>> --- a/drivers/gpu/drm/i915/i915_perf.c
>> +++ b/drivers/gpu/drm/i915/i915_perf.c
>> @@ -4845,7 +4845,7 @@ static void i915_perf_init_info(struct drm_i915_private *i915)
>>   * Note: i915-perf initialization is split into an 'init' and 'register'
>>   * phase with the i915_perf_register() exposing state to userspace.
>>   */
>> -void i915_perf_init(struct drm_i915_private *i915)
>> +int i915_perf_init(struct drm_i915_private *i915)
>>  {
>>	struct i915_perf *perf = &i915->perf;
>>
>> @@ -4962,6 +4962,8 @@ void i915_perf_init(struct drm_i915_private *i915)
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
