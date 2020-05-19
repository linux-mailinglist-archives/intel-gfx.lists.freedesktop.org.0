Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CCA11D948A
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2020 12:42:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBAF58981B;
	Tue, 19 May 2020 10:42:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D599893E7
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 May 2020 10:42:48 +0000 (UTC)
IronPort-SDR: CrFPhSUFZRVfWW+7ElQQoc2a3DWqn+503nm2EgTaoksGoJbxLQ7CN2IjbCaUChnz8L9gt8zbHV
 imRJJ/+iAYMg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2020 03:42:48 -0700
IronPort-SDR: A2Sle3SFQLo4eyiWmjHft+SLqOxLcTcNryCKf3yFtwWwx2YIqYATEAyCL39+oR9CBsOKlhwC+H
 9Nka4PZ2aVQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,409,1583222400"; d="scan'208";a="267844386"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 19 May 2020 03:42:45 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 19 May 2020 13:42:45 +0300
Date: Tue, 19 May 2020 13:42:45 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200519104245.GV6112@intel.com>
References: <20200516132444.24007-1-chris@chris-wilson.co.uk>
 <20200516133102.32167-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200516133102.32167-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Measure CS_TIMESTAMP
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, May 16, 2020 at 02:31:02PM +0100, Chris Wilson wrote:
> Count the number of CS_TIMESTAMP ticks and check that it matches our
> expectations.

Looks ok for everything except g4x/ilk. Those would need something
like
https://patchwork.freedesktop.org/patch/355944/?series=3D74145&rev=3D1
+ read TIMESTAMP_UDW instead of TIMESTAMP.

bw/cl still needs
https://patchwork.freedesktop.org/patch/355946/?series=3D74145&rev=3D1
though the test seems a bit flaky on my cl. Sometimes the cycle count
comes up short. Never seen it exceed the expected value, but it can =

come up significantly short. And curiously it does seem to have a
tendency to come out as roughly some nice fraction (seen at least
1/2 and 1/4 quite a few times). Dunno if the tick rate actually
changes due to some unknown circumstances, or if the counter just
updates somehow lazily. Certainly polling the counter over a longer
period does show it to tick at the expected rate.

Anyways, test looks sane to me
Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> =

> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gt/selftest_gt_pm.c | 113 +++++++++++++++++++++++
>  1 file changed, 113 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/gt/selftest_gt_pm.c b/drivers/gpu/drm/i=
915/gt/selftest_gt_pm.c
> index 242181a5214c..cac4cf2a5e1d 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
> @@ -5,10 +5,122 @@
>   * Copyright =A9 2019 Intel Corporation
>   */
>  =

> +#include <linux/sort.h>
> +
> +#include "intel_gt_clock_utils.h"
> +
>  #include "selftest_llc.h"
>  #include "selftest_rc6.h"
>  #include "selftest_rps.h"
>  =

> +static int cmp_u64(const void *A, const void *B)
> +{
> +	const u64 *a =3D A, *b =3D B;
> +
> +	if (a < b)
> +		return -1;
> +	else if (a > b)
> +		return 1;
> +	else
> +		return 0;
> +}
> +
> +static int cmp_u32(const void *A, const void *B)
> +{
> +	const u32 *a =3D A, *b =3D B;
> +
> +	if (a < b)
> +		return -1;
> +	else if (a > b)
> +		return 1;
> +	else
> +		return 0;
> +}
> +
> +static void measure_clocks(struct intel_engine_cs *engine,
> +			   u32 *out_cycles, ktime_t *out_dt)
> +{
> +	ktime_t dt[5];
> +	u32 cycles[5];
> +	int i;
> +
> +	for (i =3D 0; i < 5; i++) {
> +		preempt_disable();
> +		dt[i] =3D ktime_get();
> +		cycles[i] =3D -ENGINE_READ_FW(engine, RING_TIMESTAMP);
> +
> +		udelay(1000);
> +
> +		dt[i] =3D ktime_sub(ktime_get(), dt[i]);
> +		cycles[i] +=3D ENGINE_READ_FW(engine, RING_TIMESTAMP);
> +		preempt_enable();
> +	}
> +
> +	/* Use the median of both cycle/dt; close enough */
> +	sort(cycles, 5, sizeof(*cycles), cmp_u32, NULL);
> +	*out_cycles =3D (cycles[1] + 2 * cycles[2] + cycles[3]) / 4;
> +
> +	sort(dt, 5, sizeof(*dt), cmp_u64, NULL);
> +	*out_dt =3D div_u64(dt[1] + 2 * dt[2] + dt[3], 4);
> +}
> +
> +static int live_gt_clocks(void *arg)
> +{
> +	struct intel_gt *gt =3D arg;
> +	struct intel_engine_cs *engine;
> +	enum intel_engine_id id;
> +	int err =3D 0;
> +
> +	if (!RUNTIME_INFO(gt->i915)->cs_timestamp_frequency_hz) { /* unknown */
> +		pr_info("CS_TIMESTAMP frequency unknown\n");
> +		return 0;
> +	}
> +
> +	if (INTEL_GEN(gt->i915) < 4) /* Any CS_TIMESTAMP? */
> +		return 0;
> +
> +	intel_gt_pm_get(gt);
> +	intel_uncore_forcewake_get(gt->uncore, FORCEWAKE_ALL);
> +
> +	for_each_engine(engine, gt, id) {
> +		u32 cycles;
> +		u32 expected;
> +		u64 time;
> +		u64 dt;
> +
> +		if (INTEL_GEN(engine->i915) < 7 && engine->id !=3D RCS0)
> +			continue;
> +
> +		measure_clocks(engine, &cycles, &dt);
> +
> +		time =3D i915_cs_timestamp_ticks_to_ns(engine->i915, cycles);
> +		expected =3D i915_cs_timestamp_ns_to_ticks(engine->i915, dt);
> +
> +		pr_info("%s: TIMESTAMP %d cycles [%lldns] in %lldns [%d cycles], using=
 CS clock frequency of %uKHz\n",
> +			engine->name, cycles, time, dt, expected,
> +			RUNTIME_INFO(engine->i915)->cs_timestamp_frequency_hz / 1000);
> +
> +		if (9 * time < 8 * dt || 8 * time > 9 * dt) {
> +			pr_err("%s: CS ticks did not match walltime!\n",
> +			       engine->name);
> +			err =3D -EINVAL;
> +			break;
> +		}
> +
> +		if (9 * expected < 8 * cycles || 8 * expected > 9 * cycles) {
> +			pr_err("%s: walltime did not match CS ticks!\n",
> +			       engine->name);
> +			err =3D -EINVAL;
> +			break;
> +		}
> +	}
> +
> +	intel_uncore_forcewake_put(gt->uncore, FORCEWAKE_ALL);
> +	intel_gt_pm_put(gt);
> +
> +	return err;
> +}
> +
>  static int live_gt_resume(void *arg)
>  {
>  	struct intel_gt *gt =3D arg;
> @@ -52,6 +164,7 @@ static int live_gt_resume(void *arg)
>  int intel_gt_pm_live_selftests(struct drm_i915_private *i915)
>  {
>  	static const struct i915_subtest tests[] =3D {
> +		SUBTEST(live_gt_clocks),
>  		SUBTEST(live_rc6_manual),
>  		SUBTEST(live_rps_clock_interval),
>  		SUBTEST(live_rps_control),
> -- =

> 2.20.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
