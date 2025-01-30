Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D49B9A23081
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2025 15:38:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 202EE10E11A;
	Thu, 30 Jan 2025 14:38:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n79A7Sc6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1C4410E11A;
 Thu, 30 Jan 2025 14:38:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738247908; x=1769783908;
 h=date:from:to:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=hnoeMPQJRyaUYCn8x0/BUc08QwQxw/NhyGj/5BoCorQ=;
 b=n79A7Sc69TSDLo7QGqOGZDV1OPfedZpX4EAAGqqHQ+/38GZevT22RZzF
 wDp817ph0bG7ScebjOHowa/a4MXR0cbzQQCBtGHSbPtdSj42oc+TrgYpU
 MszZK+WSS5v4RoFY+UXXN1fyCKzdOJI6haqrnESZVcj7+TNXwIhvxXYru
 cEA/VgVGuC7PLXuZGECP8PosKzTC8gQEHyJr6w5pkDAPQ4PG91OOb8v7Y
 Nlwj5Ks4R1yK9pvRwdHDmk+NuZuXBDBYvm/TMdkNd4P/5n4DL0c4aKZX1
 T16cdn3Muj8a374MtOxmA6ZvQME6J+9R71Eimes2sHxd31pgZdvkfddyD w==;
X-CSE-ConnectionGUID: BCLNdt92R+KdlNdkYjcQUQ==
X-CSE-MsgGUID: 3L8lkD8+TnqijEHys56YZQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11331"; a="42546001"
X-IronPort-AV: E=Sophos;i="6.13,245,1732608000"; d="scan'208";a="42546001"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 06:38:28 -0800
X-CSE-ConnectionGUID: PATO+qG7QUC3cgSUGhVWrg==
X-CSE-MsgGUID: cMzxDvepQ9OzdIV9EePPOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="146536009"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 06:38:26 -0800
Date: Thu, 30 Jan 2025 16:39:22 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 6/6] drm/i915/mst: use min_array() and max_array()
 instead of hand-rolling
Message-ID: <Z5uPGjP3hcIRhRPL@ideak-desk.fi.intel.com>
References: <cover.1738161945.git.jani.nikula@intel.com>
 <62a104535c01c667a99ec209c3218a13355568cf.1738161945.git.jani.nikula@intel.com>
 <Z5uOGpuKew_qiWJU@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z5uOGpuKew_qiWJU@ideak-desk.fi.intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 30, 2025 at 04:35:06PM +0200, Imre Deak wrote:
> On Wed, Jan 29, 2025 at 04:46:38PM +0200, Jani Nikula wrote:
> > Improve code clarity by using existing min_array() and max_array()
> > helpers to find the lowest and highest values in an array.
> > 
> > Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> 
> Reviewed-by: Imre Deak <imre.deak@intel.com>
> 
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp_mst.c | 13 +++----------
> >  1 file changed, 3 insertions(+), 10 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > index a4ed4f379d1e..60b003bcd1ee 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > @@ -391,7 +391,7 @@ static int mst_stream_dsc_compute_link_config(struct intel_dp *intel_dp,
> >  {
> >  	struct intel_display *display = to_intel_display(intel_dp);
> >  	struct intel_connector *connector = to_intel_connector(conn_state->connector);
> > -	int i, num_bpc;
> > +	int num_bpc;
> >  	u8 dsc_bpc[3] = {};
> >  	int min_bpp, max_bpp, sink_min_bpp, sink_max_bpp;
> >  	int min_compressed_bpp, max_compressed_bpp;
> > @@ -405,15 +405,8 @@ static int mst_stream_dsc_compute_link_config(struct intel_dp *intel_dp,
> >  	drm_dbg_kms(display->drm, "DSC Source supported min bpp %d max bpp %d\n",
> >  		    min_bpp, max_bpp);
> >  
> > -	sink_max_bpp = dsc_bpc[0] * 3;
> > -	sink_min_bpp = sink_max_bpp;
> > -
> > -	for (i = 1; i < num_bpc; i++) {
> > -		if (sink_min_bpp > dsc_bpc[i] * 3)
> > -			sink_min_bpp = dsc_bpc[i] * 3;
> > -		if (sink_max_bpp < dsc_bpc[i] * 3)
> > -			sink_max_bpp = dsc_bpc[i] * 3;
> > -	}
> > +	sink_min_bpp = min_array(dsc_bpc, num_bpc) * 3;
> > +	sink_max_bpp = max_array(dsc_bpc, num_bpc) * 3;

Does linux/minmax.h need to be included explicitly for this?

> >  
> >  	drm_dbg_kms(display->drm, "DSC Sink supported min bpp %d max bpp %d\n",
> >  		    sink_min_bpp, sink_max_bpp);
> > -- 
> > 2.39.5
> > 
