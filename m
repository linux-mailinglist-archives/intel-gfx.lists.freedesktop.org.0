Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 101067D5012
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 14:42:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83CBF10E387;
	Tue, 24 Oct 2023 12:42:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61BA610E386
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 12:42:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698151356; x=1729687356;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=STJY7I+4GdSiLQXm17iPyvxWZdoUM3dOXevoD0dPj+0=;
 b=XZlv4AayG79sOiEVxgeRXYzLkbQbqneXCglEUcGHWFbqCE8D2ysjXHhp
 F+19EbbNJJMdJC908gZA1yvDGi8Rfa3cOjPJmfE2BHl8h5xYSgjZBp4yN
 jkEinrDS++dxuD6Mtr6lTKib+FOrnN33qylysmRIGc+8q7W0hz8CcjBKL
 cb3JldLTzgkOniq9qdLJHF++nErLAA5Z2laMMMHWSI11HPQZmPD7D0gTn
 WPVUpvQie3/w8kofKTS6PQzkUPtqOki8UmmP/tcgMMxprWf90pIQjZKE6
 11eltNknU6UKUoAV9w3ZHRPj664NFX2TxMe3zyglut034tO4QM8F3pZEi w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="5669898"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; 
   d="scan'208";a="5669898"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 05:42:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="762086854"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="762086854"
Received: from goepfrim-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.48.28])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 05:42:34 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
In-Reply-To: <ZTe4uzgC7sIPGzwV@ashyti-mobl2.lan>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231023150256.438331-1-jani.nikula@intel.com>
 <20231023150256.438331-2-jani.nikula@intel.com>
 <ZTe4uzgC7sIPGzwV@ashyti-mobl2.lan>
Date: Tue, 24 Oct 2023 15:42:31 +0300
Message-ID: <87h6mg9op4.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/pmu: add event_to_pmu() helper
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

On Tue, 24 Oct 2023, Andi Shyti <andi.shyti@linux.intel.com> wrote:
> Hi Jani,
>
> On Mon, Oct 23, 2023 at 06:02:55PM +0300, Jani Nikula wrote:
>> It's tedious to duplicate the container_of() everywhere. Add a helper.
>> 
>> Also do the logical steps of first getting from struct perf_event to
>> struct i915_pmu, and then from struct i915_pmu to struct
>> drm_i915_private if needed, instead of perf_event->i915->pmu. Not all
>> places even need the i915 pointer.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/i915_pmu.c | 45 +++++++++++++++------------------
>>  1 file changed, 20 insertions(+), 25 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
>> index dcae2fcd8d36..d45b40ec6d47 100644
>> --- a/drivers/gpu/drm/i915/i915_pmu.c
>> +++ b/drivers/gpu/drm/i915/i915_pmu.c
>> @@ -31,6 +31,11 @@
>>  static cpumask_t i915_pmu_cpumask;
>>  static unsigned int i915_pmu_target_cpu = -1;
>>  
>> +static struct i915_pmu *event_to_pmu(struct perf_event *event)
>
> I would call it perfevent (or perf_event), event is too generic.
> We have other kind of events, too.

Fair enough.

>
>> +{
>> +	return container_of(event->pmu, struct i915_pmu, base);
>> +}
>> +
>>  static struct drm_i915_private *pmu_to_i915(struct i915_pmu *pmu)
>>  {
>>  	return container_of(pmu, struct drm_i915_private, pmu);
>> @@ -510,8 +515,8 @@ static enum hrtimer_restart i915_sample(struct hrtimer *hrtimer)
>>  
>>  static void i915_pmu_event_destroy(struct perf_event *event)
>>  {
>> -	struct drm_i915_private *i915 =
>> -		container_of(event->pmu, typeof(*i915), pmu.base);
>> +	struct i915_pmu *pmu = event_to_pmu(event);
>> +	struct drm_i915_private *i915 = pmu_to_i915(pmu);
>
> perf_event_to_i915() ?

Nah. Most places that need i915 also need pmu. Feels a bit much to add a
helper to combine two helpers.

Thanks for the review.

BR,
Jani.

>
> Andi

-- 
Jani Nikula, Intel
