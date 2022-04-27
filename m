Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F255511663
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Apr 2022 13:45:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EC2810F1C8;
	Wed, 27 Apr 2022 11:45:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2B6D10F1C8
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Apr 2022 11:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651059908; x=1682595908;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=ZpxN64aIG4GD58jnpNob/ikSHkIRgi6NC/VDfn5kQ3I=;
 b=aZFfpDTpnkfnFpfirb2Qx1a8VUI4VDolaQdf0ErJ2WGEzlkYp6LXU+Gi
 R30XI54hIVtCzaryJDjmdkSzF04bUkAC4wBeXICSue9gTnCVZlmxWfnOa
 SUR84lZ/aNQH+SVZngn31QhwS8mDY2HcUSw26ZhTqbT9RSrI91nwUy87j
 RDBB44KwWysE2h5GeGaHDA4gQ5WG36LdLhWNvj01bTQXL5/d+T51k4/+v
 VQOfhrC72FwQpRW4GHmNISse7iztU6RoHfrEIVweKjN+zPtUelXadotkB
 YsG3XK954Uv77ewpdVMNlz/zqU1BiBV+NrvtfCAJO3iCh4+Nyniy+hwA0 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10329"; a="253282250"
X-IronPort-AV: E=Sophos;i="5.90,292,1643702400"; d="scan'208";a="253282250"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2022 04:45:08 -0700
X-IronPort-AV: E=Sophos;i="5.90,292,1643702400"; d="scan'208";a="580547752"
Received: from brutrata-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.252.33.100])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2022 04:45:06 -0700
Date: Wed, 27 Apr 2022 13:45:03 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <Ymksv99YhO9yz/Dw@intel.intel>
References: <cover.1650435571.git.ashutosh.dixit@intel.com>
 <9ed5af1177ad08c7c2d9c5d9b32ab0154dbd950f.1650435571.git.ashutosh.dixit@intel.com>
 <YmXPo2vpPS6rXGV6@intel.intel>
 <87o80n61ft.wl-ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87o80n61ft.wl-ashutosh.dixit@intel.com>
Subject: Re: [Intel-gfx] [PATCH 7/9] drm/i915/gt: Fix memory leaks in per-gt
 sysfs
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

> > > -static struct kobj_type kobj_gt_type = {
> > > -	.release = kobj_gt_release,
> > > +static struct kobj_type kobj_gtn_type = {
> >
> > what does it mean GTN? Or is it GTn? Please use just GT, gtn is
> > confusing.
> >
> > Same for all the rest of the gtn's you have used below.
> 
> I didn't like gtn either. But a sysfs_gt kobject is already part of 'struct
> drm_i915_private' so I thought I'll put sysfs_gtn (for gt/gtN) in 'struct
> intel_gt'. Otherwise browsing the code etc. gets confusing.

we can even use 'gt_n' if the 'n' is really necessary.

Andi
