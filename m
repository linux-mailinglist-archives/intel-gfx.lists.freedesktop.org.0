Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DCC45B73DC
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Sep 2022 17:19:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14BD710E767;
	Tue, 13 Sep 2022 15:19:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 388E810E767
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Sep 2022 15:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663082362; x=1694618362;
 h=date:message-id:from:to:cc:subject:in-reply-to:
 references:mime-version;
 bh=6Y3nDi5DgMaMUQC2PDNw7V63Z6KlifjTcWOrJ+wPT4g=;
 b=m3MXjgj0FyRyV58ZmTuskjXYnSaas585Vmpojk7tQkB5vc84VOGnCAZl
 zUap1KBpknRHmkltHIbnREgz5HKnjMxdtWfZbaX7hYtMlQxyiWgQQ/mv7
 RfHUSgOfb+d1+dsNsRUONrLCGq/Af2cp5eyBdlIQ/DvVfJjDA31m8Qc78
 R4ztVMftYUPdsPDxQmw+QGpOyDIO/d8SmJRfUBN96yis3MfZG7nqvZ41l
 tEM4Trg9HNHZyI56C3nXKGYQcb7wZGjhQM4jnTXaQcXEZZIdi3GtrPSmY
 xIW8nsRsoxxJ3cbcNv7GQiCe/boxW2VmGHt04DzojjL1eMHJg/hJiXYO9 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10469"; a="362114094"
X-IronPort-AV: E=Sophos;i="5.93,313,1654585200"; d="scan'208";a="362114094"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2022 08:19:21 -0700
X-IronPort-AV: E=Sophos;i="5.93,313,1654585200"; d="scan'208";a="705583363"
Received: from epryes-mobl3.amr.corp.intel.com (HELO adixit-arch.intel.com)
 ([10.212.210.47])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2022 08:19:21 -0700
Date: Tue, 13 Sep 2022 08:19:15 -0700
Message-ID: <878rmn5mks.wl-ashutosh.dixit@intel.com>
From: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>
In-Reply-To: <CY5PR11MB62114DF624728E35804635D495479@CY5PR11MB6211.namprd11.prod.outlook.com>
References: <20220825132118.784407-1-badal.nilawar@intel.com>	<20220825132118.784407-3-badal.nilawar@intel.com>	<CY5PR11MB62112A756C0464129B94C5BE95449@CY5PR11MB6211.namprd11.prod.outlook.com>	<87edwg5z1b.wl-ashutosh.dixit@intel.com>	<CY5PR11MB62114DF624728E35804635D495479@CY5PR11MB6211.namprd11.prod.outlook.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM-LB/1.14.9 (=?ISO-8859-4?Q?Goj=F2?=) APEL-LB/10.8 EasyPG/1.0.0
 Emacs/28.1 (x86_64-pc-linux-gnu) MULE/6.0 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [Intel-gfx] [PATCH 2/7] drm/i915/hwmon: Add HWMON current
 voltage support
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
Cc: "linux-hwmon@vger.kernel.org" <linux-hwmon@vger.kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 13 Sep 2022 01:11:57 -0700, Gupta, Anshuman wrote:
>

Hi Anshuman,

> > -----Original Message-----
> > From: Dixit, Ashutosh <ashutosh.dixit@intel.com>
> > Sent: Monday, September 12, 2022 10:08 PM
> > To: Gupta, Anshuman <anshuman.gupta@intel.com>
> > Cc: Nilawar, Badal <badal.nilawar@intel.com>; intel-gfx@lists.freedesktop.org;
> > Tauro, Riana <riana.tauro@intel.com>; Ewins, Jon <jon.ewins@intel.com>;
> > linux-hwmon@vger.kernel.org
> > Subject: Re: [PATCH 2/7] drm/i915/hwmon: Add HWMON current voltage
> > support
> >
> > On Mon, 12 Sep 2022 07:09:28 -0700, Gupta, Anshuman wrote:
> > >
> > > > +static int
> > > > +hwm_in_read(struct hwm_drvdata *ddat, u32 attr, long *val) {
> > > > +	struct i915_hwmon *hwmon = ddat->hwmon;
> > > > +	intel_wakeref_t wakeref;
> > > > +	u32 reg_value;
> > > > +
> > > > +	switch (attr) {
> > > > +	case hwmon_in_input:
> > >
> > > Other attributes in this series take hwmon->lock before accessing i915
> > > registers , So do we need lock here as well ?
> >
> > The lock is being taken only for RMW and for making sure energy counter
> > updates happen atomically. We are not taking the lock for just reads so IMO no
> > lock is needed here.
>
> If that is the case, then why it needs to grab a lock for rmw on
> different Register ? Like in patch 3 of this series grabs
> hwmon->howmon_lock for rmw on two different register pkg_power_sku_unit
> and pkg_rapl_limit.

I don't see this happening, where do you see it?

> One register rmw should be independent of other register here ?

Yes each register RMW is independent. In Patch 3 only hwm_power_write (not
hwm_power_read) is taking the lock for RMW on pkg_rapl_limit (lock is not
taken for pkg_power_sku_unit). So the assumption is that RMW of a single
register are not atomic and must be serialized with a lock. Reads are
considered to not need a lock.

Thanks.
--
Ashutosh


> >
> > > > +		with_intel_runtime_pm(ddat->uncore->rpm, wakeref)
> > > > +			reg_value = intel_uncore_read(ddat->uncore, hwmon-
> > > > >rg.gt_perf_status);
> > > > +		/* In units of 2.5 millivolt */
> > > > +		*val =
> > > > DIV_ROUND_CLOSEST(REG_FIELD_GET(GEN12_VOLTAGE_MASK, reg_value)
> > * 25,
> > > > 10);
> > > > +		return 0;
> > > > +	default:
> > > > +		return -EOPNOTSUPP;
> > > > +	}
> > > > +}
> >
> > Thanks.
> > --
> > Ashutosh
