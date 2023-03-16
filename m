Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 112B16BD19D
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 14:57:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E47A410E1EB;
	Thu, 16 Mar 2023 13:57:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDCFB10E1EB
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 13:57:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678975070; x=1710511070;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=Yp27y1e1Y0W59VyUTLUPe+Lpis2egXvtrnQvzm0UiXg=;
 b=LEllItQa1GS4UYTBvEU4zc2jIJMlaDHMFhdgolnFoVogkf1jBLpPVA01
 y/4SSj45nQ6YYQHfjAANzVTCvSf+4zDiSGIw1B6BzPT4nOzHSi5VxrcnZ
 5eG1A1l5z8TIOhwLOmCRlrf9mkcuguVdSfin6swZqfXbIxAjeqCMOB7MQ
 hZ1wr3j7Bt1FQLDgk0jKKLvbvGW0vEbuS+5in0DBAWWBZvWg6/aCir8SY
 9E81j4uqNlv8cRRIrCsgS6vayJ80aSxcMg83CFh+G1qoMuZdE4ZI4fo1d
 uTG5J4q+AmaHIcqpf5BdDr+CUBlq/17+/dnV33m5035N5zRecRvJlBJXs w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="326362775"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="326362775"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 06:38:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="673166970"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="673166970"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 06:38:14 -0700
Date: Thu, 16 Mar 2023 15:38:11 +0200
From: Imre Deak <imre.deak@intel.com>
To: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
Message-ID: <ZBMbwwJ5rW+zw88w@ideak-desk.fi.intel.com>
References: <20230314092728.3977741-1-imre.deak@intel.com>
 <3238742c-0c57-b8cf-11fe-fd4a57979049@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3238742c-0c57-b8cf-11fe-fd4a57979049@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/opregion: Fix CONFIG_ACPI=n builds
 adding missing intel_opregion_cleanup() prototype
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
Reply-To: imre.deak@intel.com
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 14, 2023 at 10:43:50AM +0100, Das, Nirmoy wrote:
> 
> On 3/14/2023 10:27 AM, Imre Deak wrote:
> > Add the missing intel_opregion_cleanup() prototype fixing CONFIG_ACPI=n
> > builds.
> > 
> > Fixes: 3e226e4a2180 ("drm/i915/opregion: Cleanup opregion after errors during driver loading")
> > Cc: Jani Nikula <jani.nikula@intel.com>
> > Reported-by: kernel test robot <lkp@intel.com>
> > Link: https://lore.kernel.org/oe-kbuild-all/202303141610.6L1VO7Gw-lkp@intel.com/
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> 
> Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>

Thanks for the review, pushed the patch to din.

> > ---
> >   drivers/gpu/drm/i915/display/intel_opregion.h | 4 ++++
> >   1 file changed, 4 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_opregion.h b/drivers/gpu/drm/i915/display/intel_opregion.h
> > index 181eb3e9abbf3..fd2ea8ef0fa20 100644
> > --- a/drivers/gpu/drm/i915/display/intel_opregion.h
> > +++ b/drivers/gpu/drm/i915/display/intel_opregion.h
> > @@ -86,6 +86,10 @@ static inline int intel_opregion_setup(struct drm_i915_private *dev_priv)
> >   	return 0;
> >   }
> > +static inline void intel_opregion_cleanup(struct drm_i915_private *i915)
> > +{
> > +}
> > +
> >   static inline void intel_opregion_register(struct drm_i915_private *dev_priv)
> >   {
> >   }
