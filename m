Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B709554D144
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jun 2022 20:59:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB6C51129DA;
	Wed, 15 Jun 2022 18:59:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A6FB1129B7
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jun 2022 18:59:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655319595; x=1686855595;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=00lPYaLuQulCSzuXq1rFGhlWeJC432ItcBulvVGnKQ8=;
 b=lXOEKUDsBKn1ht2on5YTfIhJkUNM5oG6yTeqsW/XjcxXIoqEHflFsDP5
 ttUHu5q/+eGkn/5GAfKuoRW7DPD++se9WK0QHYfdqiyh0Hu/EiCf2q1WG
 QRr4hNkzB42a2iV1ZOurKdl8GTaM3VSC1HdCbMVJE9TIb+lNiA7qhHE2z
 SfYQqrrB20XKoC6oL/HdFCIMlUaq7YCmf1dcXj4ydPVtkrWV1a/gNioKZ
 zR7TvLmG9ZrrWYR8zNV7IVKTYvOc+PgQKDy8qoYzdbyTe9gq+8mnem1Lw
 +ahJwJz3Bl1iSqivu4Dr23tzxws+025j+tMA021fZQt+rdod9A2CmyrgJ w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10379"; a="340734630"
X-IronPort-AV: E=Sophos;i="5.91,302,1647327600"; d="scan'208";a="340734630"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2022 11:59:55 -0700
X-IronPort-AV: E=Sophos;i="5.91,302,1647327600"; d="scan'208";a="713081653"
Received: from gkonidal-mobl2.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.212.170.1])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2022 11:59:54 -0700
Date: Wed, 15 Jun 2022 11:59:53 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20220615185953.bsbyr27jcchccvge@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220611172711.2154962-1-alan.previn.teres.alexis@intel.com>
 <20220611172711.2154962-2-alan.previn.teres.alexis@intel.com>
 <20220614011024.GE48807@orsosgc001.jf.intel.com>
 <84534cf0-94f0-13e0-5fb3-332bee124a24@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <84534cf0-94f0-13e0-5fb3-332bee124a24@linux.intel.com>
Subject: Re: [Intel-gfx] [Intel-gfx 1/1] drm/i915/guc: Don't update engine
 busyness stats too frequently
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
Cc: intel-gfx@lists.freedesktop.org,
 Alan Previn <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jun 14, 2022 at 08:07:04AM +0100, Tvrtko Ursulin wrote:
>
>On 14/06/2022 02:10, Umesh Nerlige Ramappa wrote:
>>On Sat, Jun 11, 2022 at 10:27:11AM -0700, Alan Previn wrote:
>>>Using igt's gem-create and with additional patches to track object
>>>creation time, it was measured that guc_update_engine_gt_clks was
>>>getting called over 188 thousand times in the span of 15 seconds
>>>(running the test three times).
>>>
>>>Get a jiffies sample on every trigger and ensure we skip sampling
>>>if we are being called too soon. Use half of the ping_delay as a
>>>safe threshold.
>>>
>>>NOTE: with this change, the number of calls went down to just 14
>>>over the same span of time (matching the original intent of running
>>>about once every 24 seconds, at 19.2Mhz GT freq, per engine).
>>>
>>>Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
>>>---
>>>drivers/gpu/drm/i915/gt/intel_engine_types.h      | 10 ++++++++++
>>>drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c |  9 +++++++++
>>>2 files changed, 19 insertions(+)
>>>
>>>diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h 
>>>b/drivers/gpu/drm/i915/gt/intel_engine_types.h
>>>index 2286f96f5f87..63f4ecdf1606 100644
>>>--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
>>>+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
>>>@@ -323,6 +323,16 @@ struct intel_engine_guc_stats {
>>>     * @start_gt_clk: GT clock time of last idle to active transition.
>>>     */
>>>    u64 start_gt_clk;
>>>+
>>>+    /**
>>>+     * @last_jiffies: Jiffies at last actual stats collection time
>>>+     *
>>>+     * We use this timestamp to ensure we don't oversample the
>>>+     * stats because runtime power management events can trigger
>>>+     * stats collection at much higher rates than required.
>>>+     */
>>>+    u64 last_jiffies;
>>>+
>>>};
>>>
>>>struct intel_engine_cs {
>>>diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c 
>>>b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>index 5a1dfacf24ea..8f8bf6e40ccb 100644
>>>--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>@@ -1167,6 +1167,15 @@ static void 
>>>guc_update_engine_gt_clks(struct intel_engine_cs *engine)
>>
>>A user query will end up in guc_engine_busyness which will call 
>>guc_update_engine_gt_clks. Adding this logic here will affect 
>>accuracy.
>>The other place where guc_update_engine_gt_clks is called is in the 
>>ping worker, but that worker runs at 1/8th the wrap around time for 
>>the gt clocks (32 bit). The last I checked the wrap around was at 22 
>>seconds.
>>
>>That leaves only the gt_park path. fwiu, this path runs too 
>>frequently and here we are updating the busyness stats. That is 
>>causing the enormous PCI traffic (lmem accesses). Only this path 
>>needs to be fixed, as in just use the same logic in the 
>>intel_guc_busyness_park() to decide whether to call 
>>__update_guc_busyness_stats or not.
>
>Not updating the driver state in park will not negatively impact 
>accuracy in some scenarios? That needs to balanced against the 
>questions whether or not there are real world scenarios impacted by 
>the update cost or it is just for IGT.

there is, which was what motivated 
https://patchwork.freedesktop.org/series/105011/ and in parallel Alan
worked on this. I view both as orthogonal  thought. I used it to make
the single-word-from-lmem faster, but if we can reduce
the frequency this code path is called, it should be even better.
Per Umesh's and your comment I'm unsure if we can... but if
there is no user monitoring the usage, should we still be calling this?
"Nobody is looking, why are we sampling?" kind of thought.

Summarizing the first patch in my series: it improved igt in ~50% and a
real world case in ~12%

Lucas De Marchi
