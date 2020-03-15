Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFB4C18603F
	for <lists+intel-gfx@lfdr.de>; Sun, 15 Mar 2020 23:31:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34D276E0FD;
	Sun, 15 Mar 2020 22:30:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 263E66E0FD
 for <intel-gfx@lists.freedesktop.org>; Sun, 15 Mar 2020 22:30:58 +0000 (UTC)
IronPort-SDR: NIMcLfVkndPs+elbYAlM5K0SBEpM6DUtXMA84ohKTp8TAng1LEyFdxrUB2leLYuXAGCY67TK0c
 XpRSSiiUHUBQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2020 15:30:57 -0700
IronPort-SDR: 3o5rwx6J56Nsd55kLEvBe9XSGMeJ5dDUlFIDv3CenrBywtZOX4ELKecM7VEhegzi0tl+CLyCKE
 pJAiDaeRU05A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,558,1574150400"; d="scan'208";a="354844748"
Received: from dziadkok-mobl2.ger.corp.intel.com (HELO [10.252.41.136])
 ([10.252.41.136])
 by fmsmga001.fm.intel.com with ESMTP; 15 Mar 2020 15:30:55 -0700
To: Francisco Jerez <currojerez@riseup.net>, srinivasan.s@intel.com,
 intel-gfx@lists.freedesktop.org, chris@chris-wilson.co.uk,
 tvrtko.ursulin@intel.com
References: <1584097979-158957-1-git-send-email-srinivasan.s@intel.com>
 <87k13m8oik.fsf@riseup.net> <2095d198-cb1d-4dd6-c763-e466e4e3de63@intel.com>
 <87d09d8pa7.fsf@riseup.net>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <81e4e583-5621-39c0-63c2-b11521b96eac@intel.com>
