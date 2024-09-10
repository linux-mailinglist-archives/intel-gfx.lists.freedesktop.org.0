Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DEE097378C
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2024 14:37:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8284710E7B1;
	Tue, 10 Sep 2024 12:37:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="pgpk73oT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C985310E7B1
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2024 12:37:02 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id A070B5C0401;
 Tue, 10 Sep 2024 12:36:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A990C4CEC3;
 Tue, 10 Sep 2024 12:37:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1725971821;
 bh=RTSBoiPRQXPoI3kVGe9NWujK0qMWrGrb1NR1jR9djVs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pgpk73oTE6UJZYwQgnNgmsQsqYRCD4WzQlG+9hVnRF8jdowVaZXKqVKqUh/c22Y7V
 L7qRbvz5DF8n2abNEeitgzbADBjhW/jqIc5Kj0Fe83hsU8ZY/bzMwNXKduISGZ9uJa
 Qcf08ZQWaQdTGVmLxJdjidHv8Vk1FuIziUSEe54Hs0yS1Qk+Zqmx51MqLm3l6smAN+
 w5uuhH1XY1swMuRiZ8SycxxyB0OE9YfaZpZNMgDD6Ih/UM90Xjp1QHedxL9PSMiZSF
 NN7Zk0YrNtp4/IzRsYgvDtVmF4GNcUq+tBASZDk9yU4RzVMgbGbtjIo3RTqwG962SU
 NhXN9uGiDdENQ==
Date: Tue, 10 Sep 2024 14:36:57 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Raag Jadav <raag.jadav@intel.com>
Cc: "Nilawar, Badal" <badal.nilawar@intel.com>, 
 "Gupta, Anshuman" <anshuman.gupta@intel.com>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>, 
 "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>, 
 "tursulin@ursulin.net" <tursulin@ursulin.net>,
 "linux@roeck-us.net" <linux@roeck-us.net>, 
 "andi.shyti@linux.intel.com" <andi.shyti@linux.intel.com>, 
 "andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>, 
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "linux-hwmon@vger.kernel.org" <linux-hwmon@vger.kernel.org>, 
 "Tauro, Riana" <riana.tauro@intel.com>, "Dixit,
 Ashutosh" <ashutosh.dixit@intel.com>, 
 "Poosa, Karthik" <karthik.poosa@intel.com>
Subject: Re: [PATCH v2] drm/i915/hwmon: expose package temperature
Message-ID: <oyhouriyywh3fk4y7mbiju7jpjvvtugbtjhryulfbqm4wjkfvb@lisygj6jly37>
References: <20240906093118.3068732-1-raag.jadav@intel.com>
 <sd5g4sj6t373wu5jfdfaujh73t4uehcri4aqtu7dln4p4huyoh@sa4nivkflc47>
 <CY5PR11MB6211D25D522F6044554B84F7959A2@CY5PR11MB6211.namprd11.prod.outlook.com>
 <6683448a-aeb4-4ab1-9520-c83f70100583@intel.com>
 <ZuAmVaPoDS4xH6Le@black.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZuAmVaPoDS4xH6Le@black.fi.intel.com>
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

On Tue, Sep 10, 2024 at 01:58:29PM GMT, Raag Jadav wrote:
> On Tue, Sep 10, 2024 at 11:57:20AM +0530, Nilawar, Badal wrote:
> > On 10-09-2024 10:07, Gupta, Anshuman wrote:
> > > > 
> > > > ...
> > > > 
> > > > > +static int
> > > > > +hwm_temp_read(struct hwm_drvdata *ddat, u32 attr, long *val) {
> > > > > +	struct i915_hwmon *hwmon = ddat->hwmon;
> > > > > +	intel_wakeref_t wakeref;
> > > > > +	u32 reg_val;
> > > > > +
> > > > > +	switch (attr) {
> > > > > +	case hwmon_temp_input:
> > > > > +		with_intel_runtime_pm(ddat->uncore->rpm, wakeref)
> > > > > +			reg_val = intel_uncore_read(ddat->uncore, hwmon-
> > > > > rg.pkg_temp);
> > > > > +
> > > > > +		/* HW register value is in degrees, convert to millidegrees. */
> > > > > +		*val = REG_FIELD_GET(TEMP_MASK, reg_val) *
> > > > MILLIDEGREE_PER_DEGREE;
> > > > > +		return 0;
> > > > > +	default:
> > > > > +		return -EOPNOTSUPP;
> > > > > +	}
> > > > 
> > > > I don't understand this love for single case switches.
> > > IMHO this is kept to keep symmetry in this file to make it more readable.
> > > Also it readable to return error using default case, which is followed in this entire file.
> > I agree on this. Let’s stick to file-wide approach and ensure it is applied
> > to the fan_input attribute as well.
> 
> Since fan patch is already on its way to drm-next, you can submit a fix if you wish.
> Although I don't agree with it, I have no objections.

nack! :-)

It doesn't make much sense to send a controvertial patch that
refactors good working code to other good (some would say worse)
working code without any functional change.

Thanks,
Andi
