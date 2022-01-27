Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F02EB49E130
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jan 2022 12:35:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2147910E20C;
	Thu, 27 Jan 2022 11:35:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CACE10E20C
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jan 2022 11:35:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643283318; x=1674819318;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=S/4wXG6GB8cYjfZwcKSNfK9tKHfUuXqs/zObaYAr7XQ=;
 b=gATIFWygBFp+GylyemNM2tNtl9FCxDCwjnGzBgdzMFHdV+Ls64Wjw5y7
 me+9VkwM3O0P6qPyvDihGLoniDXQocxrn13n9jnukRohruiPiHiPeCWge
 aPqhB24cbYbGuIalB/KH+uiq3SQsEiFYPBeoAsX0lwoVUmWFseH+Dy7xF
 DexRDGPYwa/6klVJcX4mgNkI/sshw5lTyVXtdHhV7QOWV6vG5io9gfNAF
 IOpuPKLDWh3jl20n1FOriIiLPsGDBBeqkFj5ngL5s86quiwraNQwkAobP
 tsaWpQMWQIckIJbKDbezcwKin9xWgHB422ZYAkSl+FBO2u1uOALKLAjki A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="310137617"
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="310137617"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 03:35:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="495696942"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by orsmga002.jf.intel.com with SMTP; 27 Jan 2022 03:35:15 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 27 Jan 2022 13:35:14 +0200
Date: Thu, 27 Jan 2022 13:35:14 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <YfKDcoJKVdJtPPz3@intel.com>
References: <20220127093303.17309-1-ville.syrjala@linux.intel.com>
 <20220127093303.17309-5-ville.syrjala@linux.intel.com>
 <87r18twhfo.fsf@intel.com> <87o83xwhey.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87o83xwhey.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 04/14] drm/i915: Move drrs hardware bit
 frobbing to small helpers
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

On Thu, Jan 27, 2022 at 01:24:05PM +0200, Jani Nikula wrote:
> On Thu, 27 Jan 2022, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> > On Thu, 27 Jan 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> >> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >>
> >> Split the drrs code that actually changes the refresh rate
> >> (via PIPECONF or M/N values) to small helper functions that
> >> only deal with the hardware details an nothing else. We'll
> >> soon have a third way of doing this, and it's less confusing
> >> when each difference method lives in its own funciton.
> >>
> >> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/display/intel_drrs.c | 67 ++++++++++++-----------
> >>  1 file changed, 36 insertions(+), 31 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
> >> index 46be46f2c47e..0cacdb174fd0 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_drrs.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_drrs.c
> >> @@ -87,6 +87,38 @@ intel_drrs_compute_config(struct intel_dp *intel_dp,
> >>  		pipe_config->dp_m2_n2.data_m *= pipe_config->splitter.link_count;
> >>  }
> >>  
> >> +static void
> >> +intel_drrs_set_refresh_rate_pipeconf(const struct intel_crtc_state *crtc_state,
> >> +				     enum drrs_refresh_rate_type refresh_type)
> >
> > Side note, for future, does this really need to be an enum? Could it
> > just be a bool "reduced" or something?
> 
> And I mean throughout the driver, not just right here.

I suppose a bool would suffice. I was going to rename it to
at least have a bit more consistent namespace, but perhaps
we could just nuke it entirely.

-- 
Ville Syrjälä
Intel
