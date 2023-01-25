Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C6A367B2CC
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jan 2023 13:55:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0BE210E7B6;
	Wed, 25 Jan 2023 12:55:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3857C10E7B6
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Jan 2023 12:55:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674651334; x=1706187334;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=gU4pd2cx1GsQu4k5rhqs8IM8sKcLRkWyMiyRo+ZH9XY=;
 b=QA++VjgGDGvv/EWUctLfyV3oFNToD0IIgX4bQIi/YKZzKuRs1Somg0oI
 vau+ziPW+plHKLBHlDolWrV0Wx1Xvwwe7A47zzMmw6Il5i3LZw8N/l+p8
 hfZzg8qMtG4P1PUQDsGNYxdbjl8mNn6fUU233JkMqbeNmNunQXBlRAlc2
 411G5L8uvF5kXBYzXKenuHTUDzn29eZj8s3oL7djaHN5v/XocJjCrLaZk
 XuDZRR3Iydkoow7OXmZAamCSCx7mpl8k/dnWh5fPVRlswqN6e+mn/vPrN
 qKxQnHBbFv5OrSDGzivuGkHg0f/uRPOvutN6nh6+QBEYi6jh1NIcGm839 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="325222003"
X-IronPort-AV: E=Sophos;i="5.97,245,1669104000"; d="scan'208";a="325222003"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2023 04:55:33 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="770727311"
X-IronPort-AV: E=Sophos;i="5.97,245,1669104000"; d="scan'208";a="770727311"
Received: from sjuberti-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.251.210.92])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2023 04:55:25 -0800
Date: Wed, 25 Jan 2023 13:55:17 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
Message-ID: <Y9EmtfAblOP3HCrP@ashyti-mobl2.lan>
References: <20230124142212.18498-1-nirmoy.das@intel.com>
 <Y9AC7hp6JFMe+w/J@ashyti-mobl2.lan>
 <9553f978-b2f4-8cac-e456-f9e31f1fcd74@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9553f978-b2f4-8cac-e456-f9e31f1fcd74@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/xehpsdv/selftests: Flush all tiles
 on test exit
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
Cc: intel-gfx@lists.freedesktop.org, chris.p.wilson@intel.com,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Nirmoy,

> > > +	struct intel_gt *gt;
> > > +	unsigned int i;
> > > +	int ret = 0;
> > > -	cond_resched();
> > > +	for_each_gt(gt, i915, i) {
> > > +		if (intel_gt_is_wedged(gt))
> > > +			ret = -EIO;
> > I'm just wondering if it makes sense to check if the gt is
> > wedged.
> 
> Could you please expand more, what are your thoughts about this ?

if we are wedged, I do expect the wait_for_idle to fail and not
having any pending job.

But nevertheless it's not that important, it's just the way this
function is organized that makes me raise an eyebrow.

My r-b stands, still.

Andi

[...]

> > > +		cond_resched();
> > > -		GEM_TRACE("%pS timed out.\n",
> > > -			  __builtin_return_address(0));
> > > -		GEM_TRACE_DUMP();
> > > +		if (intel_gt_wait_for_idle(gt, HZ * 3) == -ETIME) {
> > > +			pr_err("%pS timed out, cancelling all further testing.\n",
> > > +			       __builtin_return_address(0));
> > > -		intel_gt_set_wedged(gt);
> > > -		ret = -EIO;
> > > +			GEM_TRACE("%pS timed out.\n",
> > > +				  __builtin_return_address(0));
> > > +			GEM_TRACE_DUMP();
> > > +
> > > +			intel_gt_set_wedged(gt);
> > > +			ret = -EIO;
> > > +		}
> > >   	}
> > >   	return ret;
> > > -- 
> > > 2.39.0
