Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 885EF78D320
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Aug 2023 08:06:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43C5D10E4BF;
	Wed, 30 Aug 2023 06:06:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B94910E4BE;
 Wed, 30 Aug 2023 06:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693375568; x=1724911568;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=hIxUQOiD34ot6XuxENsMGAgaiAwTy7oB+wAxyrfbHnA=;
 b=ljoWdPmMYJB0ax1QkoVk5VMSvIuXCo98ri9Dp6mYMRawU8Y0nt66GVfA
 9pXvrYk2I5yhS1n85j1zq93XfHur4nnUWvdzXyR6u4XvXNZmcYJ9XuL73
 BaaaGa2dwD1II1424HfNnsrlsWP5UMixnTkbVaN0qv4TU5v9FU9lfAgqX
 yfg0VAur4IMi4fjyxCAXZ2uKTOPGGd5MzDhr6KX/8MFIiPxvpmsNbRMsa
 N5TQAaoNT0kSu8qcu0iN4cDJn3Qgl0fYI7xlmSi+xsnijZ1/Zzfe/4S9j
 LGePq20yC1CLyOLZRZui45pqNifRY/oIPXybgszsTAG9MQVapO2qvDFWd w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10817"; a="374463013"
X-IronPort-AV: E=Sophos;i="6.02,212,1688454000"; d="scan'208";a="374463013"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2023 23:06:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10817"; a="853595595"
X-IronPort-AV: E=Sophos;i="6.02,212,1688454000"; d="scan'208";a="853595595"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga002.fm.intel.com with SMTP; 29 Aug 2023 23:06:04 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 30 Aug 2023 09:06:04 +0300
Date: Wed, 30 Aug 2023 09:06:04 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <ZO7cTDAqAPDFp5qi@intel.com>
References: <20230828062035.6906-1-vinod.govindapillai@intel.com>
 <20230828062035.6906-4-vinod.govindapillai@intel.com>
 <20230829001604.GQ6080@mdroper-desk1.amr.corp.intel.com>
 <58c721715af42c1e71f80af2bb655021a648b426.camel@intel.com>
 <20230829160428.GI1529860@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230829160428.GI1529860@mdroper-desk1.amr.corp.intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH 3/4] drm/i915/lnl: support FBC on
 any plane
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Syrjala, Ville" <ville.syrjala@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Aug 29, 2023 at 09:04:28AM -0700, Matt Roper wrote:
> On Tue, Aug 29, 2023 at 06:50:02AM -0700, Govindapillai, Vinod wrote:
> > On Mon, 2023-08-28 at 17:16 -0700, Matt Roper wrote:
> > > On Mon, Aug 28, 2023 at 09:20:34AM +0300, Vinod Govindapillai wrote:
> > > > In LNL onwards, FBC can be associated to the first three planes.
> > > 
> > > The title of this patch shouldn't say "any plane" when the reality is
> > > that only the first three support FBC (the upper two do not).
> > > 
> > > > The FBC will be enabled for first FBC capable visible plane
> > > > until the userspace can select one of these FBC capable plane
> > > > explicitly
> > > 
> > > Even if we add new Intel-specific uapi to select this explicitly, is any
> > > userspace actually going to use it?  Would it make more sense to try to
> > > come up with a heuristic to guess which plane would benefit the most and
> > > switch to that automatically without userspace needing to be involved in
> > > the decision?  For that matter, do we have a real-world use case lined
> > > up where we can see that switching FBC to a higher plane is beneficial?
> > > Even if the hardware suddenly has this capability, it isn't necessarily
> > > worth adding the extra complexity to the driver if we don't expect to
> > > get real-world benefit from it.
> > > 
> > > BTW, I'm not super familiar with all the FBC-specific details, but it
> > > feels like if we do go forward with this, the decision to select a
> > > specific plane for FBC usage should be handled more deliberately during
> > > the atomic check phase.  Right now it doesn't seem like we're really
> > > making a firm decision on which plane to use, and we're probably not
> > > handling all the cases where the register needs to be reprogrammed
> > > if/when the FBC moves from one plane to another (potentially on a
> > > per-frame basis).
> > 
> > Hi Matt,
> > 
> > Agree with the comments about the subject line and also about your suggestions about some code
> > changes, will update accordingly.
> > 
> > Yes.. the logic for how to choose a plane for FBC is still open.
> > 
> > While discussing with Uma, it was decided that we split this task into two where we first have this
> > possibility to associate FBC to first three planes and then decide on this logic to select the plane
> > for fbc after discussing with Ville. ( Jira VLK-19372 / VLK-21508)
> > 
> > In this patch, "fbc" pointer is associated with first three plane implying those three are FBC
> > capable. And because there is no selection logic there, I choose the first available fbc capable
> > plane for FBC and the rest two to have a no_fbc_reason as "fbc enabled on another plane" which will
> > prevent them from being configured for FBC.
> > 
> > Ville has done refactoring to FBC code earlier and I think the current code flow should handle
> > disable/enable/register handling etc. Ville had some comments about the approach I explained above,
> > I have asked for some clarifications
> > 
> > BR
> > Vinod
> 
> I also just noticed that there's a workaround (Wa_14019417088) that
> requires us to always bind FBC to plane 3.
> 
>         "Plane - FBC binding is fixed to Plane 3."
> 
> And it's marked as a permanent workaround for Xe2_LPD.  So it sounds
> like even though the hardware was designed to support FBC on any of the
> three planes, the reality is that we can only use it on one specific
> plane for this platform; moving it around will have to wait for the next
> platform down the road.

That w/a is a mess. Trawling the HSD confirmed my hunch that it's
"plane 3" because of Windows compositor behaviour. So for us that
is just nonsense.

And looks like we can avoid the whole mess by simply programming
FBC_CTL twice; first without the enable bit set so the plane
binding gets updated, and then again with the with enable bit
set. That is in fact documented as the "alternate w/a".

-- 
Ville Syrjälä
Intel
