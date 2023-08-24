Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A292786CDF
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 12:37:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1D3810E51A;
	Thu, 24 Aug 2023 10:37:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B83410E51A
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 10:37:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692873433; x=1724409433;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=atNwMhS9e3UUi1otGTUN9KnKZZ+AVX/R61/Wsu61qnk=;
 b=I95gX5dx1mlLey+6VKGIExNzlmnFc55MFw4kSXXywN8Vfm3iv6h7wd9m
 0cN++Wq853HfgRY3r+YnIsv5vQW9Y0lgqe6qm9dJO4tMywQQE0dE0BQ+2
 IgM1qVclQimgsgMvg9uqvaAtGTj98rAQ7bLs+iF/2h42xeqEcgATgET8U
 sUndT3ytxjb5LxLcu1rzhpB1J+lcnNaiWD5/05pq1fIi20ZBcbxcEKF8D
 r9qk2x9hUUZjS8vWYSbL8YSoO3jEcsD19uKiKDwtQYkZHkZygDlBn6hiA
 9bjzUFp2mjminxEYbpTJurs1k0XEmXbgDijQmGXdZeMEeusnKJ3nDV18e w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="359387852"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="359387852"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 03:37:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="766490479"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="766490479"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 03:37:11 -0700
Date: Thu, 24 Aug 2023 13:37:26 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Message-ID: <ZOcy5s+1adi+q1Uy@ideak-desk.fi.intel.com>
References: <20230824080517.693621-1-imre.deak@intel.com>
 <20230824080517.693621-20-imre.deak@intel.com>
 <ZOcmcL/02VeOGFbF@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZOcmcL/02VeOGFbF@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 19/22] drm/i915/dp_mst: Add missing DSC
 compression disabling
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Aug 24, 2023 at 12:44:16PM +0300, Lisovskiy, Stanislav wrote:
> On Thu, Aug 24, 2023 at 11:05:14AM +0300, Imre Deak wrote:
> > Add the missing DSC compression disabling step for MST streams,
> > similarly to how this is done for SST outputs.
> > 
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp_mst.c | 2 ++
> >  1 file changed, 2 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > index b6a717566e7c8..5eaf309f852f2 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > @@ -656,6 +656,8 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
> >  
> >  	intel_ddi_disable_transcoder_func(old_crtc_state);
> >  
> > +	intel_dsc_disable(old_crtc_state);
> > +
> 
> One thing that a bit I'm a bit concerned is that whether won't it conflict
> with that intel_ddi_post_disable hook called for the last mst stream?
> 
> I see that it also calls intel_dsc_disable, however there is !mst check first,
> however for Bigjoiner case, there is no such check.
> Wondering should we add it there?..

Right, I wondered about the same thing. However bigjoiner wouldn't be
enabled for MST streams; not sure if that's possible at all or what all
would be required to enable it. So, I just left that as-is.

> 
> >  	if (DISPLAY_VER(dev_priv) >= 9)
> >  		skl_scaler_disable(old_crtc_state);
> >  	else
> > -- 
> > 2.37.2
> > 
