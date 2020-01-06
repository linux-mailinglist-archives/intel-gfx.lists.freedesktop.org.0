Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 587F0131648
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jan 2020 17:49:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7AE26E4A2;
	Mon,  6 Jan 2020 16:49:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A4E46E4A2
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jan 2020 16:49:04 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Jan 2020 08:49:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,403,1571727600"; d="scan'208";a="210834450"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by orsmga007.jf.intel.com with ESMTP; 06 Jan 2020 08:49:03 -0800
Date: Mon, 6 Jan 2020 08:49:03 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Message-ID: <20200106164903.GA1755221@mdroper-desk1.amr.corp.intel.com>
References: <20191231140007.31728-1-kai.vehmanen@linux.intel.com>
 <20200102182845.GB11904@intel.com>
 <alpine.DEB.2.21.2001031703180.16459@zeliteleevi>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.2001031703180.16459@zeliteleevi>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Limit audio CDCLK>=2*BCLK
 constraint back to GLK only
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 03, 2020 at 05:28:24PM +0200, Kai Vehmanen wrote:
> Hi,
> 
> On Thu, 2 Jan 2020, Rodrigo Vivi wrote:
> 
> > On Tue, Dec 31, 2019 at 04:00:07PM +0200, Kai Vehmanen wrote:
> >> Revert changes done in commit f6ec9483091f ("drm/i915: extend audio
> >> CDCLK>=2*BCLK constraint to more platforms"). Audio drivers
> [...]
> >>  		/* Force CDCLK to 2*BCLK as long as we need audio powered. */
> >> -		if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
> >> +		if (IS_GEMINILAKE(dev_priv))
> > 
> > I believe for correctness we should at least say this is for display_10 but
> > since we don't have display gen defined probably the right thing to do here
> > is to at least replace this per:
> > 
> > IS_GEN(dev_priv, 10) || IS_GEMINILAKE(dev_priv)
> 
> I checked the cdclk tables for CNL in intel_cdclk.c and minimum CDCLK
> is 168kHz, so it is similar (>BCLK and close to 2*BCLK) as ICL and 
> others and the workaround is not needed.

Agreed; GLK's minimum cdclk goes down to 79.2 mhz so it makes sense that
it needs to be handled differently than CNL (and beyond).  I.e., this
isn't a pure revert of the original patch.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

The only CI shard failure was an unrelated GEM false positive, so added
a Fixes: tag referencing the original patch and applied to dinq.  Thanks
for the patch!


Matt

> 
> I do agree this still smells funny, but basicly my naive attempt to align 
> with the spec failed in wider testing and it seems this original solution 
> to have the WA for GLK only, is the least bad option at this point.
> 
> Possible longer term solutions for this: 
>    (i) more clock configurations allowing to bump the freq without
>        a mode change on all platforms
>    (ii) avoid all HDA communication at probe time and only initialize
>   	the HDA connection when a monitor is connected 
>    (iii) guarantee min cdclk to be sufficient for HDA communication
> 
> Closing on feasibility of (i) and (iii) is going to be a longer 
> discussion.
> 
> The (ii) option would be quite a big change on audio side and might
> potentially require changes to drm_audio_component.h (and impact other
> drivers). To me, this feels wrong, the HDA bus supports discovery of
> codecs, so we should be able to use it as with any HDA codec, including
> graphics. Unless we hit deadends with (i) and (iii), I'd rather 
> not pursue this path.
> 
> Br, Kai
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
