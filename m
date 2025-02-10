Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64621A2F2F9
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2025 17:17:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E1BA10E5A6;
	Mon, 10 Feb 2025 16:17:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JJrhcAp3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48F4E10E5A6;
 Mon, 10 Feb 2025 16:17:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739204222; x=1770740222;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=qmJmcA5FF6GXFZYreYBR3otN6Xkd2MciqvjlQYtZ61Y=;
 b=JJrhcAp3ToYBMPfTA+hK2Rllv9kmOeXtFCFCZqVplaGgLQiubGdyDXV+
 jk+1YHTOQVVM/UZpGK79+MiGRjlqqwkiVDPbp+F2We7ZWlc3RqyBnhe7T
 S4V1aOuNF+O4YYd1wSiIUSR8ZvDFqKeCZMJgxwiF5nt8WB2iopSDF3MRr
 1uzzqFregoiLljvjY0w5yKNqmkYCwCLaJy0/ytHsu7RpKsn8HbZWsvIQP
 QHYIiedyuzjpxhOWDpr9Tf263srwESgkZH/X3Cqevkc6z3d2F64hLj/N/
 +7vXko7WwrqsyM2CyTI1JHjG+3waujuopmawx/9vpM6s4PtPeKGCynowz w==;
X-CSE-ConnectionGUID: x+ckg5aWRKWrUGYzj+rXPw==
X-CSE-MsgGUID: KcfSHNaBSFWU7ki5b4OEvg==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="27394826"
X-IronPort-AV: E=Sophos;i="6.13,275,1732608000"; d="scan'208";a="27394826"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2025 08:17:02 -0800
X-CSE-ConnectionGUID: ynuf2mkrSXuaUU2zGL1yRQ==
X-CSE-MsgGUID: hxUSdAbORIy8AThGcCbmbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,275,1732608000"; d="scan'208";a="112450383"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 10 Feb 2025 08:16:59 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 10 Feb 2025 18:16:58 +0200
Date: Mon, 10 Feb 2025 18:16:58 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Matt Roper <matthew.d.roper@intel.com>, gustavo.sousa@intel.com
Subject: Re: [PATCH 0/3] drm/i915: Fix scanline_offset for LNL+/BMG+
Message-ID: <Z6omejfSAI1NkOGj@intel.com>
References: <20250207215406.19348-1-ville.syrjala@linux.intel.com>
 <hwau7ipfc7kfmjtosaxhdiz5cjvc3y3dborr4l36lugrfw2s75@bb4p7hjsb7wa>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <hwau7ipfc7kfmjtosaxhdiz5cjvc3y3dborr4l36lugrfw2s75@bb4p7hjsb7wa>
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

On Fri, Feb 07, 2025 at 04:41:11PM -0600, Lucas De Marchi wrote:
> On Fri, Feb 07, 2025 at 11:54:03PM +0200, Ville Syrjälä wrote:
> >From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> >Something has changed in the hardware on LNL/BMG because
> >HDMI outputs no longer have the extra scanline offset.
> >
> >I confirmed that MTL still has the old behaviour, which
> >is a bit weird since both MTL and BMG have display ver 14
> >vs. LNL is version 20. But can't argue with actual
> >hardware behaviour.
> 
> <6>[  210.368608] xe 0000:03:00.0: [drm] Found battlemage (device ID e20b) discrete display version 14.01 stepping B0
> vs
> <6>[  412.999204] i915 0000:00:02.0: [drm] Found meteorlake (device ID 7d55) integrated display version 14.00 stepping C0
> 
> So 14.01 vs 14.00. In the driver:
> 
> static const struct {                                                            
>          u16 ver;
>          u16 rel;
>          const struct intel_display_device_info *display;
> } gmdid_display_map[] = {
>          { 14,  0, &xe_lpdp_display },
>          { 14,  1, &xe2_hpd_display },
> 	...
> }
> 
> So maybe we need to check for the full version >= 1401 instead?

Just another pointless detail I don't want to have to remember.

Also it's already a huge pain in the backside trying to figure out
what new platform has what display ip. Someone really needs to at
least document this properly. Or perhaps we should just put the
expected display ip version back into the platform definition and 
then just double check that the version we read from the GMD thing
matches our expectations.

Until the hardware people get their act together and the display ip
version actually has some real meaning we shouldn't use it outside
the major version IMO.

> 
> +Matt Roper, +Gustavo who may know the right bspec to confirm this
> change in behavior

None of this stuff is in bspec.

> 
> Lucas De Marchi
> 
> >
> >Ville Syrjälä (3):
> >  drm/i915: Fix scanline_offset for LNL+ and BMG+
> >  drm/i915: Reverse the scanline_offset if ladder
> >  drm/i915: Replace the HAS_DDI() in intel_crtc_scanline_offset() with
> >    specific platform checks
> >
> > drivers/gpu/drm/i915/display/intel_vblank.c | 13 ++++++++-----
> > 1 file changed, 8 insertions(+), 5 deletions(-)
> >
> >-- 
> >2.45.3
> >

-- 
Ville Syrjälä
Intel
