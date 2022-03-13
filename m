Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D33414D78AE
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Mar 2022 00:09:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A9FB10E20F;
	Sun, 13 Mar 2022 23:09:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 684B189A0E;
 Sun, 13 Mar 2022 23:09:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647212955; x=1678748955;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=wOK4A6NnXR4M5u2OF7ppqfa8ZfsYhukeUUVY1Gy3G50=;
 b=jieQr8+ZHzBsT2PayI1jEzh9t+XcZvaeQSQAPvGmE4pnGkJFnNH8VXJK
 GkBED9TLlHURtPkM8KeEChQvi5Alv8OnhRm73KstDkJS5tzy8gt+QmMFy
 MGQw7vXOaJt2mlKhDCunhcrJXn2L6/uzNQAmM+OBiQhMTp3YbhiqG15t/
 lYqLEp0/cgOOFz+tDw2HGsxGWeTS3LvgA1Je8Z8WAPdCZI/jQoQpTCo8X
 zjytEpD56CE7g2XehS5x4TWNgxD3WbIRuEJrvwWMmxQmFkJ+ukA+1E5sW
 K4lFSlwpkSqgdkcH5jOMieBcMYpu/2Eqoy3+iCiWpYZX9ukag4WpJFF1A A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10285"; a="280661483"
X-IronPort-AV: E=Sophos;i="5.90,179,1643702400"; d="scan'208";a="280661483"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2022 16:09:14 -0700
X-IronPort-AV: E=Sophos;i="5.90,179,1643702400"; d="scan'208";a="556140165"
Received: from gionascu-mobl2.ger.corp.intel.com (HELO intel.com)
 ([10.251.220.31])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2022 16:09:10 -0700
Date: Mon, 14 Mar 2022 01:09:06 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <Yi55kgmiKPy6AwrQ@intel.intel>
References: <20220217144158.21555-1-andi.shyti@linux.intel.com>
 <20220217144158.21555-7-andi.shyti@linux.intel.com>
 <50361e36-d07a-a471-1c5a-03cab9745129@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <50361e36-d07a-a471-1c5a-03cab9745129@intel.com>
Subject: Re: [Intel-gfx] [PATCH v5 6/7] drm/i915/gt: Create per-tile RPS
 sysfs interfaces
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
Cc: Intel GFX <intel-gfx@lists.freedesktop.org>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 DRI Devel <dri-devel@lists.freedesktop.org>,
 Chris Wilson <chris@chris-wilson.co.uk>, Matthew Auld <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Andrzej,

[...]

> > +static ssize_t act_freq_mhz_show(struct device *dev,
> > +				 struct device_attribute *attr, char *buff)
> > +{
> > +	s64 actual_freq = sysfs_gt_attribute_r_func(dev, attr,
> > +						    __act_freq_mhz_show);
> > +
> > +	return sysfs_emit(buff, "%u\n", (u32) actual_freq);
> 
> Again, variable can be just u32.

yes

[...]

> > +static int __boost_freq_mhz_store(struct intel_gt *gt, u32 val)
> > +{
> > +	struct intel_rps *rps = &gt->rps;
> > +	bool boost = false;
> > +
> > +	/* Validate against (static) hardware limits */
> > +	val = intel_freq_opcode(rps, val);
> > +	if (val < rps->min_freq || val > rps->max_freq)
> > +		return -EINVAL;
> > +
> > +	mutex_lock(&rps->lock);
> > +	if (val != rps->boost_freq) {
> > +		rps->boost_freq = val;
> > +		boost = atomic_read(&rps->num_waiters);
> > +	}
> > +	mutex_unlock(&rps->lock);
> > +	if (boost)
> > +		schedule_work(&rps->work);
> > +
> > +	return 0;
> 
> Why not intel_rps_set_boost_frequency?
> Why copy/paste from rps_set_boost_freq?

you are right... this must be some ugly leftover. Thanks!

[...]

> > +/* For now we have a static number of RP states */
> > +static ssize_t rps_rp_mhz_show(struct device *dev,
> > +			       struct device_attribute *attr,
> > +			       char *buff)
> > +{
> > +	struct intel_gt *gt = intel_gt_sysfs_get_drvdata(dev, attr->attr.name);
> > +	struct intel_rps *rps = &gt->rps;
> > +	u32 val;
> > +
> > +	if (attr == &dev_attr_gt_RP0_freq_mhz ||
> > +	    attr == &dev_attr_rps_RP0_freq_mhz) {
> > +		val = intel_rps_get_rp0_frequency(rps);
> > +	} else if (attr == &dev_attr_gt_RP1_freq_mhz ||
> > +		   attr == &dev_attr_rps_RP1_freq_mhz) {
> > +		   val = intel_rps_get_rp1_frequency(rps);
> > +	} else if (attr == &dev_attr_gt_RPn_freq_mhz ||
> > +		   attr == &dev_attr_rps_RPn_freq_mhz) {
> > +		   val = intel_rps_get_rpn_frequency(rps);
> > +	} else {
> > +		GEM_WARN_ON(1);
> > +		return -ENODEV;
> 
> I guess this is not necessary, otherwise similar path should be in other
> helpers.

yeah... it's a bit hacky, I must agree... will split it properly.

[...]

Thanks,
Andi
