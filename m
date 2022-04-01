Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADDD04EECB3
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Apr 2022 14:01:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA1ED10E0FD;
	Fri,  1 Apr 2022 12:01:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6447B10E0FD
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Apr 2022 12:01:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648814481; x=1680350481;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=PWWknLddgoqPzIHVU0cGB8TWq88LNKR++I3jFoNgubE=;
 b=aQlcCgBdAdimjMEcb5DzxvzEDt6e9E2cbUszCqdzvJZrNUWyAZyCG4B1
 l1J7Ky5R15unaFtdVCQaOT3cYckMZ4koMpfuSwrAWZ0rWNB2iYqcsR8Hk
 faMZISVk1RbXkoy2oTnm6qEEMtNwDXIk8oh6dSctXSzWdQJAIiXysNEnh
 JV18BbrZyIJj/8IgesocS95EWJVxGUISMCwBZUwrNSowf23aEClv40GH4
 DBeXC9T76JiJHwKNv6PXqXMb0y5L0lwzj1qyW6OwVSeFdBKBI9euirwmv
 J6EDkQuaGGly3LdOWCfnlmBhFlkZWvhyUwVULiBZfDS/acdj8Xlr2Kgs+ w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10303"; a="285043437"
X-IronPort-AV: E=Sophos;i="5.90,227,1643702400"; d="scan'208";a="285043437"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2022 05:01:20 -0700
X-IronPort-AV: E=Sophos;i="5.90,227,1643702400"; d="scan'208";a="567431468"
Received: from kohnenth-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.62.214])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2022 05:01:18 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>, Anshuman Gupta
 <anshuman.gupta@intel.com>
In-Reply-To: <87v8vw8igj.wl-ashutosh.dixit@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220328102227.14545-1-anshuman.gupta@intel.com>
 <87v8vw8igj.wl-ashutosh.dixit@intel.com>
Date: Fri, 01 Apr 2022 15:01:15 +0300
Message-ID: <87czi1812s.fsf@intel.com>
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris.p.wilson@intel.com>,
 rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 29 Mar 2022, "Dixit, Ashutosh" <ashutosh.dixit@intel.com> wrote:
> On Mon, 28 Mar 2022 03:22:27 -0700, Anshuman Gupta wrote:
>>
>> +#ifdef CONFIG_PM
>> +static int i915_runtime_dump_child_status(struct device *dev, void *data)
>> +{
>> +	struct seq_file *m = data;
>> +	const char *rpm_status;
>> +
>> +	/* Early return if runtime_pm is disabled */
>> +	if (dev->power.disable_depth)
>> +		return 0;
>> +
>> +	switch (dev->power.runtime_status) {
>> +	case RPM_SUSPENDED:
>> +		rpm_status = "suspended";
>> +		break;
>> +	case RPM_SUSPENDING:
>> +		rpm_status = "suspending";
>> +		break;
>> +	case RPM_RESUMING:
>> +		rpm_status = "resuming";
>> +		break;
>> +	case RPM_ACTIVE:
>> +		rpm_status = "active";
>> +		break;
>> +	default:
>> +		rpm_status = "unknown";
>> +	}
>> +
>> +	seq_printf(m, "\t%s %s: Runtime status: %s\n", dev_driver_string(dev),
>> +		   dev_name(dev), rpm_status);
>> +
>> +	return 0;
>> +}
>> +#endif
>
> Maybe a nit, but perhaps defining a const array is better than having a
> switch statement? Similar to what is done in rtpm_status_str(). The
> function itself is very similar to rtpm_status_str() so can probably
> benefit from that similarity. Can perhaps even be nearly identical to
> rtpm_status_str() (since that is static in the genpd (generic power domain)
> code).
>
> See also 2bd5306a8764 ("PM / Domains: add debugfs listing of struct
> generic_pm_domain-s"), though I am not sure if genpd's are applicable in
> our case and certainly look way out of scope for now. Thanks.

See also /sys/devices/i915/power/runtime_status and
/sys/devices/i915/power/runtime_active_kids.

Kinda feels like the info should be made available there?

BR,
Jani.

>
>> +
>>  static int i915_runtime_pm_status(struct seq_file *m, void *unused)
>>  {
>>	struct drm_i915_private *dev_priv = node_to_i915(m->private);
>> @@ -500,6 +534,10 @@ static int i915_runtime_pm_status(struct seq_file *m, void *unused)
>>  #ifdef CONFIG_PM
>>	seq_printf(m, "Usage count: %d\n",
>>		   atomic_read(&dev_priv->drm.dev->power.usage_count));
>> +	seq_printf(m, "Runtime active children: %d\n",
>> +		   atomic_read(&dev_priv->drm.dev->power.child_count));
>> +	device_for_each_child(&pdev->dev, m, i915_runtime_dump_child_status);
>> +
>>  #else
>>	seq_printf(m, "Device Power Management (CONFIG_PM) disabled\n");
>>  #endif
>> --
>> 2.26.2
>>

-- 
Jani Nikula, Intel Open Source Graphics Center
