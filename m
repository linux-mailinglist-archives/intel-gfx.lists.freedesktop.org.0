Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 00B547C602C
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Oct 2023 00:10:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03A3510E23F;
	Wed, 11 Oct 2023 22:10:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95CE010E23E
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Oct 2023 22:10:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697062215; x=1728598215;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=H0bK4mQq6kERY0ZJAkulaerXEBhWDZnu48dxngdBeqE=;
 b=iu5t9BitML3vdw6nFfP/43T44/ug8RUZvKdhOtWcoTmLTvVF/G1VrYnA
 6eE7md6eUdr+ipqw1IwMa99CjJSYSjRzxXgj1tIWBemc4De6orhP+zokZ
 bzUq/e4OFIcWB1U5kFIKu4kfM+f96Oq/fT7YC0zlyy2PQpOg6nQHS4bDf
 UeprKWOwAXEPCEUSW7tdXOZhlMxdBr7ZtEti0cL9FulV5XW524J3nZm2k
 /vp/I2YmBJwrs0S9MT83kQAx5pMi/z4O/JOsgp6SDslx1gqr9Y26ql6QW
 ivcYuFt7kfL/Eav3bSrRsFxKMV8qlI3f4b8/CDgwz8a4ZkWNrQWM0MgXx g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="451270115"
X-IronPort-AV: E=Sophos;i="6.03,217,1694761200"; d="scan'208";a="451270115"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 15:10:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="753999250"
X-IronPort-AV: E=Sophos;i="6.03,217,1694761200"; d="scan'208";a="753999250"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 15:10:13 -0700
Date: Thu, 12 Oct 2023 01:10:06 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <ZScdPmLom5xnapGD@intel.com>
References: <20230907122541.32261-1-ville.syrjala@linux.intel.com>
 <20230907122541.32261-2-ville.syrjala@linux.intel.com>
 <ZSanVLhcF8uZOu6n@intel.com> <ZSbELYuH25Rb5iHb@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZSbELYuH25Rb5iHb@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Drop redundant !modeset check
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

On Wed, Oct 11, 2023 at 06:50:05PM +0300, Ville Syrjälä wrote:
> On Wed, Oct 11, 2023 at 04:47:00PM +0300, Lisovskiy, Stanislav wrote:
> > On Thu, Sep 07, 2023 at 03:25:39PM +0300, Ville Syrjala wrote:
> > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > 
> > > Since commit 7de5b6b54630 ("drm/i915: Don't flag both full
> > > modeset and fastset at the same time")
> > > intel_crtc_needs_fastset() and intel_crtc_needs_modeset() have
> > > been mutually exclusive. Drop the redundant check.
> > > 
> > > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Let's see if the crash returns, however if it does then anyway
> > its time to change/refactor bigjoiner logic(as we suspected it
> > to be bigjoiner issue)
> 
> You must be thinking of some other patch.

Yeah right, it was about another one.
Anyways that change is ok for me.

Stan

> 
> > 
> > Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > 
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > > index 83e1bc858b9f..526f38b502be 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -6606,7 +6606,7 @@ static void intel_update_crtc(struct intel_atomic_state *state,
> > >  	 * valid pipe configuration from the BIOS we need to take care
> > >  	 * of enabling them on the CRTC's first fastset.
> > >  	 */
> > > -	if (intel_crtc_needs_fastset(new_crtc_state) && !modeset &&
> > > +	if (intel_crtc_needs_fastset(new_crtc_state) &&
> > >  	    old_crtc_state->inherited)
> > >  		intel_crtc_arm_fifo_underrun(crtc, new_crtc_state);
> > >  }
> > > -- 
> > > 2.41.0
> > > 
> 
> -- 
> Ville Syrjälä
> Intel
