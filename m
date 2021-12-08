Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47B8B46D7C9
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Dec 2021 17:10:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F37E730E3;
	Wed,  8 Dec 2021 16:10:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F3E3730E3
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Dec 2021 16:10:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10192"; a="218544564"
X-IronPort-AV: E=Sophos;i="5.88,189,1635231600"; d="scan'208";a="218544564"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2021 08:10:08 -0800
X-IronPort-AV: E=Sophos;i="5.88,189,1635231600"; d="scan'208";a="503099467"
Received: from cahanley-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.19.1])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2021 08:10:06 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 john.c.harrison@intel.com, intel-gfx@lists.freedesktop.org
In-Reply-To: <20211208021512.72419-1-umesh.nerlige.ramappa@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211208021512.72419-1-umesh.nerlige.ramappa@intel.com>
Date: Wed, 08 Dec 2021 18:10:03 +0200
Message-ID: <87fsr33wo4.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/pmu: Wait longer for busyness data
 to be available from GuC
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

On Tue, 07 Dec 2021, Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com> wrote:
> live_engine_busy_stats waits for busyness to start ticking before
> sampling busyness for the test sample duration. The wait accesses an
> MMIO register and the uncore call to read it takes up to 3 ms in the
> worst case. This can result in the wait timing out since the MMIO read
> itself comsumes up the timeout of 500us. Increase the timeout to a
> larger value of 10ms to account for the MMIO read time.
>
> Resolves: https://gitlab.freedesktop.org/drm/intel/-/issues/4536

$ git log --oneline --grep="^Resolves:" | wc -l
35

Please use Closes: instead.


> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/selftest_engine_pm.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/selftest_engine_pm.c b/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
> index 75f6efc9882f..8af261831470 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
> @@ -229,7 +229,7 @@ static int __spin_until_busier(struct intel_engine_cs *engine, ktime_t busyness)
>  	start = ktime_get();
>  	while (intel_engine_get_busy_time(engine, &unused) == busyness) {
>  		dt = ktime_get() - start;
> -		if (dt > 500000) {
> +		if (dt > 10000000) {
>  			pr_err("active wait timed out %lld\n", dt);
>  			ENGINE_TRACE(engine, "active wait time out %lld\n", dt);
>  			return -ETIME;

-- 
Jani Nikula, Intel Open Source Graphics Center
