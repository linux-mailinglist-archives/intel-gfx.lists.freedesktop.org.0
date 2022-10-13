Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DB1B95FD8D9
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Oct 2022 14:10:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D2F710E20D;
	Thu, 13 Oct 2022 12:10:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E910210E20D
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Oct 2022 12:10:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665663013; x=1697199013;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=9A2D11rXyT4KGLtdg8veDjSwALApPh7XwfhC8um7bBc=;
 b=JiZihCj7HQcnGTC+bwjTWXWhtTK0IrYtDxvY/A3b1J0v3utDNb51ehSr
 uae7aEmSop8xrMCgrVVtFr/1luHMIq4Vf6rAEHmlvvJBCLRCIJpajR3uh
 WIAav7rjZrxBd3OQjPU1O++PzjB4ydgMByiXa9HJ54ED8OmYfXYtsQdlp
 JGQKQNyVxLHqaDLxUbYOYRRR8pB//Nq8BJXF2hLxThC7DHi4QlPARk7sI
 p3f0igXhvaJyTSG5fg9HfcP6x+vTj1z5nEtxsL3BXzekG87St0OY5uIIM
 5sFUZFG3y4591mp69/PFRL2Hk13y2uOuB2hJxcLFJh70EdFkL6sXfmMad g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10498"; a="303800551"
X-IronPort-AV: E=Sophos;i="5.95,180,1661842800"; d="scan'208";a="303800551"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2022 05:10:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10498"; a="690089707"
X-IronPort-AV: E=Sophos;i="5.95,180,1661842800"; d="scan'208";a="690089707"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga008.fm.intel.com with SMTP; 13 Oct 2022 05:10:08 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 13 Oct 2022 15:10:07 +0300
Date: Thu, 13 Oct 2022 15:10:07 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Message-ID: <Y0gAH9F1gp5AqZxx@intel.com>
References: <20221013051124.1093410-1-ankit.k.nautiyal@intel.com>
 <Y0fo2VO+NUocRJtK@intel.com>
 <d5ca90e8-2397-1473-c840-cabf736c27ce@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <d5ca90e8-2397-1473-c840-cabf736c27ce@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/hdmi: Prune Interlaced modes for
 Display >= 12
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

On Thu, Oct 13, 2022 at 05:29:39PM +0530, Nautiyal, Ankit K wrote:
> 
> On 10/13/2022 4:00 PM, Ville Syrjälä wrote:
> > On Thu, Oct 13, 2022 at 10:41:24AM +0530, Ankit Nautiyal wrote:
> >> Defeature Display Interlace support.
> >> Support for Interlace modes is removed from Gen 12 onwards.
> >> For DP we do not support interlace modes (except for very old
> >> platforms).
> > Yes we do. Specifically G4X/VLV/CHV do not support it,
> > everything else does.
> 
> You are right. I think I misread the condition for DP and came to wrong 
> conclusion.
> 
> Will need to add the condition for DP as well in that case.
> 
> Apologies for the confusion, and thanks for pointing it out.
> 
> >
> >> Pruning the interlaced modes for HDMI for Display >=12.
> >> Bspec: 50490
> > The tagging there seems borked. Only ADLS shows it as not supported.
> 
> Yes the page is getting updated it seems. The HSDES for this reads 
> affected platform as 12 and beyond.
> 
> 
> >
> >> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> >> ---
> >>   drivers/gpu/drm/i915/display/intel_hdmi.c | 11 ++++++++++-
> >>   1 file changed, 10 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> >> index 93519fb23d9d..791bfb062c49 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> >> @@ -1990,6 +1990,9 @@ intel_hdmi_mode_valid(struct drm_connector *connector,
> >>   	if (mode->flags & DRM_MODE_FLAG_DBLSCAN)
> >>   		return MODE_NO_DBLESCAN;
> >>   
> >> +	if (DISPLAY_VER(dev_priv) >= 12 && mode->flags & DRM_MODE_FLAG_INTERLACE)
> >> +		return MODE_NO_INTERLACE;
> >> +
> > These are pointless if the connector doesn't declare interlace_allowed
> > anyway.
> 
> You are right,  will drop this from mode valid then.
> 
> As an aside, I see, we do not set connector double_scan allowed, so  the 
> above condition from mode_valid can also be removed I think.

Yeah, looks like I mistakenly added those when dealing with the
Xorg doublescan mess. Probably just forgot that doublescan_allowed
was even a thing.

-- 
Ville Syrjälä
Intel
