Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17C5946DAFB
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Dec 2021 19:25:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F1146F3D0;
	Wed,  8 Dec 2021 18:25:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E51B6F3D0
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Dec 2021 18:25:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10192"; a="224769108"
X-IronPort-AV: E=Sophos;i="5.88,190,1635231600"; d="scan'208";a="224769108"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2021 10:25:06 -0800
X-IronPort-AV: E=Sophos;i="5.88,190,1635231600"; d="scan'208";a="658459548"
Received: from jons-linux-dev-box.fm.intel.com (HELO jons-linux-dev-box)
 ([10.1.27.20])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2021 10:25:06 -0800
Date: Wed, 8 Dec 2021 10:19:42 -0800
From: Matthew Brost <matthew.brost@intel.com>
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Message-ID: <20211208181941.GA23255@jons-linux-dev-box>
References: <20211208021512.72419-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211208021512.72419-1-umesh.nerlige.ramappa@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Dec 07, 2021 at 06:15:12PM -0800, Umesh Nerlige Ramappa wrote:
> live_engine_busy_stats waits for busyness to start ticking before
> sampling busyness for the test sample duration. The wait accesses an
> MMIO register and the uncore call to read it takes up to 3 ms in the
> worst case. This can result in the wait timing out since the MMIO read
> itself comsumes up the timeout of 500us. Increase the timeout to a
> larger value of 10ms to account for the MMIO read time.
> 
> Resolves: https://gitlab.freedesktop.org/drm/intel/-/issues/4536

With 's/Resolves/Closes' per Jani's feedback:

Reviewed-by: Matthew Brost <matthew.brost@intel.com>
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
> -- 
> 2.20.1
> 
