Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 530B4547098
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Jun 2022 02:46:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC62410F1F5;
	Sat, 11 Jun 2022 00:46:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02D9B10F161
 for <intel-gfx@lists.freedesktop.org>; Sat, 11 Jun 2022 00:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654908360; x=1686444360;
 h=date:message-id:from:to:cc:subject:in-reply-to:
 references:mime-version;
 bh=waRhGMgvwIzKlovnWBRUe4fFnAr/qGkemdCZggkfvYo=;
 b=Md/7irg+w+BSQxmsooz+5FQbuRSOhWVXilKKTLqUFIQkdv+qo7XzNtHA
 zLdZgYUn64nHRreBaEwNuIa9KpEB7KAbNXN5BafGyPqdCrd/24z2uF+y3
 gHy4TQYOC0siLUd6IDeGrIDbZ3cAuD8PaAwBGVu/UQLXXta5USZtkzX4L
 d21ZybrceT3rwdOHFteogrwZSt4xqP/QElh1xuqJJJ1GwNqbCeT3FThJw
 O4zl0thLRwqltoIzU6IEidGaZwGseCBWhZppe+BcSIangBSgZgKSlMksi
 qOQIXlGgAv5o4q1fUBMzrPWkehTuFBrHkpnNb0sDRDU9O7PlP5J/2zmlG Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10374"; a="278591135"
X-IronPort-AV: E=Sophos;i="5.91,292,1647327600"; d="scan'208";a="278591135"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2022 17:45:59 -0700
X-IronPort-AV: E=Sophos;i="5.91,292,1647327600"; d="scan'208";a="711159687"
Received: from adixit-mobl1.amr.corp.intel.com (HELO adixit-arch.intel.com)
 ([10.209.9.44])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2022 17:45:59 -0700
Date: Fri, 10 Jun 2022 17:45:59 -0700
Message-ID: <87a6akjad4.wl-ashutosh.dixit@intel.com>
From: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
To: Badal Nilawar <badal.nilawar@intel.com>
In-Reply-To: <87bkv0jges.wl-ashutosh.dixit@intel.com>
References: <20220523110841.1151431-1-badal.nilawar@intel.com>
 <20220523110841.1151431-4-badal.nilawar@intel.com>
 <87bkv0jges.wl-ashutosh.dixit@intel.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM-LB/1.14.9 (=?ISO-8859-4?Q?Goj=F2?=) APEL-LB/10.8 EasyPG/1.0.0
 Emacs/28.1 (x86_64-pc-linux-gnu) MULE/6.0 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/hwmon: Add HWMON current
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 10 Jun 2022 15:35:23 -0700, Dixit, Ashutosh wrote:
>
> On Mon, 23 May 2022 04:08:41 -0700, Badal Nilawar wrote:
> >
> > @@ -370,6 +386,41 @@ i915_power_write(struct i915_hwmon_drvdata *ddat, u32 attr, int chan, long val)
> >	return ret;
> >  }
> >
> > +static umode_t
> > +i915_in_is_visible(const struct i915_hwmon_drvdata *ddat, u32 attr)
> > +{
> > +	struct drm_i915_private *i915 = ddat->dd_uncore->i915;
> > +
> > +	switch (attr) {
> > +	case hwmon_in_input:
> > +		return (IS_DG1(i915) || IS_DG2(i915)) ? 0444 : 0;
> > +	default:
> > +		return 0;
> > +	}
> > +
> > +	return 0444;
>
> Don't return 0444 by default, let's just delete this line (return 0 by
> default from the switch statement).
>
> > +}
> > +
> > +static int
> > +i915_in_read(struct i915_hwmon_drvdata *ddat, u32 attr, long *val)
> > +{
> > +	struct i915_hwmon *hwmon = ddat->dd_hwmon;
> > +	intel_wakeref_t wakeref;
> > +	u32 reg_value;
> > +
> > +	switch (attr) {
> > +	case hwmon_in_input:
> > +		with_intel_runtime_pm(ddat->dd_uncore->rpm, wakeref)
> > +			reg_value = intel_uncore_read(ddat->dd_uncore, hwmon->rg.gt_perf_status);
> > +		*val = DIV_ROUND_CLOSEST(REG_FIELD_GET(GEN12_VOLTAGE_MASK, reg_value) * 25, 10);
> > +		break;
> > +	default:
> > +		return -EOPNOTSUPP;
> > +	}
> > +
> > +	return 0;
>
> Don't return 0 by default, let's just delete this line (return -EOPNOTSUPP
> by default from the switch statement).

Sorry this one is ok, or return 0 from 'case hwmon_in_input' and delete
this line.
