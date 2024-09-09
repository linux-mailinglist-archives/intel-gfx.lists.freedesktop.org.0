Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79E8D972543
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2024 00:23:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 554B310E362;
	Mon,  9 Sep 2024 22:23:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="FXlv3dEl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F04AF10E33A
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Sep 2024 22:23:46 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id AA6475C011B;
 Mon,  9 Sep 2024 22:23:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 54522C4CEC6;
 Mon,  9 Sep 2024 22:23:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1725920625;
 bh=ZrYHl8+BkVQ1UebBvC4n7n352T9Glxnfg+bY4S/hFc8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FXlv3dElNSb/X9i0vcdFoo9Z7DKKV5LoExFstahfmRyhSmI73HNb6/elWl14b4GzE
 0jHPPwS6M4BRtqA9cibpqlMVnMohyPQKGxOt+cmPM/kJ6+NpxX21shFvS++Lp2l1uL
 fZL4A78I0jgvQ/F0DUDGLP2ktmpToevcCGl7olvtyD4j9FcadHNOAkW3TPRWhzxLsQ
 5vl4LQKieVsMtbVxWHdLFhXtQ9UqNuLaYvlcNTX/nR+vhQXzDyq71cJZUjt3EbljfB
 /pEQxX0q/tRoo1PpzCs6vHlVq7e8iCP46lrDAUXVIFuYMpKfo9GWhhrxVJQIakYYCI
 v7YptNJ43ZcVQ==
Date: Tue, 10 Sep 2024 00:23:41 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Raag Jadav <raag.jadav@intel.com>
Cc: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com, 
 rodrigo.vivi@intel.com, tursulin@ursulin.net, linux@roeck-us.net, 
 andi.shyti@linux.intel.com, andriy.shevchenko@linux.intel.com, 
 intel-gfx@lists.freedesktop.org, linux-hwmon@vger.kernel.org,
 anshuman.gupta@intel.com, 
 badal.nilawar@intel.com, riana.tauro@intel.com, ashutosh.dixit@intel.com, 
 karthik.poosa@intel.com
Subject: Re: [PATCH v2] drm/i915/hwmon: expose package temperature
Message-ID: <sd5g4sj6t373wu5jfdfaujh73t4uehcri4aqtu7dln4p4huyoh@sa4nivkflc47>
References: <20240906093118.3068732-1-raag.jadav@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240906093118.3068732-1-raag.jadav@intel.com>
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

Hi Raag,

...

> +static int
> +hwm_temp_read(struct hwm_drvdata *ddat, u32 attr, long *val)
> +{
> +	struct i915_hwmon *hwmon = ddat->hwmon;
> +	intel_wakeref_t wakeref;
> +	u32 reg_val;
> +
> +	switch (attr) {
> +	case hwmon_temp_input:
> +		with_intel_runtime_pm(ddat->uncore->rpm, wakeref)
> +			reg_val = intel_uncore_read(ddat->uncore, hwmon->rg.pkg_temp);
> +
> +		/* HW register value is in degrees, convert to millidegrees. */
> +		*val = REG_FIELD_GET(TEMP_MASK, reg_val) * MILLIDEGREE_PER_DEGREE;
> +		return 0;
> +	default:
> +		return -EOPNOTSUPP;
> +	}

I don't understand this love for single case switches.

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
