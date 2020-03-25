Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 782BB192387
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2020 09:59:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABA3B89B11;
	Wed, 25 Mar 2020 08:59:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 3.mo2.mail-out.ovh.net (3.mo2.mail-out.ovh.net [46.105.58.226])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAE3B89B11
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2020 08:59:10 +0000 (UTC)
Received: from player750.ha.ovh.net (unknown [10.110.103.169])
 by mo2.mail-out.ovh.net (Postfix) with ESMTP id DEB3B1C9A73
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2020 09:59:07 +0100 (CET)
Received: from etezian.org (213-243-141-64.bb.dnainternet.fi [213.243.141.64])
 (Authenticated sender: andi@etezian.org)
 by player750.ha.ovh.net (Postfix) with ESMTPSA id 0745610B812D5;
 Wed, 25 Mar 2020 08:58:55 +0000 (UTC)
Date: Wed, 25 Mar 2020 10:58:54 +0200
From: Andi Shyti <andi@etezian.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200325085854.GE131880@jack.zhora.eu>
References: <20200324201526.16571-1-chris@chris-wilson.co.uk>
 <20200325081056.23003-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200325081056.23003-1-chris@chris-wilson.co.uk>
X-Ovh-Tracer-Id: 2115284452484301321
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedugedrudehvddguddvfecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomheptehnughiucfuhhihthhiuceorghnughisegvthgviihirghnrdhorhhgqeenucfkpheptddrtddrtddrtddpvddufedrvdegfedrudeguddrieegnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjeehtddrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpegrnhguihesvghtvgiiihgrnhdrohhrghdprhgtphhtthhopehinhhtvghlqdhgfhigsehlihhsthhsrdhfrhgvvgguvghskhhtohhprdhorhhg
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Measure the energy
 consumed while in RC6
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Chris,

On Wed, Mar 25, 2020 at 08:10:56AM +0000, Chris Wilson wrote:
> Measure and compare the energy consumed, as reported by the rapl MSR,
> by the GPU while in RC0 and RC6 states. Throw an error if RC6 does not
> at least halve the energy consumption of RC0, as this more than likely
> means we failed to enter RC0 correctly.
> 
> If we can't measure the energy draw with the MSR, then it will report 0
> for both measurements. Since the measurement works on all gen6+, this seems
> worth flagging as an error.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Cc: Andi Shyti <andi.shyti@intel.com>

would be nice to have a revision history, given that I got quite 
some versions of this patch.

> +static u64 energy_uJ(struct intel_rc6 *rc6)
> +{
> +	unsigned long long power;
> +	u32 units;
> +
> +	if (rdmsrl_safe(MSR_RAPL_POWER_UNIT, &power))
> +		return 0;
> +
> +	units = (power & 0x1f00) >> 8;
> +
> +	if (rdmsrl_safe(MSR_PP1_ENERGY_STATUS, &power))
> +		return 0;
> +
> +	return (1000000 * power) >> units; /* convert to uJ */
> +}

shall we put this in a library?

>  	res[0] = rc6_residency(rc6);
> +	dt = ktime_get();
> +	rc0_power = energy_uJ(rc6);
>  	msleep(250);
> +	rc0_power = energy_uJ(rc6) - rc0_power;
> +	dt = ktime_sub(ktime_get(), dt);
>  	res[1] = rc6_residency(rc6);
>  	if ((res[1] - res[0]) >> 10) {
>  		pr_err("RC6 residency increased by %lldus while disabled for 250ms!\n",
> @@ -63,13 +85,23 @@ int live_rc6_manual(void *arg)
>  		goto out_unlock;
>  	}
>  
> +	rc0_power = div64_u64(NSEC_PER_SEC * rc0_power, ktime_to_ns(dt));
> +	if (!rc0_power) {

is this likely to happen?

>  	res[0] = rc6_residency(rc6);
> +	dt = ktime_get();
> +	rc6_power = energy_uJ(rc6);
>  	msleep(100);
> +	rc6_power = energy_uJ(rc6) - rc6_power;
> +	dt = ktime_sub(ktime_get(), dt);
>  	res[1] = rc6_residency(rc6);
> -
>  	if (res[1] == res[0]) {
>  		pr_err("Did not enter RC6! RC6_STATE=%08x, RC6_CONTROL=%08x, residency=%lld\n",
>  		       intel_uncore_read_fw(gt->uncore, GEN6_RC_STATE),
> @@ -78,6 +110,15 @@ int live_rc6_manual(void *arg)
>  		err = -EINVAL;
>  	}
>  
> +	rc6_power = div64_u64(NSEC_PER_SEC * rc6_power, ktime_to_ns(dt));
> +	pr_info("GPU consumed %llduW in RC0 and %llduW in RC6\n",
> +		rc0_power, rc6_power);
> +	if (2 * rc6_power > rc0_power) {
> +		pr_err("GPU leaked energy while in RC6!\n");
> +		err = -EINVAL;
> +		goto out_unlock;
> +	}

nice,

Reviewed-by: Andi Shyti <andi.shyti@intel.com>

Thanks,
Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
