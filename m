Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AFCE5212F4
	for <lists+intel-gfx@lfdr.de>; Tue, 10 May 2022 12:58:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 893BF10F320;
	Tue, 10 May 2022 10:58:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1500110F3AB
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 May 2022 10:58:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652180303; x=1683716303;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=PFELCBQF7lGPBBfCsjqLNeMQXFnOSv11Md4u3ub9i1g=;
 b=jSFi9TUOv0HXZ8mKfJLnl+N0PgeyCpzLb3wjdkohvpHyBzXzDBR1opJo
 ZoMmLKattaAv00WLT6yvnnaJxqvgyb0QsNK2JtPM7OOdJm3ZnWN8wNz2U
 ZG4vYL7o1jr1LKRmqCD/HgAlxBvOTQKhZGSugssSDqnWd/XCQHIlx+KHY
 lgiQFjsNiSX8cT7d6kTAbRwGII8C8RxV3azsmy+Gm4rrW22oo0herU1mW
 pKMY+95PPkiuNk/xQtNOly83M3D4STiByNjnNNrNxVwKCYdNehCVs9Gi7
 hOApPDsKuF2RlMR1zt9BSqj8ApHv1aLN1Z5a7Qfnlfze5EotqFkW+kwio A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10342"; a="269474284"
X-IronPort-AV: E=Sophos;i="5.91,214,1647327600"; d="scan'208";a="269474284"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2022 03:58:21 -0700
X-IronPort-AV: E=Sophos;i="5.91,214,1647327600"; d="scan'208";a="593445705"
Received: from brauta-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.252.50.37])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2022 03:58:18 -0700
Date: Tue, 10 May 2022 12:58:13 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <YnpFRQx99kv1ZdfL@intel.intel>
References: <cover.1651261886.git.ashutosh.dixit@intel.com>
 <e4c5f650a41fa7955c3ddabbb32846b3fafb3134.1651261886.git.ashutosh.dixit@intel.com>
 <bdd33a4c-f0a9-1855-8c6b-c4895bbc363d@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <bdd33a4c-f0a9-1855-8c6b-c4895bbc363d@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 7/8] drm/i915/gt: Expose per-gt RPS defaults
 in sysfs
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

Hi Ashutosh,

> > +static ssize_t
> > +default_min_freq_mhz_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
> > +{
> > +	struct intel_gt *gt = kobj_to_gt(kobj->parent);
> > +
> > +	return sysfs_emit(buf, "%d\n", gt->rps_defaults.min_freq);

I guess this is %u.

> > +}
> > +
> > +static struct kobj_attribute default_min_freq_mhz =
> > +__ATTR(rps_min_freq_mhz, 0444, default_min_freq_mhz_show, NULL);
> > +
> > +static ssize_t
> > +default_max_freq_mhz_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
> > +{
> > +	struct intel_gt *gt = kobj_to_gt(kobj->parent);
> > +
> > +	return sysfs_emit(buf, "%d\n", gt->rps_defaults.max_freq);
> > +}
> > +
> > +static struct kobj_attribute default_max_freq_mhz =
> > +__ATTR(rps_max_freq_mhz, 0444, default_max_freq_mhz_show, NULL);
> > +
> > +static ssize_t
> > +default_boost_freq_mhz_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
> > +{
> > +	struct intel_gt *gt = kobj_to_gt(kobj->parent);
> > +
> > +	return sysfs_emit(buf, "%d\n", gt->rps_defaults.boost_freq);
> > +}
> > +
> > +static struct kobj_attribute default_boost_freq_mhz =
> > +__ATTR(rps_boost_freq_mhz, 0444, default_boost_freq_mhz_show, NULL);
> > +
> > +static const struct attribute * const rps_defaults_attrs[] = {
> > +	&default_min_freq_mhz.attr,
> > +	&default_max_freq_mhz.attr,
> > +	&default_boost_freq_mhz.attr,
> > +	NULL
> > +};

Do you think this in the default group of kobj_gt_type like the
gt_id?

[...]

> > +struct intel_rps_defaults {
> > +	u32 min_freq;
> > +	u32 max_freq;
> > +	u32 boost_freq;
> > +};
> > +
> >   enum intel_submission_method {
> >   	INTEL_SUBMISSION_RING,
> >   	INTEL_SUBMISSION_ELSP,
> > @@ -227,6 +233,10 @@ struct intel_gt {
> >   	/* gt/gtN sysfs */
> >   	struct kobject sysfs_gt;
> > +
> > +	/* sysfs defaults per gt */
> > +	struct intel_rps_defaults rps_defaults;

more of a matter of taste, but this looks natural to me to be in
rps rather then in the gt.

[...]

Andi
