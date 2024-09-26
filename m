Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F17D98746E
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2024 15:28:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D04EC10EB46;
	Thu, 26 Sep 2024 13:28:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CNBR8RQk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACEA910EB43;
 Thu, 26 Sep 2024 13:28:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727357302; x=1758893302;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=XAJWBEYV0Eil8JoEAvVBW8adVKjVUk9n6eKGovO695M=;
 b=CNBR8RQkoD5H7PgoHsHVn9Xb/EsIUROIBKwKe8MbcyF6FuAhl4xDdyQT
 PaSPceAI6S8qFVZ5iDja4mB5R8QF+f2XOgu9kSuUYWf+6s8N1ml2tfMCX
 +UXxvt+Bn/raA2Vxhj6wSuf7xEOyRgKkAR+hCWQYDQt1+SFu2LqQa8a6G
 0arBypm66iPr8pwUBCwrmRnturaCsruyOR3nfzylb3WSEgik8ywIOMX/H
 0wPVKxxEsPQyE/u99Kq6ziTjQrglKLu753XVKleEJAuDhtFJebh+Wo2kk
 /bLKSDirbISrGVyQ8ldoSI7JaNTxsLYXF8w9ag57zIbdrUKHTLtb0tPtK g==;
X-CSE-ConnectionGUID: s2MLZ/r5SzGAL5lEK0UseA==
X-CSE-MsgGUID: 8bZewIwJS5mXELJsoYO+eg==
X-IronPort-AV: E=McAfee;i="6700,10204,11207"; a="37032642"
X-IronPort-AV: E=Sophos;i="6.11,155,1725346800"; d="scan'208";a="37032642"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 06:28:21 -0700
X-CSE-ConnectionGUID: lWNNxS1ASNKvgZbI1beNIA==
X-CSE-MsgGUID: /six6z5hQXiSYIh6CykNow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,155,1725346800"; d="scan'208";a="72295040"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 26 Sep 2024 06:28:19 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 26 Sep 2024 16:28:18 +0300
Date: Thu, 26 Sep 2024 16:28:18 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 suraj.kandpal@intel.com
Subject: Re: [PATCH 08/15] drm/i915/display: Refactor enable_joiner_pipes
Message-ID: <ZvVhcj9t7rPguWUo@intel.com>
References: <20240926072638.3689367-1-ankit.k.nautiyal@intel.com>
 <20240926072638.3689367-9-ankit.k.nautiyal@intel.com>
 <ZvVDVboKQrQwgeyc@intel.com>
 <cb3cbd18-ada2-4f86-8bf5-3e6b95010246@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cb3cbd18-ada2-4f86-8bf5-3e6b95010246@intel.com>
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

