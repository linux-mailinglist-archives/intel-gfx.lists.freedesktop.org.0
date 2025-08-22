Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FB13B31AE8
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Aug 2025 16:12:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46C4F10EB20;
	Fri, 22 Aug 2025 14:12:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BWKUyHA9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F6E110EB11;
 Fri, 22 Aug 2025 14:12:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755871952; x=1787407952;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=oygzG+JT0Lwjt1VeL4KFWf3ity+ewe4oxS5mYT+nkzc=;
 b=BWKUyHA9YkddfL2PfplfJ12qztUau6CCFlnCGpinCjZXPatX/lolhtht
 /JqbOm6fOU6nPGVmN5FWR7G8pMETYi2LvuHWgz4yUSMQF9uetx0FrsF3l
 E6FzM1QgEuFra6kLFZWo3/Tzw0vWlDYkCYzFKel81D4FaZg6LI+3CPma8
 MOeohKOjvIG90c36Ct8tYxwLS/l9PcIu9cI8C1g8G2GLQzicrZ0nY2ApW
 9koWY6K8zpJ0lutqesZAe0QK4tNPzyTTCdM5JbaGRFJABExdsAYefORXR
 CpneU45TuExCpAdT5zVGTKLjDBzlXQ/Iec6rdruSSq2ny9EL8CUL6lWMd w==;
X-CSE-ConnectionGUID: xTFyumT0SjWH1/vyMBEhMA==
X-CSE-MsgGUID: /+M7RWOjR3Su0VBagKPt5w==
X-IronPort-AV: E=McAfee;i="6800,10657,11529"; a="68882978"
X-IronPort-AV: E=Sophos;i="6.17,309,1747724400"; d="scan'208";a="68882978"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2025 07:12:31 -0700
X-CSE-ConnectionGUID: X7viO8MfT7KoU7ntHftcEg==
X-CSE-MsgGUID: D8DGLpdoRTyOcVcgxHulhA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,309,1747724400"; d="scan'208";a="174035115"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.174])
 by orviesa005.jf.intel.com with SMTP; 22 Aug 2025 07:12:29 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 22 Aug 2025 17:12:28 +0300
Date: Fri, 22 Aug 2025 17:12:28 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Cc: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2 2/2] drm/i915/psr: check drm_mode_vrefresh return value
Message-ID: <aKh6zC3Tc74TcGWG@intel.com>
References: <20250821045918.17757-1-jouni.hogander@intel.com>
 <20250821045918.17757-2-jouni.hogander@intel.com>
 <aKca3nYynsprAZU1@intel.com>
 <377b98dfb05d9c4a9ffd0c64c4e8b9fea98913c0.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <377b98dfb05d9c4a9ffd0c64c4e8b9fea98913c0.camel@intel.com>
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

On Fri, Aug 22, 2025 at 05:07:18AM +0000, Hogander, Jouni wrote:
> On Thu, 2025-08-21 at 16:10 +0300, Ville Syrjälä wrote:
> > On Thu, Aug 21, 2025 at 07:59:18AM +0300, Jouni Högander wrote:
> > > Check drm_mode_vrefresh return value sanity before using it in
> > > intel_get_frame_time_us.
> > > 
> > > Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_psr.c | 9 +++++++--
> > >  1 file changed, 7 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> > > b/drivers/gpu/drm/i915/display/intel_psr.c
> > > index 5addde63168e..8cc2314fac6f 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > > @@ -1116,11 +1116,16 @@ transcoder_has_psr2(struct intel_display
> > > *display, enum transcoder cpu_transcode
> > >  
> > >  static u32 intel_get_frame_time_us(const struct intel_crtc_state
> > > *crtc_state)
> > >  {
> > > +	int vrefresh;
> > > +
> > >  	if (!crtc_state->hw.active)
> > >  		return 0;
> > >  
> > > -	return DIV_ROUND_UP(1000 * 1000,
> > > -			    drm_mode_vrefresh(&crtc_state-
> > > >hw.adjusted_mode));
> > > +	vrefresh = drm_mode_vrefresh(&crtc_state-
> > > >hw.adjusted_mode);
> > > +	if (vrefresh <= 0)
> > 
> > How would that happen?
> 
> There are some sanity checks in drm_mode_vrefresh returning 0. Do you
> think we should just rely on that we would not end up here with such
> broken drm mode data?

If you find some way to get this far with a bogus mode then we must
have a gap in mode valiation somewhere. drm_mode_vrefresh() itself
must tolerate some amount of nonsense as it may be fed with garbage
from userspace.

-- 
Ville Syrjälä
Intel
