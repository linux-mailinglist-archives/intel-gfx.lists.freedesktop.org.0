Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D92C44EEEE3
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Apr 2022 16:09:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4890B10E188;
	Fri,  1 Apr 2022 14:09:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BB7B10E188
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Apr 2022 14:09:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648822182; x=1680358182;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=ndfP0KOSjJn30pvr1aNJG6p+vR1svno4WH3KpUIR9CQ=;
 b=NXi2mbNNjS1RX1/+M2eLHOQeDuene7PTYtd7C1gTkf4mYhChQ4ARituI
 W/7uxq2a2daUIBiAui7jfM6BBzesoeBzH1j1gc2QIlEsSrZDVGxNX6uKx
 z1gXEKSEW1oK7KTTocH2hU9NIXF3vTikLs0gbEs77QHghUCywPO0Fi7HO
 5rH+6RFCu3s50ki7HyrhT6j0iOg2/bGuTJYiYMW354sHt5RxZECcU/3o+
 omxY3jdE5FdZ/C5vhBaxA7nCDRepmIfyRBvAyOWTf8FJ5dXPpi80tb650
 Uji8euU6y12bVHQDi1Za2TM7apn/mHANhl9gh6ZmMvP90VRkN6QxLKZzF A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10304"; a="257724558"
X-IronPort-AV: E=Sophos;i="5.90,227,1643702400"; d="scan'208";a="257724558"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2022 07:09:41 -0700
X-IronPort-AV: E=Sophos;i="5.90,227,1643702400"; d="scan'208";a="567517893"
Received: from anikolov-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.62.217])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2022 07:09:39 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>, "Dixit, Ashutosh"
 <ashutosh.dixit@intel.com>
In-Reply-To: <9c68cd03950f42b4a5a977e31d1d79f2@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220328102227.14545-1-anshuman.gupta@intel.com>
 <87v8vw8igj.wl-ashutosh.dixit@intel.com> <87czi1812s.fsf@intel.com>
 <00a81e7f6ac14024837bcea5a9a46dbb@intel.com> <871qyh7yjx.fsf@intel.com>
 <9c68cd03950f42b4a5a977e31d1d79f2@intel.com>
