Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EABF0697D06
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Feb 2023 14:19:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 565E710E145;
	Wed, 15 Feb 2023 13:19:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD33B10E145
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Feb 2023 13:19:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676467163; x=1708003163;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=AQr1dnnbtmO0n4dRIxycvRdPCc7fKxud9DU9NpqVNSM=;
 b=ARt5r/2b5xahnBq85lPw5o8QiwX+vJoFR8R0ttTLUvo/iGsmvjzBaKWK
 7PjfeTKY10Gew8r1PCG6AkyxRS6W4FgFKClLx24xHK/C5j9nddblCb84r
 foY2x5DMdeoGGvcngLjBFx+2vLSeOKR/in0jqJlWk3ibQgY9rqeVSSZ38
 GlT35GqzbIlpAli04WmAVe7/xtaJR+RW2ecNAih1jnA+MMgYv1nhY2ijQ
 4+21yhksftPNTAdqJ86+n5dKNSNIfzIPoleOWA9Xo1D31EgCPkcCreRxj
 uPxLDCMs0cNlx0bNCD9g5n959u0oVj0DV5nJJgr/dH9utFfkfHS8W23Aj A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="396048168"
X-IronPort-AV: E=Sophos;i="5.97,299,1669104000"; d="scan'208";a="396048168"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 05:19:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="662932214"
X-IronPort-AV: E=Sophos;i="5.97,299,1669104000"; d="scan'208";a="662932214"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga007.jf.intel.com with SMTP; 15 Feb 2023 05:19:19 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 15 Feb 2023 15:19:18 +0200
Date: Wed, 15 Feb 2023 15:19:18 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <Y+zb1qPuC+sF2eBX@intel.com>
References: <20230215121859.15923-1-ville.syrjala@linux.intel.com>
 <87o7pvqdc2.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87o7pvqdc2.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Reduce ELD hex dumps a bit
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

On Wed, Feb 15, 2023 at 03:15:41PM +0200, Jani Nikula wrote:
> On Wed, 15 Feb 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Do the ELD hexdumps only up to the last differing byte.
> > The rest is typically all zeroes anyway so not much point
> > in dumping it.
> 
> Arguably part of the reason for big dumps is that we use MAX_ELD_BYTES
> for the size instead of drm_eld_size(). Granted, using drm_eld_size()
> brings other complications, so maybe this is better anyway.
> 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 23 ++++++++++++++++++++
> >  1 file changed, 23 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index 3479125fbda6..d73aea9040e0 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -5348,6 +5348,23 @@ pipe_config_dp_vsc_sdp_mismatch(struct drm_i915_private *dev_priv,
> >  	}
> >  }
> >  
> > +/*
> > + * Like a revese memcmp(), but returns the
> > + * position of the last differing byte.
> > + */
> > +static int
> > +memcmp_pos_reverse(const u8 *a, const u8 *b, size_t len)
> > +{
> > +	int i;
> > +
> > +	for (i = len - 1; i >= 0; i--) {
> > +		if (a[i] != b[i])
> > +			return i;
> > +	}
> > +
> > +	return len;
> > +}
> 
> Maybe make the function return "length of differing prefix" instead?
> 
> If the buffers are identical, you now return len, and the caller dumps
> len + 1, overflowing the buffer. This shouldn't happen, because we've
> checked before that the buffers do differ, but it's a trap for anyone
> who just picks this up for some other use case.
> 
> The fix is simple, return "i + 1" if there's a difference, return 0 at
> the end if there's not, and drop the + 1 from the caller side.
> 
> Renaming the function is the hard part. ;)

memcmp_len_reverse()?

> 
> 
> BR,
> Jani.
> 
> 
> > +
> >  static void
> >  pipe_config_buffer_mismatch(struct drm_i915_private *dev_priv,
> >  			    bool fastset, const char *name,
> > @@ -5357,6 +5374,9 @@ pipe_config_buffer_mismatch(struct drm_i915_private *dev_priv,
> >  		if (!drm_debug_enabled(DRM_UT_KMS))
> >  			return;
> >  
> > +		/* only dump up to the last difference */
> > +		len = memcmp_pos_reverse(a, b, len) + 1;
> > +
> >  		drm_dbg_kms(&dev_priv->drm,
> >  			    "fastset mismatch in %s buffer\n", name);
> >  		print_hex_dump(KERN_DEBUG, "expected: ", DUMP_PREFIX_NONE,
> > @@ -5364,6 +5384,9 @@ pipe_config_buffer_mismatch(struct drm_i915_private *dev_priv,
> >  		print_hex_dump(KERN_DEBUG, "found: ", DUMP_PREFIX_NONE,
> >  			       16, 0, b, len, false);
> >  	} else {
> > +		/* only dump up to the last difference */
> > +		len = memcmp_pos_reverse(a, b, len) + 1;
> > +
> >  		drm_err(&dev_priv->drm, "mismatch in %s buffer\n", name);
> >  		print_hex_dump(KERN_ERR, "expected: ", DUMP_PREFIX_NONE,
> >  			       16, 0, a, len, false);
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Ville Syrjälä
Intel
