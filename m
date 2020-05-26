Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0BF81E2626
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2020 17:58:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 225B8898E4;
	Tue, 26 May 2020 15:58:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF3078989A;
 Tue, 26 May 2020 15:58:15 +0000 (UTC)
IronPort-SDR: 7sjg/2SHq4F5Cj0Pgi9EWQcZbK9+zD98FK1ZpRRGaGqFOXmqEmixPfsJ9zOgsTogAUG986jtDY
 6vAIvSXZoFOA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2020 08:58:15 -0700
IronPort-SDR: 41XbdDFyTAolUyohPt2P/grcDnUQtlxhFisIHGTYQSjB/6fOG+INGi0p6AmwCCUWfHv+hUd643
 /aJc9b621fjQ==
X-IronPort-AV: E=Sophos;i="5.73,437,1583222400"; d="scan'208";a="468348613"
Received: from ggueta-mobl.ger.corp.intel.com (HELO [10.214.234.171])
 ([10.214.234.171])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2020 08:58:13 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200526141723.401469-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <3f1bd2ad-f9a2-c6dc-b878-3982eb01f150@linux.intel.com>
Date: Tue, 26 May 2020 16:58:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200526141723.401469-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/perf_pmu: Update inter-engine
 semaphore detection
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
Cc: igt-dev@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 26/05/2020 15:17, Chris Wilson wrote:
> The kernel no longer uses semaphores between engines, unless it can do
> so by preempting them with timeslices. Update the semaphore-busy to only
> run when we expect semaphore usage, i.e. not on bdw/bsw.
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/1939
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   tests/perf_pmu.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/tests/perf_pmu.c b/tests/perf_pmu.c
> index e54a0d47e..e80f730cf 100644
> --- a/tests/perf_pmu.c
> +++ b/tests/perf_pmu.c
> @@ -822,6 +822,7 @@ sema_busy(int gem_fd,
>   	int fd;
>   
>   	igt_require(gem_scheduler_has_semaphores(gem_fd));
> +	igt_require(gem_scheduler_has_preemption(gem_fd));
>   
>   	fd = open_group(gem_fd,
>   			I915_PMU_ENGINE_SEMA(e->class, e->instance), -1);
> 

Test with perhaps too intimate knowledge of i915..

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