Date: Fri, 01 Apr 2022 17:09:36 +0300
Message-ID: <87v8vs7v4v.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/debugfs: Dump i915 children
 runtime status
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Wilson, Chris P" <chris.p.wilson@intel.com>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 01 Apr 2022, "Gupta, Anshuman" <anshuman.gupta@intel.com> wrote:
>> -----Original Message-----
>> From: Jani Nikula <jani.nikula@linux.intel.com>
>> Sent: Friday, April 1, 2022 6:26 PM
>> To: Gupta, Anshuman <anshuman.gupta@intel.com>; Dixit, Ashutosh
>> <ashutosh.dixit@intel.com>
>> Cc: intel-gfx@lists.freedesktop.org; Wilson, Chris P <chris.p.wilson@intel.com>;
>> Vivi, Rodrigo <rodrigo.vivi@intel.com>
>> Subject: RE: [Intel-gfx] [PATCH] drm/i915/debugfs: Dump i915 children runtime
>> status
>> 
>> On Fri, 01 Apr 2022, "Gupta, Anshuman" <anshuman.gupta@intel.com> wrote:
>> >> -----Original Message-----
>> >> From: Jani Nikula <jani.nikula@linux.intel.com>
>> >> Sent: Friday, April 1, 2022 5:31 PM
>> >> To: Dixit, Ashutosh <ashutosh.dixit@intel.com>; Gupta, Anshuman
>> >> <anshuman.gupta@intel.com>
>> >> Cc: intel-gfx@lists.freedesktop.org; Wilson, Chris P
>> >> <chris.p.wilson@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com>
>> >> Subject: Re: [Intel-gfx] [PATCH] drm/i915/debugfs: Dump i915 children
>> >> runtime status
>> >>
>> >> On Tue, 29 Mar 2022, "Dixit, Ashutosh" <ashutosh.dixit@intel.com> wrote:
>> >> > On Mon, 28 Mar 2022 03:22:27 -0700, Anshuman Gupta wrote:
>> >> >>
>> >> >> +#ifdef CONFIG_PM
>> >> >> +static int i915_runtime_dump_child_status(struct device *dev,
>> >> >> +void
>> >> >> +*data) {
>> >> >> +	struct seq_file *m = data;
>> >> >> +	const char *rpm_status;
>> >> >> +
>> >> >> +	/* Early return if runtime_pm is disabled */
>> >> >> +	if (dev->power.disable_depth)
>> >> >> +		return 0;
>> >> >> +
>> >> >> +	switch (dev->power.runtime_status) {
>> >> >> +	case RPM_SUSPENDED:
>> >> >> +		rpm_status = "suspended";
>> >> >> +		break;
>> >> >> +	case RPM_SUSPENDING:
>> >> >> +		rpm_status = "suspending";
>> >> >> +		break;
>> >> >> +	case RPM_RESUMING:
>> >> >> +		rpm_status = "resuming";
>> >> >> +		break;
>> >> >> +	case RPM_ACTIVE:
>> >> >> +		rpm_status = "active";
>> >> >> +		break;
>> >> >> +	default:
>> >> >> +		rpm_status = "unknown";
>> >> >> +	}
>> >> >> +
>> >> >> +	seq_printf(m, "\t%s %s: Runtime status: %s\n", dev_driver_string(dev),
>> >> >> +		   dev_name(dev), rpm_status);
>> >> >> +
>> >> >> +	return 0;
>> >> >> +}
>> >> >> +#endif
>> >> >
>> >> > Maybe a nit, but perhaps defining a const array is better than
>> >> > having a switch statement? Similar to what is done in
>> >> > rtpm_status_str(). The function itself is very similar to
>> >> > rtpm_status_str() so can probably benefit from that similarity. Can
>> >> > perhaps even be nearly identical to
>> >> > rtpm_status_str() (since that is static in the genpd (generic power
>> >> > domain) code).
>> >> >
>> >> > See also 2bd5306a8764 ("PM / Domains: add debugfs listing of struct
>> >> > generic_pm_domain-s"), though I am not sure if genpd's are
>> >> > applicable in our case and certainly look way out of scope for now. Thanks.
>> >>
>> >> See also /sys/devices/i915/power/runtime_status and
>> >> /sys/devices/i915/power/runtime_active_kids.
>> >>
>> >> Kinda feels like the info should be made available there?
>> > runtime_active_kids we are already printing by dev_priv->drm.dev-
>> >power.child_count.
>> > About runtime_status , we already prints usage count and pci device power
>> state, IMO that is sufficient for debug ?
>> > If it is really needed , I will add dev->power.runtime_status in next revision.
>> 
>> My point is, the patch at hand adds runtime pm status printing that isn't specific
>> to drm or i915 into i915 debugfs. Why?
>> 
>> What is the reason we should take on the burden of maintaining this while the
>> right place for it might be in runtime pm code, benefiting other drivers in
>> addition to ours?
> Benefit is there to debug CI runtime suspend failures , we need to know the culprit child blocking i915 runtime PM.
> runtime_active_kids just revels the count , it doesn't reveal the culprit children.

I understand. But how is that problem or the information specific to
i915? Why should this be added to i915 instead of runtime pm infra?
Surely this is not even a new problem; how do others currently figure
this information out?

So I'm not going to block this if you all think this is a good idea. But
the point is, the first solution should not be to add some i915 specific
stuff when a more generic solution might exist or be preferred.


BR,
Jani.




> Thanks,
> Anshuman.
>> 
>> BR,
>> Jani.
>> 
>> 
>> > Thanks,
>> > Anshuman Gupta.
>> >
>> >
>> >
>> >
>> >>
>> >> BR,
>> >> Jani.
>> >>
>> >> >
>> >> >> +
>> >> >>  static int i915_runtime_pm_status(struct seq_file *m, void
>> >> >>*unused)
>> >> >>  {
>> >> >>	struct drm_i915_private *dev_priv = node_to_i915(m->private);  @@
>> >> >>-500,6 +534,10 @@ static int i915_runtime_pm_status(struct seq_file
>> >> >>*m, void *unused)
>> >> >>  #ifdef CONFIG_PM
>> >> >>	seq_printf(m, "Usage count: %d\n",
>> >> >>		   atomic_read(&dev_priv->drm.dev->power.usage_count));
>> >> >> +	seq_printf(m, "Runtime active children: %d\n",
>> >> >> +		   atomic_read(&dev_priv->drm.dev->power.child_count));
>> >> >> +	device_for_each_child(&pdev->dev, m,
>> >> >> +i915_runtime_dump_child_status);
>> >> >> +
>> >> >>  #else
>> >> >>	seq_printf(m, "Device Power Management (CONFIG_PM) disabled\n");
>> >> >>  #endif
>> >> >> --
>> >> >> 2.26.2
>> >> >>
>> >>
>> >> --
>> >> Jani Nikula, Intel Open Source Graphics Center
>> 
>> --
>> Jani Nikula, Intel Open Source Graphics Center

-- 
Jani Nikula, Intel Open Source Graphics Center
