Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73F414E7068
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Mar 2022 11:03:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B643410EAA3;
	Fri, 25 Mar 2022 10:03:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C0FD10EAA3;
 Fri, 25 Mar 2022 10:03:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648202583; x=1679738583;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=V+292LZ/K7r6szCksTuSINh+3CZlDWhGEk8lqxJMxcU=;
 b=Xu/AX5Aeo1OYGpCo49ly813y4r3O3V9/PuNf3CELOTYkm/EU4g4S87Tc
 pGrQl2ttwDhz52ynGK6SQkTmztMWYdLORHzQZk63kbkLPKndmvI+M3hYC
 G7r6aFQXqtdQSXyoLvDa/WIjQSDNUKTXCez15CREtQi6HuvggcEOwbycf
 7SweKFcZdueGGfS+OeTUAbq0q9Lrh7GkrHwAz/pVsijLVlt39Q6rLB+5r
 KvSLmaZiPuOKBin0aqiEJbH1VRUjvudVpXoaj6UP8YUdp7UDtck63mo6j
 Lg6U1v/vDbBgb3DjKZnq2Hwq+PrdGOgeM302O8XoMiQAVJE9s2xYiifiD Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10296"; a="345037462"
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="345037462"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2022 03:03:02 -0700
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="516500541"
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.72.90])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2022 03:03:00 -0700
Received: from platvala by thrakatuluk with local (Exim 4.94.2)
 (envelope-from <petri.latvala@intel.com>)
 id 1nXgmD-000834-Hc; Fri, 25 Mar 2022 12:02:37 +0200
Date: Fri, 25 Mar 2022 12:02:37 +0200
From: Petri Latvala <petri.latvala@intel.com>
To: Matthew Auld <matthew.auld@intel.com>
Message-ID: <Yj2TPQE3p16uIFLP@platvala-desk.ger.corp.intel.com>
References: <20220324142621.347452-1-matthew.auld@intel.com>
 <20220324142621.347452-4-matthew.auld@intel.com>
 <8735j75jjk.wl-ashutosh.dixit@intel.com>
 <af23ceff-4899-6bef-87e5-273419f030f8@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <af23ceff-4899-6bef-87e5-273419f030f8@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 3/4]
 tests/gem_lmem_swapping: limit lmem to 4G
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
Cc: igt-dev@lists.freedesktop.org,
 Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, CQ Tang <cq.tang@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Mar 25, 2022 at 08:40:45AM +0000, Matthew Auld wrote:
> On 24/03/2022 17:47, Dixit, Ashutosh wrote:
> > On Thu, 24 Mar 2022 07:26:20 -0700, Matthew Auld wrote:
> > > 
> > > @@ -554,6 +560,7 @@ igt_main_args("", long_options, help_str, opt_handler, NULL)
> > > 	igt_fixture {
> > > 		free(regions);
> > > 		close(i915);
> > > +		igt_i915_driver_unload();
> > 
> > I thought we'd reload the module with default params here but when the next
> > test runs the module gets loaded automatically so maybe this is ok?
> 
> Yeah, that at least matches my understanding. Adding Petri in case he has
> some comments here.

Yes, the convention is to either leave the module loaded with
defaults, or leave it unloaded. If the next test happens to be one
that wants to load the module with different params, we save some
time.

If loading the module again doesn't work we should see some fireworks
in CI results elsewhere anyway. Due to module loading problems we used
to limit them to known places (reloading tests, selftests, ...) so we
might need to revisit this topic later. But no need to FUD it at this
time.



-- 
Petri Latvala
