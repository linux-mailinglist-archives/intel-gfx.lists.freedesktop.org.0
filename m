Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24BDC9735C3
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2024 12:58:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B307B10E78C;
	Tue, 10 Sep 2024 10:58:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Dnair0wS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0453010E78C
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2024 10:58:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725965916; x=1757501916;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=2vp3hZ/483ZIG9nlQ0zkgFLC8GVhRNfXJUZH+Fv506g=;
 b=Dnair0wSAAjxzwV3XUCuRuaEtizHmg5OQ3eR+7WLnKvdmXQVVyFnC5Zy
 3o+75lU6Mxf8a70vJO54dWLwsjl8x9si8ErBpSKhCx65dEPAMjX7OmGm2
 dSMOXaOesV/MuV1nfQ2RafxIKKKraRiZCTS2rr71aD97qIuWolCr5YDyZ
 8c4+hDEeEZGMs5rORfbj03oSRvUliqF6C7qm/tMJ0BKCR0asOjCxHCTSx
 0IDj91zMHky5sANOt+LWxGOdXyLR0KrF8hP9Sm0ZYyMBXG8YUzLpZJ9up
 666RST+KO5Ki05IzxuE5H5OZMrkE129zxslE8dRKmSTrADwQrtxbtvUgv Q==;
X-CSE-ConnectionGUID: pvvDc+KjQy+S/CshS44OCw==
X-CSE-MsgGUID: tWuay0XaTAW+4CdGEXe1Ow==
X-IronPort-AV: E=McAfee;i="6700,10204,11190"; a="27625190"
X-IronPort-AV: E=Sophos;i="6.10,216,1719903600"; d="scan'208";a="27625190"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 03:58:35 -0700
X-CSE-ConnectionGUID: fCpixvamRxayDv+eBQ1vSw==
X-CSE-MsgGUID: PReIQrhyTkGTXOyppFO2vA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,216,1719903600"; d="scan'208";a="67038049"
Received: from black.fi.intel.com ([10.237.72.28])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 03:58:32 -0700
Date: Tue, 10 Sep 2024 13:58:29 +0300
From: Raag Jadav <raag.jadav@intel.com>
To: "Nilawar, Badal" <badal.nilawar@intel.com>
Cc: "Gupta, Anshuman" <anshuman.gupta@intel.com>,
 Andi Shyti <andi.shyti@kernel.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>,
 "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "tursulin@ursulin.net" <tursulin@ursulin.net>,
 "linux@roeck-us.net" <linux@roeck-us.net>,
 "andi.shyti@linux.intel.com" <andi.shyti@linux.intel.com>,
 "andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "linux-hwmon@vger.kernel.org" <linux-hwmon@vger.kernel.org>,
 "Tauro, Riana" <riana.tauro@intel.com>,
 "Dixit, Ashutosh" <ashutosh.dixit@intel.com>,
 "Poosa, Karthik" <karthik.poosa@intel.com>
Subject: Re: [PATCH v2] drm/i915/hwmon: expose package temperature
Message-ID: <ZuAmVaPoDS4xH6Le@black.fi.intel.com>
References: <20240906093118.3068732-1-raag.jadav@intel.com>
 <sd5g4sj6t373wu5jfdfaujh73t4uehcri4aqtu7dln4p4huyoh@sa4nivkflc47>
 <CY5PR11MB6211D25D522F6044554B84F7959A2@CY5PR11MB6211.namprd11.prod.outlook.com>
 <6683448a-aeb4-4ab1-9520-c83f70100583@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <6683448a-aeb4-4ab1-9520-c83f70100583@intel.com>
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

On Tue, Sep 10, 2024 at 11:57:20AM +0530, Nilawar, Badal wrote:
> On 10-09-2024 10:07, Gupta, Anshuman wrote:
> > > 
> > > ...
> > > 
> > > > +static int
> > > > +hwm_temp_read(struct hwm_drvdata *ddat, u32 attr, long *val) {
> > > > +	struct i915_hwmon *hwmon = ddat->hwmon;
> > > > +	intel_wakeref_t wakeref;
> > > > +	u32 reg_val;
> > > > +
> > > > +	switch (attr) {
> > > > +	case hwmon_temp_input:
> > > > +		with_intel_runtime_pm(ddat->uncore->rpm, wakeref)
> > > > +			reg_val = intel_uncore_read(ddat->uncore, hwmon-
> > > > rg.pkg_temp);
> > > > +
> > > > +		/* HW register value is in degrees, convert to millidegrees. */
> > > > +		*val = REG_FIELD_GET(TEMP_MASK, reg_val) *
> > > MILLIDEGREE_PER_DEGREE;
> > > > +		return 0;
> > > > +	default:
> > > > +		return -EOPNOTSUPP;
> > > > +	}
> > > 
> > > I don't understand this love for single case switches.
> > IMHO this is kept to keep symmetry in this file to make it more readable.
> > Also it readable to return error using default case, which is followed in this entire file.
> I agree on this. Let’s stick to file-wide approach and ensure it is applied
> to the fan_input attribute as well.

Since fan patch is already on its way to drm-next, you can submit a fix if you wish.
Although I don't agree with it, I have no objections.

Raag
