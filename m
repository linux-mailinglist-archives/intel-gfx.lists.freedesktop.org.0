Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C55753C162
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jun 2022 01:56:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C509710E71D;
	Thu,  2 Jun 2022 23:55:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F05910E71D
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jun 2022 23:55:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654214152; x=1685750152;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=uK7ZfEpjXxmM5rlI5Hdmz2iASUlGKVi4bg2b4uRNMAw=;
 b=oGkoUA6p2fdVNF+EXR2+51mB6yFKzjXI4fsF0WpkHetjzqSQeXsjA0Yo
 8lYuMhI4EwQ9T4D3CPviHidCxikOQnJ9Jw+jD1MFuxQjBDzLYNISjZ82O
 UKwnwnpmTtSOdlOhq4Or6bNxlSKfhCnQuGFIP5ssZaePkYLO76h4XIFOU
 YRP+pSRnw9YH6ST2tKRte/b8WyzEYxMoxY/AN9tsmAlztK2ZK/cC4k/CC
 uimP9GfYcx14NdAUDWnHQwDi/yWe4bu4CQhggnEBRJuYUhQz+L2YB95Ic
 jTJcfNwRhRDRw/kF/PJ93bRqxgTkIT62qGEMGEQeezNAD2V4rVoH0tyFX g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10366"; a="263760468"
X-IronPort-AV: E=Sophos;i="5.91,272,1647327600"; d="scan'208";a="263760468"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2022 16:55:51 -0700
X-IronPort-AV: E=Sophos;i="5.91,272,1647327600"; d="scan'208";a="707808908"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2022 16:55:51 -0700
Date: Thu, 2 Jun 2022 16:55:50 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <YplOBuZdZTTikVxt@mdroper-desk1.amr.corp.intel.com>
References: <cover.1653591227.git.ashutosh.dixit@intel.com>
 <YpFhqItqXp6GoEzi@mdroper-desk1.amr.corp.intel.com>
 <87h7527i59.wl-ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87h7527i59.wl-ashutosh.dixit@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 0/3] drm/i915/gt: Expose per gt defaults
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

On Thu, Jun 02, 2022 at 04:36:02PM -0700, Dixit, Ashutosh wrote:
> On Fri, 27 May 2022 16:41:28 -0700, Matt Roper wrote:
> >
> > On Thu, May 26, 2022 at 12:00:42PM -0700, Ashutosh Dixit wrote:
> > > Create a gt/gtN/.defaults directory (similar to
> > > engine/<engine-name>/.defaults) to expose default parameter values for each
> > > gt in sysfs. This allows userspace to restore default parameter values
> > > after they may have changed.
> >
> > Drive-by comment:  since this is a GT-related change, I think we're
> > required to Cc: dri-devel as well.
> 
> Sure.
> 
> > And since this is new ABI, we'd need an open source userspace consumer
> > or a very clear explanation why this is an exception to the rule (e.g.,
> > if these are meant to be twiddled directly by the user rather than
> > accessed by userspace software).
> 
> This series is in response to the following oneAPI requirement ("setting to
> -1 will return the frequency to the factory value"):
> 
> https://spec.oneapi.io/level-zero/latest/sysman/api.html?highlight=zesfrequencysetrange#zesfrequencysetrange
> https://spec.oneapi.io/level-zero/latest/sysman/api.html?highlight=zesfrequencysetrange#_CPPv416zes_freq_range_t
> 
> So maybe an open-source oneAPI user mode driver will be acceptable
> userspace? So yes not merely to be twiddled just by the user.

oneapi/l0 is implemented at https://github.com/intel/compute-runtime,
right?  I think that should be fine as long as we provide a link to the
actual implementation code that's accessing the new sysfs directory.
Since the userspace code probably won't fully land until after the
kernel change lands, this would be something like a pull request
against their repo that's reviewed and fully-ready to go.


Matt

> 
> Thanks.
> --
> Ashutosh

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
