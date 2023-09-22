Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BBE007AAFEA
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Sep 2023 12:49:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18D1610E650;
	Fri, 22 Sep 2023 10:49:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D5AA10E650
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Sep 2023 10:49:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695379754; x=1726915754;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=5mO92aFoKg77iXumM0M8IzEoczeKFPP2VhcFjd42loM=;
 b=X69bwsgNVwefAelKTV4jkTWKBUdUCj4SYbnGbnWmwBPeYjPxeA+mtCT5
 JwUk9tJyOncZIIXURA56KEKnUV+bMVVlMDwW3HPY7slMcDtUfcjhMYsjA
 f/LbzLYKuOMcrBzGdCS4ODIvH65VcTIewwVGNeUnE9S3g+so0M7GojDp2
 wdzU66rpZ/Qpyp/KBMG/ktyI1aeCpjUHdcy69zz4OgDZEDF8aY0OZNr1s
 BactmxEcLnKzFv+9KQ98n8fqf7YuqZYpPV9X/P8+6BMzI88Lk+zpelwO0
 paiZY5GLDg4SWMmdVxfkuSlJ5pnR304CGywHZNGvz6vxA0v7Mh914VBN1 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="411736737"
X-IronPort-AV: E=Sophos;i="6.03,167,1694761200"; d="scan'208";a="411736737"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2023 03:49:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="817733280"
X-IronPort-AV: E=Sophos;i="6.03,167,1694761200"; d="scan'208";a="817733280"
Received: from isajal-mobl1.gar.corp.intel.com (HELO intel.com)
 ([10.214.174.7])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2023 03:49:09 -0700
Date: Fri, 22 Sep 2023 12:49:03 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <ZQ1xH5cgqQXJ8xMa@ashyti-mobl2.lan>
References: <20230918170257.8586-1-nirmoy.das@intel.com>
 <20230918170257.8586-2-nirmoy.das@intel.com>
 <87ttrprzbn.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87ttrprzbn.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/7] drm/i915: Lift runtime-pm acquire
 callbacks out of intel_wakeref.mutex
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
Cc: matthew.d.roper@intel.com, intel-gfx@lists.freedesktop.org,
 chris.p.wilson@linux.intel.com, Chris Wilson <chris.p.wilson@intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jani,

[...]

> >  	 * upon acquiring the wakeref.
> >  	 */
> >  	mutex_lock_nested(&wf->mutex, SINGLE_DEPTH_NESTING);
> > -	if (!atomic_read(&wf->count)) {
> > -		int err;
> >  
> > -		rpm_get(wf);
> > +	if (likely(!atomic_read(&wf->count))) {
> 
> Adding the likely should be a separate patch with rationale, not a
> random drive-by change. (And maybe it just should not be added at all.)

Agree, this can be made in a separate patch.

> > +		INTEL_WAKEREF_BUG_ON(wf->wakeref);
> > +		wf->wakeref = fetch_and_zero(&wakeref);
> 
> fetch_and_zero() should just die. All it does here is make things more
> confusing, not less. Please don't add new users.
> 
> The get and put helpers could probably stay, modified, to make this more
> readable.

it actually looks straight forward to me and even more
understandable. get/put are OK if there are multiple users, but
when used in such simple context it looks a bit of an overkill.

Especially when we don't need anymore the actions taken bu get
and put.

So that replacing the pointer with NULL is a natural process, no?

Andi
