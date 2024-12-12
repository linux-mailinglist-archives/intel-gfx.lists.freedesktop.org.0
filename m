Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 817D89EE95E
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2024 15:51:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8876310E04F;
	Thu, 12 Dec 2024 14:51:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eVklkMo/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 923E510EE19
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2024 14:51:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734015080; x=1765551080;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=6kQ2LpipVV02+QTBrztKyJwXK1+UG5HWhkFMI/Yrfyw=;
 b=eVklkMo/1lTZq+DybF0Cq7snEAWRfT7aAH3j1fyiRCSoR06DheBj2u9t
 ZlYjzAp5ozLORkupXruOq/+GX/oVs8F6o5Lg5T1kWlF2DqPH9oqijXTF2
 ozthxm1UMq1PbqS8zCu2pMZxHBM2W5ap5Js92/4ScOCwtYbRXISfIe+33
 /uUdo0rELc9lTnCfxXr1Z2L8/3EJdZfvvuckt6NQZraP/cpFnjJ7hFy9A
 j28fn1621iPDwle9nTprLvi/vzZRhHl3AX+ZvfGi/LJhEr2jUs0vUgeBM
 DrxxJGgtTahyXA82xrZpm4+Y62gL2VUszlILsz0pIam7WgipcFSfLcKVB Q==;
X-CSE-ConnectionGUID: k7kX6qyeQGSa7ziiBV12Ag==
X-CSE-MsgGUID: QPxDgiOaRKyAYcWxJdCwJw==
X-IronPort-AV: E=McAfee;i="6700,10204,11284"; a="34673995"
X-IronPort-AV: E=Sophos;i="6.12,228,1728975600"; d="scan'208";a="34673995"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2024 06:51:19 -0800
X-CSE-ConnectionGUID: Tz3RqkN1RNebeRiAvJn9Vg==
X-CSE-MsgGUID: UvQFkF8hS2qYX9tPaifu9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,228,1728975600"; d="scan'208";a="96477717"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.79])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2024 06:51:16 -0800
Date: Thu, 12 Dec 2024 15:51:12 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 intel-gfx@lists.freedesktop.org, andi.shyti@linux.intel.com,
 vidya.srinivas@intel.com
Subject: Re: [RFC PATCH] i915/gt: Reapply workarounds in case the previous
 attempt failed.
Message-ID: <Z1r4YJ0TkjIsgoz8@ashyti-mobl2.lan>
References: <aqoql4ri3vpe4larpkz4p6hxy76agq6pmn6gunt5xv56hxdbye@72ilwk7rpiu5>
 <Z1MacMC8XyyyHcqj@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Z1MacMC8XyyyHcqj@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Rodrigo,

On Fri, Dec 06, 2024 at 10:38:24AM -0500, Rodrigo Vivi wrote:
> On Thu, Dec 05, 2024 at 03:47:35PM +0000, Sebastian Brzezinka wrote:
> > `wa_verify`sporadically detects lost workaround on application; this
> > is unusual behavior since wa are applied at `intel_gt_init_hw` and
> > verified right away by `intel_gt_verify_workarounds`, and  `wa_verify`
> > doesn't fail on initialization as one might suspect would happen.
> > 
> > One approach that may be somewhat beneficial is to reapply workarounds
> > in the event of failure, or even get rid of verify on application,
> > since it's redundant to `intel_gt_verify_workarounds`.
> > 
> > This patch aims to resolve: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12668
> 
> It should be:
> 
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12668

aapart from the formatting issues this was suggested by me. We
have observed some sporadic vailures in applying the specific
workaround added by Ville (now cc'ed to the thread) in commit
0ddae025ab6c ("drm/i915: Disable compression tricks on JSL").

Because it's sporadic, we could give it one more chance and try
to re-apply it.

> > 
> > Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_workarounds.c | 11 +++++++++++
> >  1 file changed, 11 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > index 570c91878189..4ee623448223 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > @@ -1761,6 +1761,17 @@ static void wa_list_apply(const struct i915_wa_list *wal)
> >  				intel_gt_mcr_read_any_fw(gt, wa->mcr_reg) :
> >  				intel_uncore_read_fw(uncore, wa->reg);
> >  
> > +			if ((val ^ wa->set) & wa->read) { 
> > +				if (wa->is_mcr)
> > +					intel_gt_mcr_multicast_write_fw(gt, wa->mcr_reg, val);
> > +				else
> > +					intel_uncore_write_fw(uncore, wa->reg, val);
> > +			}
> 
> instead of duplicating the code you should extract that to an aux function
> to write it...

a for loop can decrease the amount of duplicated code.

> > +
> > +			val = wa->is_mcr ?
> > +				intel_gt_mcr_read_any_fw(gt, wa->mcr_reg) :
> > +				intel_uncore_read_fw(uncore, wa->reg);
> 
> and another one to read it...

this, indeed it's just reading, but we are trying to re-write. If
we wrote the unwanted value, we will keep reading the unwanted
value.

> > +
> >  			wa_verify(gt, wa, val, wal->name, "application");
> 
> However my biggest concern with this patch is the brute force solution
> and only on CONFIG_DRM_I915_DEBUG_GEM case...

this is a good point, indeed, I don't understand why the
confirmation should be within the DEBUG section.

Andi

> and as duplication because I see that the second write attempt is
> already happening above if (val != old || !wa->clr)
> 
> So, something is not quite right in here and this deserves another alternative..
> 
> 
> >  		}
> >  	}
> > -- 
> > 2.34.1
> > 