On Thu, Sep 26, 2024 at 06:45:14PM +0530, Nautiyal, Ankit K wrote:
> 
> On 9/26/2024 4:49 PM, Ville Syrjälä wrote:
> > On Thu, Sep 26, 2024 at 12:56:31PM +0530, Ankit Nautiyal wrote:
> >> Pass the current pipe into enabled_joiner_pipes(), and let it figure out
> >> the proper bitmasks for us. Since the enabled_joiner_pipes now gets the
> >> primary and secondary pipe wrt a given pipe, the helpers
> >> to get primary pipe and secondary pipes are no longer required.
> >>
> >> v2:
> >> -Simplify helper get_joiner_primary_pipes. (Ville)
> >> -Nuke get_joiner_secondary_pipes. (Ville)
> >> -Add more drm_WARNs final primary/secondary pipes. (Ville)
> >> v3:
> >> -Drop ultrajoiner stuff and add it in subsequent patches. (Ville)
> >>
> >> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> >> Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >> ---
> >>   drivers/gpu/drm/i915/display/intel_display.c | 89 ++++++++++----------
> >>   1 file changed, 44 insertions(+), 45 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> >> index 2d6260c3bca5..ea259b142786 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> >> @@ -3663,7 +3663,15 @@ static u8 expected_bigjoiner_secondary_pipes(u8 bigjoiner_primary_pipes)
> >>   	return expected_secondary_pipes(bigjoiner_primary_pipes, 2);
> >>   }
> >>   
> >> +static u8 get_joiner_primary_pipe(enum pipe pipe, u8 primary_pipes)
> >> +{
> >> +	primary_pipes &= GENMASK(pipe, 0);
> >> +
> >> +	return primary_pipes ? BIT(fls(primary_pipes) - 1) : 0;
> >> +}
> >> +
> >>   static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
> >> +				 enum pipe pipe,
> >>   				 u8 *primary_pipes, u8 *secondary_pipes)
> >>   {
> >>   	struct intel_display *display = to_intel_display(&dev_priv->drm);
> >> @@ -3703,45 +3711,38 @@ static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
> >>   		 expected_uncompressed_joiner_secondary_pipes(primary_uncompressed_joiner_pipes),
> >>   		 secondary_uncompressed_joiner_pipes);
> >>   
> >> -	*primary_pipes = primary_uncompressed_joiner_pipes | primary_bigjoiner_pipes;
> >> -
> >> -	*secondary_pipes = secondary_uncompressed_joiner_pipes | secondary_bigjoiner_pipes;
> >> -
> >> -	/* Joiner pipes should always be consecutive primary and secondary */
> >> -	drm_WARN(display->drm, *secondary_pipes != *primary_pipes << 1,
> >> -		 "Joiner misconfigured (primary pipes %#x, secondary pipes %#x)\n",
> >> -		 *primary_pipes, *secondary_pipes);
> >> -}
> >> -
> >> -static enum pipe get_joiner_primary_pipe(enum pipe pipe, u8 primary_pipes, u8 secondary_pipes)
> >> -{
> >> -	if ((secondary_pipes & BIT(pipe)) == 0)
> >> -		return pipe;
> >> -
> >> -	/* ignore everything above our pipe */
> >> -	primary_pipes &= ~GENMASK(7, pipe);
> >> -
> >> -	/* highest remaining bit should be our primary pipe */
> >> -	return fls(primary_pipes) - 1;
> >> -}
> >> -
> >> -static u8 get_joiner_secondary_pipes(enum pipe pipe, u8 primary_pipes, u8 secondary_pipes)
> >> -{
> >> -	enum pipe primary_pipe, next_primary_pipe;
> >> -
> >> -	primary_pipe = get_joiner_primary_pipe(pipe, primary_pipes, secondary_pipes);
> >> -
> >> -	if ((primary_pipes & BIT(primary_pipe)) == 0)
> >> -		return 0;
> >> -
> >> -	/* ignore our primary pipe and everything below it */
> >> -	primary_pipes &= ~GENMASK(primary_pipe, 0);
> >> -	/* make sure a high bit is set for the ffs() */
> >> -	primary_pipes |= BIT(7);
> >> -	/* lowest remaining bit should be the next primary pipe */
> >> -	next_primary_pipe = ffs(primary_pipes) - 1;
> >> -
> >> -	return secondary_pipes & GENMASK(next_primary_pipe - 1, primary_pipe);
> >> +	*primary_pipes = 0;
> >> +	*secondary_pipes = 0;
> >> +
> >> +	if (uncompressed_joiner_pipes & BIT(pipe)) {
> >> +		*primary_pipes = get_joiner_primary_pipe(pipe, primary_uncompressed_joiner_pipes);
> >> +		*secondary_pipes = secondary_uncompressed_joiner_pipes &
> >> +				   expected_uncompressed_joiner_secondary_pipes(*primary_pipes);
> >> +
> >> +		drm_WARN(display->drm,
> >> +			 expected_uncompressed_joiner_secondary_pipes(*primary_pipes) !=
> >> +			 *secondary_pipes,
> >> +			 "Wrong uncompressed joiner secondary pipes for primary_pipes %#x (expected %#x, current %#x)\n",
> >> +			 *primary_pipes,
> >> +			 expected_uncompressed_joiner_secondary_pipes(*primary_pipes),
> >> +			 *secondary_pipes);
> >> +		return;
> >> +	}
> >> +
> >> +	if (bigjoiner_pipes & BIT(pipe)) {
> >> +		*primary_pipes = get_joiner_primary_pipe(pipe, primary_bigjoiner_pipes);
> >> +		*secondary_pipes = secondary_bigjoiner_pipes &
> >> +				   expected_bigjoiner_secondary_pipes(*primary_pipes);
> >> +
> >> +		drm_WARN(display->drm,
> >> +			 expected_bigjoiner_secondary_pipes(*primary_pipes) !=
> >> +			 *secondary_pipes,
> >> +			 "Wrong bigjoiner secondary pipes for primary_pipes %#x (expected %#x, current %#x)\n",
> >> +			 *primary_pipes,
> >> +			 expected_bigjoiner_secondary_pipes(*primary_pipes),
> >> +			 *secondary_pipes);
> >> +		return;
> >> +	}
> >>   }
> >>   
> >>   static u8 hsw_panel_transcoders(struct drm_i915_private *i915)
> >> @@ -3813,10 +3814,10 @@ static u8 hsw_enabled_transcoders(struct intel_crtc *crtc)
> >>   		enabled_transcoders |= BIT(cpu_transcoder);
> >>   
> >>   	/* joiner secondary -> consider the primary pipe's transcoder as well */
> >> -	enabled_joiner_pipes(dev_priv, &primary_pipes, &secondary_pipes);
> >> +	enabled_joiner_pipes(dev_priv, crtc->pipe, &primary_pipes, &secondary_pipes);
> >>   	if (secondary_pipes & BIT(crtc->pipe)) {
> >>   		cpu_transcoder = (enum transcoder)
> >> -			get_joiner_primary_pipe(crtc->pipe, primary_pipes, secondary_pipes);
> >> +			ffs(get_joiner_primary_pipe(crtc->pipe, primary_pipes)) - 1;
> > The get_joiner_primary_pipe() shouldn't be needed here since
> > enabled_joiner_pipes() guarantees that only one bit is set.
> 
> 
> I agree. Additionally, I was considering changing the input variable 
> name from `primary_pipes` to `primary_pipe` in enabled_joiner_pipes for 
> clarity. Does that make sense?

Probably a good idea. It'll be a bit weird to have it as a bitmask,
but feels like returning just a single enum pipe could make
things more complicated. So yeah, 'u8 *primary_pipe' seems perhaps the
best compromise.

-- 
Ville Syrjälä
Intel
