Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B76A27B889
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Sep 2020 01:57:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B49346E082;
	Mon, 28 Sep 2020 23:57:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com
 [IPv6:2a00:1450:4864:20::141])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05E1A6E082
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Sep 2020 23:57:08 +0000 (UTC)
Received: by mail-lf1-x141.google.com with SMTP id q8so3357047lfb.6
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Sep 2020 16:57:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bA7QlQn2G8orOsaC4RSbAv3vrAABNkhL2BV3IL0kIUE=;
 b=kxHRJEoBqvbhSmq3jEw0PdkY0pZnNqVKTttD0JjEnppgnojtnRtbmNQVjlkijFFL17
 KFFA4Mezu9yzBjUZTry6A20l2FVV8ciolZJfx6onow9OybMzpguO9RSBArKEZm6/alsD
 ZlKPuRh5pNvS5e5+s/XGdhzFsaOLGNC0AJfVpbwMGIV75ChrcVUdwABKgmdV+5gCdiz+
 2D8X193yHKU22dYjBUOjkTt2R/Mv/de61VQ4pVnBzu3hYmeLFEE4CShHsyG9HHWaP0WM
 8ppgQ3aPYerS+ATG4vVd9gH+bpsE9juSUsyhNAOGNJmEwnyK48mhVhDfLJb3pnaeqF/K
 mJ8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bA7QlQn2G8orOsaC4RSbAv3vrAABNkhL2BV3IL0kIUE=;
 b=p0M7NTCD1c8qtP+IrxAk8gcG4lZ1RwXP29e4K+rblan63RXi7FlZppqXtrlx4eTRKy
 OXz+MLC+B4NTaojHBSUqEFVmWOl2NQNQRGlvDrLjV0N5Mq3+FSPWSfCC++YjRyDY982V
 dB6okaOSPBkNGlhDKhZwQSR+V12Q7fBojXO++6Nwd0LavI+LQZTa4EVnMrl0fU57WBRk
 RdVyRweWiioIjcjQPKO5itO3wMzXWbWe4VBJlSfNZH6/Yd7TULwXAtbMaAeYmtgioQ7r
 GkqM6m4EJT4z07I65+ltmzYQIZ4qrnjlRCEro2aLw/ZT4XO0QV3QorX3w8no0mtKLwyg
 ittg==
X-Gm-Message-State: AOAM533+SPEiwDro5utMhxwPM0VetTb6f7glzdlbbd8Ev6rNLnAnDJ7U
 FmRItHdEpWysv45/qrtXFIpY8o23j+0zZckir8k=
X-Google-Smtp-Source: ABdhPJx4xr9EmvqR+SwnKkCH6lJhNN745VUdS5+y1FJvrgCLUcqHIU3B1lditVsjaDbGFQF4YIvxGHIev6fG2iFR5q4=
X-Received: by 2002:ac2:4424:: with SMTP id w4mr196245lfl.447.1601337426248;
 Mon, 28 Sep 2020 16:57:06 -0700 (PDT)
MIME-Version: 1.0
References: <20200324201526.16571-1-chris@chris-wilson.co.uk>
 <20200324204455.2988-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200324204455.2988-1-chris@chris-wilson.co.uk>
From: Lucas De Marchi <lucas.de.marchi@gmail.com>
Date: Mon, 28 Sep 2020 16:56:54 -0700
Message-ID: <CAKi4VAKdVLhah=1U+5MTFssWP9RHFi4pzC5QzqmTRxELn70+gw@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
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
Cc: Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 24, 2020 at 1:45 PM Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Measure and compare the energy consumed, as reported by the rapl MSR,
> by the GPU while in RC0 and RC6 states. Throw an error if RC6 does not
> at least halve the energy consumption of RC0, as this more than likely
> means we failed to enter RC0 correctly.
>
> If we can't measure the energy draw with the MSR, then it will report 0
> for both measurements. Since the measurement works on all gen6+, this seems
> worth flagging as an error.

