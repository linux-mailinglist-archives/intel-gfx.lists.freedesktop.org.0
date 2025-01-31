Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB97AA23B83
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2025 10:38:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4914A10EA5E;
	Fri, 31 Jan 2025 09:38:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hK4ozaXQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 324B310EA5E;
 Fri, 31 Jan 2025 09:38:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738316310; x=1769852310;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=SIiMNX5tcf/DlY2A3+YLvlgNW7PDsYyFCBYM4459nJc=;
 b=hK4ozaXQf+Jk7lkLrcNLLP/MUqz1NY+LVNR7soeH455dMGq4y3ByDKEe
 eAUwt5/8gkvcVTa1fBB1NUodZjAD2IELUVUXZAKR67QNJ5LRYynXWuGVi
 /p8pGZKSmBP4lKbTLOykzv+Lb3iikW1+CiDJ+V4TL1phWvqzEj2tb++RM
 a+p/QlQAJCr5+qfl1G4KTasL9CFB/y/p5HpU3Ux0YThyu07faoEZe4FQH
 OLGwmM+DeXTsIBAmR3BpAXpGn3A0j+vWPYwyZkmu7cV58gxfmzRrHiAnm
 xYf091OBtkc3io5tQ08ZCPjv3TL4HPHq2cbfNf1PYGMYIUfCw7l2U1SSh Q==;
X-CSE-ConnectionGUID: 7pgkApRySE+PK/HPbYOy9g==
X-CSE-MsgGUID: 9/5p12QkR1u9rWP5foBXvw==
X-IronPort-AV: E=McAfee;i="6700,10204,11331"; a="64245538"
X-IronPort-AV: E=Sophos;i="6.13,248,1732608000"; d="scan'208";a="64245538"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 01:38:29 -0800
X-CSE-ConnectionGUID: 3I0UaPjbRui7T8iq3cOFnA==
X-CSE-MsgGUID: 1+XhVHn0SNqxmASzrnR4LQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,248,1732608000"; d="scan'208";a="109425009"
Received: from black.fi.intel.com ([10.237.72.28])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 01:38:28 -0800
Date: Fri, 31 Jan 2025 11:38:25 +0200
From: Raag Jadav <raag.jadav@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: imre.deak@intel.com, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 6/6] drm/i915/mst: use min_array() and max_array()
 instead of hand-rolling
Message-ID: <Z5yaEdmcExJ8T1Co@black.fi.intel.com>
References: <cover.1738161945.git.jani.nikula@intel.com>
 <62a104535c01c667a99ec209c3218a13355568cf.1738161945.git.jani.nikula@intel.com>
 <Z5uOGpuKew_qiWJU@ideak-desk.fi.intel.com>
 <Z5uPGjP3hcIRhRPL@ideak-desk.fi.intel.com>
 <87zfj7731l.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87zfj7731l.fsf@intel.com>
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

On Fri, Jan 31, 2025 at 11:20:22AM +0200, Jani Nikula wrote:
> On Thu, 30 Jan 2025, Imre Deak <imre.deak@intel.com> wrote:
> > On Thu, Jan 30, 2025 at 04:35:06PM +0200, Imre Deak wrote:
> >> On Wed, Jan 29, 2025 at 04:46:38PM +0200, Jani Nikula wrote:
> >> > Improve code clarity by using existing min_array() and max_array()
> >> > helpers to find the lowest and highest values in an array.
> >> > 
> >> > Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> >> 
> >> Reviewed-by: Imre Deak <imre.deak@intel.com>
> >> 
> >> > ---
> >> >  drivers/gpu/drm/i915/display/intel_dp_mst.c | 13 +++----------
> >> >  1 file changed, 3 insertions(+), 10 deletions(-)
> >> > 
> >> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> >> > index a4ed4f379d1e..60b003bcd1ee 100644
> >> > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> >> > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> >> > @@ -391,7 +391,7 @@ static int mst_stream_dsc_compute_link_config(struct intel_dp *intel_dp,
> >> >  {
> >> >  	struct intel_display *display = to_intel_display(intel_dp);
> >> >  	struct intel_connector *connector = to_intel_connector(conn_state->connector);
> >> > -	int i, num_bpc;
> >> > +	int num_bpc;
> >> >  	u8 dsc_bpc[3] = {};
> >> >  	int min_bpp, max_bpp, sink_min_bpp, sink_max_bpp;
> >> >  	int min_compressed_bpp, max_compressed_bpp;
> >> > @@ -405,15 +405,8 @@ static int mst_stream_dsc_compute_link_config(struct intel_dp *intel_dp,
> >> >  	drm_dbg_kms(display->drm, "DSC Source supported min bpp %d max bpp %d\n",
> >> >  		    min_bpp, max_bpp);
> >> >  
> >> > -	sink_max_bpp = dsc_bpc[0] * 3;
> >> > -	sink_min_bpp = sink_max_bpp;
> >> > -
> >> > -	for (i = 1; i < num_bpc; i++) {
> >> > -		if (sink_min_bpp > dsc_bpc[i] * 3)
> >> > -			sink_min_bpp = dsc_bpc[i] * 3;
> >> > -		if (sink_max_bpp < dsc_bpc[i] * 3)
> >> > -			sink_max_bpp = dsc_bpc[i] * 3;
> >> > -	}
> >> > +	sink_min_bpp = min_array(dsc_bpc, num_bpc) * 3;
> >> > +	sink_max_bpp = max_array(dsc_bpc, num_bpc) * 3;
> >
> > Does linux/minmax.h need to be included explicitly for this?
> 
> It's included from kernel.h, so I figured not.

Side note: There've been a few discussions[1] around why relying on kernel.h
is not best of the ideas (just for future reference).

[1] https://lore.kernel.org/r/20230817143352.132583-2-lucas.segarra.fernandez@intel.com/

Raag
