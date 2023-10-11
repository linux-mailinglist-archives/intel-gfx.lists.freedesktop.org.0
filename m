Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 732127C5882
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 17:50:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAE5310E4FF;
	Wed, 11 Oct 2023 15:50:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4FC310E4FF
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Oct 2023 15:50:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697039408; x=1728575408;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=DIOl2aRGnpLxUY2RJwJjn7W7p/iP23U1FM5Pj3RG5P4=;
 b=mGckFVKBma6RE1bdBzsjCl8j8dFZFsM8IWNRKTGvH0k66OZi18l/Jmi0
 B8WTOXc8i/1aOojWZ3f/jWBNAErHDblOcnlbyYTRegqKxPrACMoDfy8gK
 PZf8294fyOTSvrEAE7eYV1BjBskloLRpZtxQ9LiOU3QrWCByJwF83mEii
 86BAwpQhwEyDtgPOjeS2fESeKXL4ZdfAONfhjidwhrXxR4ltD1u9HRzgb
 /Z7D1/7HyPU4fjeXbPMC4eSaWVU5Tk+571vEdQHADnxMEcWwzN45ITUfp
 hRh50YDt6Dl5dGJp4KoFLg508ttZtxWKILoGlBZlJzHCFAm13c2z7zOGm Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="364982161"
X-IronPort-AV: E=Sophos;i="6.03,216,1694761200"; d="scan'208";a="364982161"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 08:50:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="819770732"
X-IronPort-AV: E=Sophos;i="6.03,216,1694761200"; d="scan'208";a="819770732"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmsmga008.fm.intel.com with SMTP; 11 Oct 2023 08:50:06 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 11 Oct 2023 18:50:05 +0300
Date: Wed, 11 Oct 2023 18:50:05 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Message-ID: <ZSbELYuH25Rb5iHb@intel.com>
References: <20230907122541.32261-1-ville.syrjala@linux.intel.com>
 <20230907122541.32261-2-ville.syrjala@linux.intel.com>
 <ZSanVLhcF8uZOu6n@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZSanVLhcF8uZOu6n@intel.com>
X-Patchwork-Hint: comment
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

On Wed, Oct 11, 2023 at 04:47:00PM +0300, Lisovskiy, Stanislav wrote:
> On Thu, Sep 07, 2023 at 03:25:39PM +0300, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Since commit 7de5b6b54630 ("drm/i915: Don't flag both full
> > modeset and fastset at the same time")
> > intel_crtc_needs_fastset() and intel_crtc_needs_modeset() have
> > been mutually exclusive. Drop the redundant check.
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Let's see if the crash returns, however if it does then anyway
> its time to change/refactor bigjoiner logic(as we suspected it
> to be bigjoiner issue)

You must be thinking of some other patch.

> 
> Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> 
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index 83e1bc858b9f..526f38b502be 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -6606,7 +6606,7 @@ static void intel_update_crtc(struct intel_atomic_state *state,
> >  	 * valid pipe configuration from the BIOS we need to take care
> >  	 * of enabling them on the CRTC's first fastset.
> >  	 */
> > -	if (intel_crtc_needs_fastset(new_crtc_state) && !modeset &&
> > +	if (intel_crtc_needs_fastset(new_crtc_state) &&
> >  	    old_crtc_state->inherited)
> >  		intel_crtc_arm_fifo_underrun(crtc, new_crtc_state);
> >  }
> > -- 
> > 2.41.0
> > 

-- 
Ville Syrjälä
Intel
