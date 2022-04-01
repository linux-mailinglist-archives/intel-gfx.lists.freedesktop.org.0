Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E337B4EED88
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Apr 2022 14:55:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16C7910E242;
	Fri,  1 Apr 2022 12:55:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D312F10E242
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Apr 2022 12:55:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648817754; x=1680353754;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=+KFMvjEUavhLKXKvSBe0Bk70sm2DIyMEhSWWmW4erhg=;
 b=XgY2873w8iXYvnFl2SYCK8uNDUQ4f36JyV3LN8C8jfzdvhcgOQbXt0n1
 jSNRC1zuCARCtp5rzDJEOfxGGfjmYS3ezWEo9qQAaQUlDFHw7be/0RuKK
 KVMsSiCdTJW9I9JmDmuBTe1P+TemfybCwnUpRW5QXhxwSFv80b/ZoI6Eq
 timbRWDEZdKxMe4ilvpvA+igwMNH1Zi20oAGBKas0VT5UmHko6BA2Rju6
 86TrGPuaIFWWgD1HNaI+G/EdPGlPm33sS5SFwy4H3rR16CDRS5iqaPcdh
 Bhu9wlYJEI6Y3QHKyBo+ipyvCwKAStCGwBLSA2krbyUB7hUKy9yJNUUuh g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10303"; a="320818369"
X-IronPort-AV: E=Sophos;i="5.90,227,1643702400"; d="scan'208";a="320818369"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2022 05:55:54 -0700
X-IronPort-AV: E=Sophos;i="5.90,227,1643702400"; d="scan'208";a="567470031"
Received: from kohnenth-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.62.214])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2022 05:55:51 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>, "Dixit, Ashutosh"
 <ashutosh.dixit@intel.com>
In-Reply-To: <00a81e7f6ac14024837bcea5a9a46dbb@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220328102227.14545-1-anshuman.gupta@intel.com>
 <87v8vw8igj.wl-ashutosh.dixit@intel.com> <87czi1812s.fsf@intel.com>
 <00a81e7f6ac14024837bcea5a9a46dbb@intel.com>
Date: Fri, 01 Apr 2022 15:55:46 +0300
Message-ID: <871qyh7yjx.fsf@intel.com>
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
>> Sent: Friday, April 1, 2022 5:31 PM
>> To: Dixit, Ashutosh <ashutosh.dixit@intel.com>; Gupta, Anshuman
>> <anshuman.gupta@intel.com>
>> Cc: intel-gfx@lists.freedesktop.org; Wilson, Chris P <chris.p.wilson@intel.com>;
>> Vivi, Rodrigo <rodrigo.vivi@intel.com>
>> Subject: Re: [Intel-gfx] [PATCH] drm/i915/debugfs: Dump i915 children runtime
>> status
>> 
>> On Tue, 29 Mar 2022, "Dixit, Ashutosh" <ashutosh.dixit@intel.com> wrote:
>> > On Mon, 28 Mar 2022 03:22:27 -0700, Anshuman Gupta wrote:
>> >>
>> >> +#ifdef CONFIG_PM
>> >> +static int i915_runtime_dump_child_status(struct device *dev, void
>> >> +*data) {
>> >> +	struct seq_file *m = data;
>> >> +	const char *rpm_status;
>> >> +
>> >> +	/* Early return if runtime_pm is disabled */
>> >> +	if (dev->power.disable_depth)
>> >> +		return 0;
>> >> +
>> >> +	switch (dev->power.runtime_status) {
>> >> +	case RPM_SUSPENDED:
>> >> +		rpm_status = "suspended";
>> >> +		break;
>> >> +	case RPM_SUSPENDING:
>> >> +		rpm_status = "suspending";
>> >> +		break;
>> >> +	case RPM_RESUMING:
>> >> +		rpm_status = "resuming";
>> >> +		break;
>> >> +	case RPM_ACTIVE:
>> >> +		rpm_status = "active";
>> >> +		break;
>> >> +	default:
>> >> +		rpm_status = "unknown";
>> >> +	}
>> >> +
>> >> +	seq_printf(m, "\t%s %s: Runtime status: %s\n", dev_driver_string(dev),
>> >> +		   dev_name(dev), rpm_status);
>> >> +
>> >> +	return 0;
>> >> +}
>> >> +#endif
>> >
>> > Maybe a nit, but perhaps defining a const array is better than having
>> > a switch statement? Similar to what is done in rtpm_status_str(). The
>> > function itself is very similar to rtpm_status_str() so can probably
>> > benefit from that similarity. Can perhaps even be nearly identical to
>> > rtpm_status_str() (since that is static in the genpd (generic power
>> > domain) code).
>> >
>> > See also 2bd5306a8764 ("PM / Domains: add debugfs listing of struct
>> > generic_pm_domain-s"), though I am not sure if genpd's are applicable
>> > in our case and certainly look way out of scope for now. Thanks.
>> 
>> See also /sys/devices/i915/power/runtime_status and
>> /sys/devices/i915/power/runtime_active_kids.
>> 
>> Kinda feels like the info should be made available there?
> runtime_active_kids we are already printing by dev_priv->drm.dev->power.child_count.
> About runtime_status , we already prints usage count and pci device power state, IMO that is sufficient for debug ?
> If it is really needed , I will add dev->power.runtime_status in next revision.

My point is, the patch at hand adds runtime pm status printing that
isn't specific to drm or i915 into i915 debugfs. Why?

What is the reason we should take on the burden of maintaining this
while the right place for it might be in runtime pm code, benefiting
other drivers in addition to ours?

BR,
Jani.


> Thanks,
> Anshuman Gupta.
>
>
>
>
>> 
>> BR,
>> Jani.
>> 
>> >
>> >> +
>> >>  static int i915_runtime_pm_status(struct seq_file *m, void *unused)
>> >>  {
>> >>	struct drm_i915_private *dev_priv = node_to_i915(m->private);  @@
>> >>-500,6 +534,10 @@ static int i915_runtime_pm_status(struct seq_file
>> >>*m, void *unused)
>> >>  #ifdef CONFIG_PM
>> >>	seq_printf(m, "Usage count: %d\n",
>> >>		   atomic_read(&dev_priv->drm.dev->power.usage_count));
>> >> +	seq_printf(m, "Runtime active children: %d\n",
>> >> +		   atomic_read(&dev_priv->drm.dev->power.child_count));
>> >> +	device_for_each_child(&pdev->dev, m,
>> >> +i915_runtime_dump_child_status);
>> >> +
>> >>  #else
>> >>	seq_printf(m, "Device Power Management (CONFIG_PM) disabled\n");
>> >>  #endif
>> >> --
>> >> 2.26.2
>> >>
>> 
>> --
>> Jani Nikula, Intel Open Source Graphics Center

-- 
Jani Nikula, Intel Open Source Graphics Center