I'm confused by this statement here. MSR is a *CPU* register and you are using
it here, mixed with RC6. How is that supposed to work with, e.g., dgfx?

thanks
Lucas De Marchi

>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Cc: Andi Shyti <andi.shyti@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/selftest_rc6.c | 39 ++++++++++++++++++++++++++
>  1 file changed, 39 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/selftest_rc6.c b/drivers/gpu/drm/i915/gt/selftest_rc6.c
> index 95b165faeba7..3ac9a8925218 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_rc6.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_rc6.c
> @@ -12,6 +12,22 @@
>
>  #include "selftests/i915_random.h"
>
> +#define MCH_SECP_NRG_STTS              _MMIO(MCHBAR_MIRROR_BASE_SNB + 0x592c)
> +
> +static u64 energy_uJ(struct intel_rc6 *rc6)
> +{
> +       unsigned long long power;
> +       u32 units;
> +
> +       if (rdmsrl_safe(MSR_RAPL_POWER_UNIT, &power))
> +               return 0;
> +
> +       units = (power & 0x1f00) >> 8;
> +       power = intel_uncore_read_fw(rc6_to_uncore(rc6), MCH_SECP_NRG_STTS);
> +
> +       return (1000000 * power) >> units; /* convert to uJ */
> +}
> +
>  static u64 rc6_residency(struct intel_rc6 *rc6)
>  {
>         u64 result;
> @@ -31,7 +47,9 @@ int live_rc6_manual(void *arg)
>  {
>         struct intel_gt *gt = arg;
>         struct intel_rc6 *rc6 = &gt->rc6;
> +       u64 rc0_power, rc6_power;
>         intel_wakeref_t wakeref;
> +       ktime_t dt;
>         u64 res[2];
>         int err = 0;
>
> @@ -53,22 +71,35 @@ int live_rc6_manual(void *arg)
>         __intel_rc6_disable(rc6);
>         msleep(1); /* wakeup is not immediate, takes about 100us on icl */
>
> +       dt = ktime_get();
> +       rc0_power = energy_uJ(rc6);
>         res[0] = rc6_residency(rc6);
>         msleep(250);
>         res[1] = rc6_residency(rc6);
> +       rc0_power = div64_u64(energy_uJ(rc6) - rc0_power,
> +                             ktime_to_ns(ktime_sub(ktime_get(), dt)));
>         if ((res[1] - res[0]) >> 10) {
>                 pr_err("RC6 residency increased by %lldus while disabled for 250ms!\n",
>                        (res[1] - res[0]) >> 10);
>                 err = -EINVAL;
>                 goto out_unlock;
>         }
> +       if (!rc0_power) {
> +               pr_err("No power measured while in RC0\n");
> +               err = -EINVAL;
> +               goto out_unlock;
> +       }
>
>         /* Manually enter RC6 */
>         intel_rc6_park(rc6);
>
> +       dt = ktime_get();
> +       rc6_power = energy_uJ(rc6);
>         res[0] = rc6_residency(rc6);
>         msleep(100);
>         res[1] = rc6_residency(rc6);
> +       rc6_power = div64_u64(energy_uJ(rc6) - rc6_power,
> +                             ktime_to_ns(ktime_sub(ktime_get(), dt)));
>
>         if (res[1] == res[0]) {
>                 pr_err("Did not enter RC6! RC6_STATE=%08x, RC6_CONTROL=%08x, residency=%lld\n",
> @@ -78,6 +109,14 @@ int live_rc6_manual(void *arg)
>                 err = -EINVAL;
>         }
>
> +       pr_info("GPU consumed %llduW in RC0 and %llduW in RC6\n",
> +               rc0_power, rc6_power);
> +       if ((rc6_power >> 10) > (rc0_power >> 10) / 2) { /* compare mW */
> +               pr_err("GPU leaked energy while in RC6!\n");
> +               err = -EINVAL;
> +               goto out_unlock;
> +       }
> +
>         /* Restore what should have been the original state! */
>         intel_rc6_unpark(rc6);
>
> --
> 2.20.1
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
