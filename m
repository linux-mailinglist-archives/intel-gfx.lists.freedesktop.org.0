Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 816F8184D6B
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2020 18:18:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 263576EC42;
	Fri, 13 Mar 2020 17:18:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 613296EC3E
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2020 17:18:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Mar 2020 10:18:10 -0700
X-IronPort-AV: E=Sophos;i="5.70,549,1574150400"; d="scan'208";a="232482775"
Received: from pkosiack-mobl2.ger.corp.intel.com (HELO [10.252.21.27])
 ([10.252.21.27])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 13 Mar 2020 10:18:08 -0700
To: srinivasan.s@intel.com, intel-gfx@lists.freedesktop.org,
 chris@chris-wilson.co.uk, Francisco Jerez <currojerez@riseup.net>
References: <1584097979-158957-1-git-send-email-srinivasan.s@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <c2daee78-0eaf-090e-8a65-3bb6dd773806@linux.intel.com>
Date: Fri, 13 Mar 2020 17:18:05 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <1584097979-158957-1-git-send-email-srinivasan.s@intel.com>
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


Hi,

On 13/03/2020 11:12, srinivasan.s@intel.com wrote:
> From: Srinivasan S <srinivasan.s@intel.com>
> 
>        drm/i915: Context aware user agnostic EU/Slice/Sub-slice control within kernel
> 
> This patch sets improves GPU power consumption on Linux kernel based OS such as
> Chromium OS, Ubuntu, etc. Following are the power savings.
> 
> Power savings on GLK-GT1 Bobba platform running on Chrome OS.
> -----------------------------------------------|
> App /KPI                | % Power Benefit (mW) |
> ------------------------|----------------------|
> Hangout Call- 20 minute |	1.8%           |
> Youtube 4K VPB          |       14.13%         |
> WebGL Aquarium          |       13.76%         |
> Unity3D                 |       6.78%          |
> 			|		       |
> ------------------------|----------------------|
> Chrome PLT              | BatteryLife Improves |
> 			| by ~45 minute        |
> -----------------------------------------------|
> 
> Power savings on KBL-GT3 running on  Android and Ubuntu (Linux).
> -----------------------------------------------|
> App /KPI		| % Power Benefit (mW) |
>                          |----------------------|
> 			|  Android |  Ubuntu   |
> ------------------------|----------|-----------|
> 3D Mark (Ice storm)     | 2.30%    | N.A.      |
> TRex On screen          | 2.49%    | 2.97%     |
> Manhattan On screen     | 3.11%    | 4.90%     |
> Carchase On Screen	| N.A.     | 5.06%     |
> AnTuTu 6.1.4            | 3.42%    | N.A.      |
> SynMark2		| N.A.     | 1.7%      |
> -----------------------------------------------|

Have a look at the result Francisco obtained on Icelake with a different 
approach: https://patchwork.freedesktop.org/series/74540/

Not all benchmarks overlap but if you are set up to easily test his 
patches it may be for a mutual benefit.

Regards,

Tvrtko

> We have also observed GPU core residencies improves by 1.035%.
> 
> Technical Insights of the patch:
> Current GPU configuration code for i915 does not allow us to change
> EU/Slice/Sub-slice configuration dynamically. Its done only once while context
> is created.
> 
> While particular graphics application is running, if we examine the command
> requests from user space, we observe that command density is not consistent.
> It means there is scope to change the graphics configuration dynamically even
> while context is running actively. This patch series proposes the solution to
> find the active pending load for all active context at given time and based on
> that, dynamically perform graphics configuration for each context.
> 
> We use a hr (high resolution) timer with i915 driver in kernel to get a
> callback every few milliseconds (this timer value can be configured through
> debugfs, default is '0' indicating timer is in disabled state i.e. original
> system without any intervention).In the timer callback, we examine pending
> commands for a context in the queue, essentially, we intercept them before
> they are executed by GPU and we update context with required number of EUs.
> 
> Two questions, how did we arrive at right timer value? and what's the right
> number of EUs? For the prior one, empirical data to achieve best performance
> in least power was considered. For the later one, we roughly categorized number
> of EUs logically based on platform. Now we compare number of pending commands
> with a particular threshold and then set number of EUs accordingly with update
> context. That threshold is also based on experiments & findings. If GPU is able
> to catch up with CPU, typically there are no pending commands, the EU config
> would remain unchanged there. In case there are more pending commands we
> reprogram context with higher number of EUs. Please note, here we are changing
> EUs even while context is running by examining pending commands every 'x'
> milliseconds.
> 
> Srinivasan S (3):
>    drm/i915: Get active pending request for given context
>    drm/i915: set optimum eu/slice/sub-slice configuration based on load
>      type
>    drm/i915: Predictive governor to control slice/subslice/eu
> 
>   drivers/gpu/drm/i915/Makefile                     |   1 +
>   drivers/gpu/drm/i915/gem/i915_gem_context.c       |  20 +++++
>   drivers/gpu/drm/i915/gem/i915_gem_context.h       |   2 +
>   drivers/gpu/drm/i915/gem/i915_gem_context_types.h |  38 ++++++++
>   drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c    |   1 +
>   drivers/gpu/drm/i915/gt/intel_deu.c               | 104 ++++++++++++++++++++++
>   drivers/gpu/drm/i915/gt/intel_deu.h               |  31 +++++++
>   drivers/gpu/drm/i915/gt/intel_lrc.c               |  44 ++++++++-
>   drivers/gpu/drm/i915/i915_drv.h                   |   6 ++
>   drivers/gpu/drm/i915/i915_gem.c                   |   4 +
>   drivers/gpu/drm/i915/i915_params.c                |   4 +
>   drivers/gpu/drm/i915/i915_params.h                |   1 +
>   drivers/gpu/drm/i915/intel_device_info.c          |  74 ++++++++++++++-
>   13 files changed, 325 insertions(+), 5 deletions(-)
>   create mode 100644 drivers/gpu/drm/i915/gt/intel_deu.c
>   create mode 100644 drivers/gpu/drm/i915/gt/intel_deu.h
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