Date: Mon, 16 Mar 2020 00:30:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <87d09d8pa7.fsf@riseup.net>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v7 0/3] Dynamic EU configuration of
 Slice/Sub-slice/EU
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 15/03/2020 20:08, Francisco Jerez wrote:
> Lionel Landwerlin <lionel.g.landwerlin@intel.com> writes:
>
>> On 15/03/2020 02:12, Francisco Jerez wrote:
>>> srinivasan.s@intel.com writes:
>>>
>>>> From: Srinivasan S <srinivasan.s@intel.com>
>>>>
>>>>         drm/i915: Context aware user agnostic EU/Slice/Sub-slice control within kernel
>>>>
>>>> This patch sets improves GPU power consumption on Linux kernel based OS such as
>>>> Chromium OS, Ubuntu, etc. Following are the power savings.
>>>>
>>>> Power savings on GLK-GT1 Bobba platform running on Chrome OS.
>>>> -----------------------------------------------|
>>>> App /KPI                | % Power Benefit (mW) |
>>>> ------------------------|----------------------|
>>>> Hangout Call- 20 minute |	1.8%           |
>>>> Youtube 4K VPB          |       14.13%         |
>>>> WebGL Aquarium          |       13.76%         |
>>>> Unity3D                 |       6.78%          |
>>>> 			|		       |
>>>> ------------------------|----------------------|
>>>> Chrome PLT              | BatteryLife Improves |
>>>> 			| by ~45 minute        |
>>>> -----------------------------------------------|
>>>>
>>>> Power savings on KBL-GT3 running on  Android and Ubuntu (Linux).
>>>> -----------------------------------------------|
>>>> App /KPI		| % Power Benefit (mW) |
>>>>                           |----------------------|
>>>> 			|  Android |  Ubuntu   |
>>>> ------------------------|----------|-----------|
>>>> 3D Mark (Ice storm)     | 2.30%    | N.A.      |
>>>> TRex On screen          | 2.49%    | 2.97%     |
>>>> Manhattan On screen     | 3.11%    | 4.90%     |
>>>> Carchase On Screen	| N.A.     | 5.06%     |
>>>> AnTuTu 6.1.4            | 3.42%    | N.A.      |
>>>> SynMark2		| N.A.     | 1.7%      |
>>>> -----------------------------------------------|
>>>>
>>> Did you get any performance (e.g. FPS) measurements from those
>>> test-cases?  There is quite some potential for this feature to constrain
>>> the GPU throughput inadvertently, which could lead to an apparent
>>> reduction in power usage not accompanied by an improvement in energy
>>> efficiency -- In fact AFAIUI there is some potential for this feature to
>>> *decrease* the energy efficiency of the system if the GPU would have
>>> been able to keep all EUs busy at a lower frequency, but the parallelism
>>> constraint forces it to run at a higher frequency above RPe in order to
>>> achieve the same throughput, because due to the convexity of the power
>>> curve of the EU we have:
>>>
>>>     P(k * f) > k * P(f)
>>>
>>> Where 'k' is the ratio between the EU parallelism without and with SSEU
>>> control, and f > RPe is the original GPU frequency without SSEU control.
>>>
>>> In scenarios like that we *might* seem to be using less power with SSEU
>>> control if the workload is running longer, but it would end up using
>>> more energy overall by the time it completes, so it would be good to
>>> have some performance-per-watt numbers to make sure that's not
>>> happening.
>>>
>>>> We have also observed GPU core residencies improves by 1.035%.
>>>>
>>>> Technical Insights of the patch:
>>>> Current GPU configuration code for i915 does not allow us to change
>>>> EU/Slice/Sub-slice configuration dynamically. Its done only once while context
>>>> is created.
>>>>
>>>> While particular graphics application is running, if we examine the command
>>>> requests from user space, we observe that command density is not consistent.
>>>> It means there is scope to change the graphics configuration dynamically even
>>>> while context is running actively. This patch series proposes the solution to
>>>> find the active pending load for all active context at given time and based on
>>>> that, dynamically perform graphics configuration for each context.
>>>>
>>>> We use a hr (high resolution) timer with i915 driver in kernel to get a
>>>> callback every few milliseconds (this timer value can be configured through
>>>> debugfs, default is '0' indicating timer is in disabled state i.e. original
>>>> system without any intervention).In the timer callback, we examine pending
>>>> commands for a context in the queue, essentially, we intercept them before
>>>> they are executed by GPU and we update context with required number of EUs.
>>>>
>>> Given that the EU configuration update is synchronous with command
>>> submission, do you really need a timer?  It sounds like it would be less
>>> CPU overhead to adjust the EU count on demand whenever the counter
>>> reaches or drops below the threshold instead of polling some CPU-side
>>> data structure.
>>>
>>>> Two questions, how did we arrive at right timer value? and what's the right
>>>> number of EUs? For the prior one, empirical data to achieve best performance
>>>> in least power was considered. For the later one, we roughly categorized number
>>>> of EUs logically based on platform. Now we compare number of pending commands
>>>> with a particular threshold and then set number of EUs accordingly with update
>>>> context. That threshold is also based on experiments & findings. If GPU is able
>>>> to catch up with CPU, typically there are no pending commands, the EU config
>>>> would remain unchanged there. In case there are more pending commands we
>>>> reprogram context with higher number of EUs. Please note, here we are changing
>>>> EUs even while context is running by examining pending commands every 'x'
>>>> milliseconds.
>>>>
>>> I have doubts that the number of requests pending execution is a
>>> particularly reliable indicator of the optimal number of EUs the
>>> workload needs enabled, for starters because the execlists submission
>>> code seems to be able to merge multiple requests into the same port, so
>>> there might seem to be zero pending commands even if the GPU has a
>>> backlog of several seconds or minutes worth of work.
>>>
>>> But even if you were using an accurate measure of the GPU load, would
>>> that really be a good indicator of whether the GPU would run more
>>> efficiently with more or less EUs enabled?  I can think of many
>>> scenarios where a short-lived GPU request would consume less energy and
>>> complete faster while running with all EUs enabled (e.g. if it actually
>>> has enough parallelism to take advantage of all EUs in the system).
>>> Conversely I can think of some scenarios where a long-running GPU
>>> request would benefit from SSEU control (e.g. a poorly parallelizable
>>> but heavy 3D geometry pipeline or GPGPU workload).  The former seems
>>> more worrying than the latter since it could lead to performance or
>>> energy efficiency regressions.
>>>
>>> IOW it seems to me that the optimal number of EUs enabled is more of a
>>> function of the internal parallelism constraints of each request rather
>>> than of the overall GPU load.  You should be able to get some
>>> understanding of that by e.g. calculating the number of threads loaded
>>> on the average based on the EU SPM counters, but unfortunately the ones
>>> you'd need are only available on TGL+ IIRC.  On earlier platforms you
>>> should be able to achieve the same thing by sampling some FLEXEU
>>> counters, but you'd likely have to mess with the mux configuration which
>>> would interfere with OA sampling -- However it sounds like this feature
>>> may have to be disabled anytime OA is active anyway so that may not be a
>>> problem after all?
>>
>> FLEXEU has to be configured on all contexts but does not need the mux
>> configuration.
>>
> They have a sort of mux controlled through the EU_PERF_CNT_CTL*
> registers that have to be set up correctly for each counter to count the
> right event, which would certainly interfere with userspace using OA to
> gather EU metrics.


