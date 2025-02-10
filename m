Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A198A2F9AC
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2025 21:03:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A17E110E1F9;
	Mon, 10 Feb 2025 20:03:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j8Hhgd30";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1258010E1F9;
 Mon, 10 Feb 2025 20:03:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739217790; x=1770753790;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=55L2OrOQoGbBkaepfXNp0jU0y3tzlZP1YzvxYyuPTZ8=;
 b=j8Hhgd30f7urRZvtroHHo7o2KRUr+m74Brz07B8w0dXeOV/YBbDJZh4L
 p5PQh6LSemiqnt/COfOUrMODfch/kz8YVXGTHH2fISjzx/gmzKGkieTWr
 DeVOUBitU6GA1bHiH4WP8hCi8kQCBJZQ4MRjWzsW8O9Zus5KU0ZpBPYtR
 ILvovSyd/9a8lA1q3+LemwOG1c/xkbar+OnbwimCH/vLnQpl8DBZgq148
 8EWe+nN0Wf3znd1TktjI/2FAuICEWrIIKAZaiR7JEeRkpgh2H3LjuTyzj
 CEk33apmyu/07DqYx8vGXpqeNyp1oC0CXP7zdAlGJQOotwijWMk6sa6C6 Q==;
X-CSE-ConnectionGUID: kvhYMZqfTtynLvP3bFhP5Q==
X-CSE-MsgGUID: muTDygBRTm6+oFE396Ph0g==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="62291476"
X-IronPort-AV: E=Sophos;i="6.13,275,1732608000"; d="scan'208";a="62291476"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2025 12:03:09 -0800
X-CSE-ConnectionGUID: lh7DxV1DSLmy2r42eQ0t2Q==
X-CSE-MsgGUID: I1EmMSW7Tv2gjfcBUPseqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,275,1732608000"; d="scan'208";a="112515905"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 10 Feb 2025 12:02:59 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 10 Feb 2025 22:02:58 +0200
Date: Mon, 10 Feb 2025 22:02:58 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Matt Roper <matthew.d.roper@intel.com>, gustavo.sousa@intel.com
Subject: Re: [PATCH 0/3] drm/i915: Fix scanline_offset for LNL+/BMG+
Message-ID: <Z6pbch7aWutbSC8S@intel.com>
References: <20250207215406.19348-1-ville.syrjala@linux.intel.com>
 <hwau7ipfc7kfmjtosaxhdiz5cjvc3y3dborr4l36lugrfw2s75@bb4p7hjsb7wa>
 <Z6omejfSAI1NkOGj@intel.com>
 <2isgb47k5kc6rvergx7fsxlfjkfitebcqdgypz4opcvscin32z@ok2hpqxmzolk>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <2isgb47k5kc6rvergx7fsxlfjkfitebcqdgypz4opcvscin32z@ok2hpqxmzolk>
X-Patchwork-Hint: comment
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

On Mon, Feb 10, 2025 at 12:10:56PM -0600, Lucas De Marchi wrote:
> On Mon, Feb 10, 2025 at 06:16:58PM +0200, Ville Syrjälä wrote:
> >On Fri, Feb 07, 2025 at 04:41:11PM -0600, Lucas De Marchi wrote:
> >> On Fri, Feb 07, 2025 at 11:54:03PM +0200, Ville Syrjälä wrote:
> >> >From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >> >
> >> >Something has changed in the hardware on LNL/BMG because
> >> >HDMI outputs no longer have the extra scanline offset.
> >> >
> >> >I confirmed that MTL still has the old behaviour, which
> >> >is a bit weird since both MTL and BMG have display ver 14
> >> >vs. LNL is version 20. But can't argue with actual
> >> >hardware behaviour.
> >>
> >> <6>[  210.368608] xe 0000:03:00.0: [drm] Found battlemage (device ID e20b) discrete display version 14.01 stepping B0
> >> vs
> >> <6>[  412.999204] i915 0000:00:02.0: [drm] Found meteorlake (device ID 7d55) integrated display version 14.00 stepping C0
> >>
> >> So 14.01 vs 14.00. In the driver:
> >>
> >> static const struct {
> >>          u16 ver;
> >>          u16 rel;
> >>          const struct intel_display_device_info *display;
> >> } gmdid_display_map[] = {
> >>          { 14,  0, &xe_lpdp_display },
> >>          { 14,  1, &xe2_hpd_display },
> >> 	...
> >> }
> >>
> >> So maybe we need to check for the full version >= 1401 instead?
> >
> >Just another pointless detail I don't want to have to remember.
> 
> we don't need the pointless update to the driver X months/years from now
> when another platform uses the same IP. 

We have no idea if details like this have anything to do with the
IP version. And in fact we have no idea idea about that for most
details since the spec doesn't actually specify any of that.
The only thing you can really trust when reding bspec is the
platform.

You can try to work backwards by first checking basically
all the platforms, and then trying to see if there's some common
IP version among them, and no other platform has that same
IP version. But it'll still be just a guess, and based on past
experience it's probably going to break as soon as the next
random derivative platform comes along.

> >Also it's already a huge pain in the backside trying to figure out
> >what new platform has what display ip. Someone really needs to at
> >least document this properly. Or perhaps we should just put the
> >expected display ip version back into the platform definition and
> >then just double check that the version we read from the GMD thing
> >matches our expectations.
> 
> there's this indirection with gmdid_display_map and name of the IP, but
> other than that it's pretty much discoverable. From the bspec pov it's
> all in the configuration page for the platform and you don't even need
> the IP name. Example: 70821.

But you can't even filter on the IP version number, and filtering
is the only way to make any sense of anything these days. Ie. 
the only thing you can actually trust is the platform name.

Also no one wants to have to open up all those pages for most
platforms every time just to figure out which platforms have
which IP version. We should just keep that information in the
code so that you don't have to go through all that pain every
single time.

> 
> >
> >Until the hardware people get their act together and the display ip
> >version actually has some real meaning we shouldn't use it outside
> >the major version IMO.
> 
> it already does.

As I said, the spec doesn't tell us anything about what's supported
and/or broken on each IP version number. So it's all just guesswork.

> ver.rel is what we need from the gmdid here. And it's
> used on the graphics/media side as well:
> 
> 	git grep VERx100 -- drivers/gpu/drm/xe

Every time I see that crap I get super annoyed. I know which
platorm I'm working on, I don't want to have to figure out
all the different minor IP versions that it may or may not have,
or what other platforms may or may not have those as well.

Major numbers I think we can sort of use because those generally
do map fairly well to actual features (though there are tons of
exceptions to that rule all over the place as well).

-- 
Ville Syrjälä
Intel
