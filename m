Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5186C46B06B
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Dec 2021 03:04:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7D576E920;
	Tue,  7 Dec 2021 02:04:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E483C6E920
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Dec 2021 02:04:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10190"; a="323716013"
X-IronPort-AV: E=Sophos;i="5.87,293,1631602800"; d="scan'208";a="323716013"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2021 18:04:45 -0800
X-IronPort-AV: E=Sophos;i="5.87,293,1631602800"; d="scan'208";a="611475739"
Received: from unerlige-ril-10.jf.intel.com (HELO unerlige-ril-10.165.21.208)
 ([10.165.21.208])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2021 18:04:45 -0800
Date: Mon, 6 Dec 2021 18:04:45 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <20211207020445.GB11940@unerlige-ril-10.165.21.208>
References: <20211207004542.24298-1-umesh.nerlige.ramappa@intel.com>
 <87a6hd19rw.wl-ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
In-Reply-To: <87a6hd19rw.wl-ashutosh.dixit@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/pmu: Fix wakeref leak in PMU
 busyness during reset
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

On Mon, Dec 06, 2021 at 05:30:43PM -0800, Dixit, Ashutosh wrote:
>On Mon, 06 Dec 2021 16:45:42 -0800, Umesh Nerlige Ramappa wrote:
>>
>> GuC PMU busyness gets gt wakeref if awake, but fails to release the
>> wakeref if a reset is in progress. Release the wakeref if it was
>> acquried successfully.
>>
>> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 8 ++++++--
>>  1 file changed, 6 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> index 1f9d4fde421f..a243304a2db1 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> @@ -1181,6 +1181,7 @@ static ktime_t guc_engine_busyness(struct intel_engine_cs *engine, ktime_t *now)
>>	struct intel_gt *gt = engine->gt;
>>	struct intel_guc *guc = &gt->uc.guc;
>>	u64 total, gt_stamp_saved;
>> +	intel_wakeref_t wakeref;
>
>Should be bool.
>
>>	unsigned long flags;
>>	u32 reset_count;
>>	bool in_reset;
>> @@ -1206,18 +1207,21 @@ static ktime_t guc_engine_busyness(struct intel_engine_cs *engine, ktime_t *now)
>>	 * start_gt_clk is derived from GuC state. To get a consistent
>>	 * view of activity, we query the GuC state only if gt is awake.
>>	 */
>> -	if (intel_gt_pm_get_if_awake(gt) && !in_reset) {
>
>Also how about just switch them around:
>
>	if (!in_reset && intel_gt_pm_get_if_awake(gt))
>
>Then you don't need any other changes I think.

:) that looks much simpler, I posted this in v2.

Thanks
Umesh
>
>> +	wakeref = intel_gt_pm_get_if_awake(gt);
>> +	if (wakeref && !in_reset) {
>>		stats_saved = *stats;
>>		gt_stamp_saved = guc->timestamp.gt_stamp;
>>		guc_update_engine_gt_clks(engine);
>>		guc_update_pm_timestamp(guc, engine, now);
>> -		intel_gt_pm_put_async(gt);
>>		if (i915_reset_count(gpu_error) != reset_count) {
>>			*stats = stats_saved;
>>			guc->timestamp.gt_stamp = gt_stamp_saved;
>>		}
>>	}
>>
>> +	if (wakeref)
>> +		intel_gt_pm_put_async(gt);
>> +
>>	total = intel_gt_clock_interval_to_ns(gt, stats->total_gt_clks);
>>	if (stats->running) {
>>		u64 clk = guc->timestamp.gt_stamp - stats->start_gt_clk;
>> --
>> 2.20.1
>>