Maybe we're not talking about the same mux then :)


>
>> I think this feature would have to be shut off everytime you end using
>> OA from userspace though.
>>
> Yeah, that's probably necessary one way or another.
>
>> -Lionel
>>
>>
>>> Regards,
>>> Francisco.
>>>
>>>> Srinivasan S (3):
>>>>     drm/i915: Get active pending request for given context
>>>>     drm/i915: set optimum eu/slice/sub-slice configuration based on load
>>>>       type
>>>>     drm/i915: Predictive governor to control slice/subslice/eu
>>>>
>>>>    drivers/gpu/drm/i915/Makefile                     |   1 +
>>>>    drivers/gpu/drm/i915/gem/i915_gem_context.c       |  20 +++++
>>>>    drivers/gpu/drm/i915/gem/i915_gem_context.h       |   2 +
>>>>    drivers/gpu/drm/i915/gem/i915_gem_context_types.h |  38 ++++++++
>>>>    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c    |   1 +
>>>>    drivers/gpu/drm/i915/gt/intel_deu.c               | 104 ++++++++++++++++++++++
>>>>    drivers/gpu/drm/i915/gt/intel_deu.h               |  31 +++++++
>>>>    drivers/gpu/drm/i915/gt/intel_lrc.c               |  44 ++++++++-
>>>>    drivers/gpu/drm/i915/i915_drv.h                   |   6 ++
>>>>    drivers/gpu/drm/i915/i915_gem.c                   |   4 +
>>>>    drivers/gpu/drm/i915/i915_params.c                |   4 +
>>>>    drivers/gpu/drm/i915/i915_params.h                |   1 +
>>>>    drivers/gpu/drm/i915/intel_device_info.c          |  74 ++++++++++++++-
>>>>    13 files changed, 325 insertions(+), 5 deletions(-)
>>>>    create mode 100644 drivers/gpu/drm/i915/gt/intel_deu.c
>>>>    create mode 100644 drivers/gpu/drm/i915/gt/intel_deu.h
>>>>
>>>> -- 
>>>> 2.7.4
>>>>
>>>> _______________________________________________
>>>> Intel-gfx mailing list
>>>> Intel-gfx@lists.freedesktop.org
>>>> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
>>>>
>>>> _______________________________________________
>>>> Intel-gfx mailing list
>>>> Intel-gfx@lists.freedesktop.org
>>>> https://lists.freedesktop.org/mailman/listinfo/intel-gfx


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
