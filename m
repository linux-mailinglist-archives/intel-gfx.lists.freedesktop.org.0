Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61F79A23B30
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2025 10:20:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 757F010EA3B;
	Fri, 31 Jan 2025 09:20:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WYWNTDIi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F77910E169;
 Fri, 31 Jan 2025 09:20:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738315227; x=1769851227;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=zDsLQOfdrqNSU3rovraOg4VWUVGnKTlAF7aOPzsl/Zs=;
 b=WYWNTDIiEvk6GuTLJFnEKH/ak1pyfX/1+LT/pUdIdaR6BUziRppAmUNF
 0/5TwoiFwkPaHCRcOumCNEKgLrjTWbsKy2+euYAWigAQwf7LGTMVLpfqH
 tJrbYnOQVOGmQ1eEPlLtXdV1fVttpvQzfJS/OFua5jMeIH/64tT/Lpz4b
 Z+BGC7ECUGBueo9sLZRAxnxr+pkBRTEAmTGhYPQUbnK5nNcYL5nQJZxiL
 sK8mkMfUzvi1sWe9tN7zOifpWdkNYn8kxVf2f+0TIdk7NZhfC3eGUBiYS
 j7mvNSgWdPOq04P2K90/Ytn5CxmNVtUG+WwMhA97Jux9hBKn1xu8u7BLA Q==;
X-CSE-ConnectionGUID: FfYzm+nLQJy4YlyxDp1qRA==
X-CSE-MsgGUID: sDUz5vJhSXSvBhVfQOvhnA==
X-IronPort-AV: E=McAfee;i="6700,10204,11331"; a="42632257"
X-IronPort-AV: E=Sophos;i="6.13,248,1732608000"; d="scan'208";a="42632257"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 01:20:27 -0800
X-CSE-ConnectionGUID: P98TqD6CS92g7flwHcebnQ==
X-CSE-MsgGUID: y9y3ap9AToi0LcA+s8+xXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="110033719"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.174])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 01:20:26 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: imre.deak@intel.com, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 6/6] drm/i915/mst: use min_array() and max_array()
 instead of hand-rolling
In-Reply-To: <Z5uPGjP3hcIRhRPL@ideak-desk.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1738161945.git.jani.nikula@intel.com>
 <62a104535c01c667a99ec209c3218a13355568cf.1738161945.git.jani.nikula@intel.com>
 <Z5uOGpuKew_qiWJU@ideak-desk.fi.intel.com>
 <Z5uPGjP3hcIRhRPL@ideak-desk.fi.intel.com>
Date: Fri, 31 Jan 2025 11:20:22 +0200
Message-ID: <87zfj7731l.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Thu, 30 Jan 2025, Imre Deak <imre.deak@intel.com> wrote:
> On Thu, Jan 30, 2025 at 04:35:06PM +0200, Imre Deak wrote:
>> On Wed, Jan 29, 2025 at 04:46:38PM +0200, Jani Nikula wrote:
>> > Improve code clarity by using existing min_array() and max_array()
>> > helpers to find the lowest and highest values in an array.
>> > 
>> > Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> 
>> Reviewed-by: Imre Deak <imre.deak@intel.com>
>> 
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_dp_mst.c | 13 +++----------
>> >  1 file changed, 3 insertions(+), 10 deletions(-)
>> > 
>> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> > index a4ed4f379d1e..60b003bcd1ee 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> > @@ -391,7 +391,7 @@ static int mst_stream_dsc_compute_link_config(struct intel_dp *intel_dp,
>> >  {
>> >  	struct intel_display *display = to_intel_display(intel_dp);
>> >  	struct intel_connector *connector = to_intel_connector(conn_state->connector);
>> > -	int i, num_bpc;
>> > +	int num_bpc;
>> >  	u8 dsc_bpc[3] = {};
>> >  	int min_bpp, max_bpp, sink_min_bpp, sink_max_bpp;
>> >  	int min_compressed_bpp, max_compressed_bpp;
>> > @@ -405,15 +405,8 @@ static int mst_stream_dsc_compute_link_config(struct intel_dp *intel_dp,
>> >  	drm_dbg_kms(display->drm, "DSC Source supported min bpp %d max bpp %d\n",
>> >  		    min_bpp, max_bpp);
>> >  
>> > -	sink_max_bpp = dsc_bpc[0] * 3;
>> > -	sink_min_bpp = sink_max_bpp;
>> > -
>> > -	for (i = 1; i < num_bpc; i++) {
>> > -		if (sink_min_bpp > dsc_bpc[i] * 3)
>> > -			sink_min_bpp = dsc_bpc[i] * 3;
>> > -		if (sink_max_bpp < dsc_bpc[i] * 3)
>> > -			sink_max_bpp = dsc_bpc[i] * 3;
>> > -	}
>> > +	sink_min_bpp = min_array(dsc_bpc, num_bpc) * 3;
>> > +	sink_max_bpp = max_array(dsc_bpc, num_bpc) * 3;
>
> Does linux/minmax.h need to be included explicitly for this?

It's included from kernel.h, so I figured not.

Series pushed to din, thanks for the reviews.

BR,
Jani.

>
>> >  
>> >  	drm_dbg_kms(display->drm, "DSC Sink supported min bpp %d max bpp %d\n",
>> >  		    sink_min_bpp, sink_max_bpp);
>> > -- 
>> > 2.39.5
>> > 

-- 
Jani Nikula, Intel
