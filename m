Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E43A6F1615
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Apr 2023 12:55:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C2CC10ECC9;
	Fri, 28 Apr 2023 10:55:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0FF510ECC9
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Apr 2023 10:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682679308; x=1714215308;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=4x8F91QxXasBmrxqexpdq5m6ulHfglONP/2xeecExwY=;
 b=n8m4tzdVuY+Ad6HETB4zx50aYGgFe1c5ZjlMl43e+mohtmxvF7DhT+KH
 TxhZBZ2HFodTDxAkxN59nDTsMEkiY518alMH9M9PkjbKBxmS3jeEuimVz
 q2U6QUL9Z3dCe+3FuS2WDBpJAMUty+h/kLbOmWNBJU7gtYNi7/mn302Jw
 nW/fX/hq0jrZh1P1Cn1qizQfLtPs1uOBN4zUyNq47Ff68PLzTlgjyn0fu
 HmQYbXQVNj51oj0dQFHWY8vVzM3EbsJ/VYUY/bnYb3wj8kjj9DZE5PlrI
 WAViNut+c1i1UkOQFQjQkRFr8liVh+1sWOOfMAONmp/Cdu9v9JmJFRE33 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="328051551"
X-IronPort-AV: E=Sophos;i="5.99,234,1677571200"; d="scan'208";a="328051551"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2023 03:55:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="759618478"
X-IronPort-AV: E=Sophos;i="5.99,234,1677571200"; d="scan'208";a="759618478"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga008.fm.intel.com with SMTP; 28 Apr 2023 03:55:05 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 28 Apr 2023 13:55:04 +0300
Date: Fri, 28 Apr 2023 13:55:04 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Message-ID: <ZEumCGCTAQnoRF8A@intel.com>
References: <20230421120307.24793-1-ville.syrjala@linux.intel.com>
 <20230421120307.24793-9-ville.syrjala@linux.intel.com>
 <6e7980c273586069e0f70de1c9b70cc061b47539.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <6e7980c273586069e0f70de1c9b70cc061b47539.camel@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 08/13] drm/i915/psr: Implement
 WaPsrDPAMaskVBlankInSRD:hsw
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Apr 28, 2023 at 10:36:17AM +0000, Hogander, Jouni wrote:
> On Fri, 2023-04-21 at 15:03 +0300, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Implement WaPsrDPAMaskVBlankInSRD:hsw, which makes the hardware
> > generate the extra vblank between link training and first frame
> > being transmitted. This is the same thing that's controlled by
> > TRANS_CHICKEN[21] on skl+ (but due to the funky double buffering
> > it's effectively always at the rest value after DC5 exit). So
> > for consistent behaviour we want every platform to generate said
> > vblank. BDW is already setting this up correctly.
> 
> I couldn't find this from Bspec. I'll guess you have some offline
> documentation? WaPsrDPRSUnmaskVBlankInSRD seems to be in Bspec.

Bspec has lost the human readable name at some point.
It's still there though as w/a #0503.

> 
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/intel_clock_gating.c | 3 +++
> >  1 file changed, 3 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/intel_clock_gating.c
> > b/drivers/gpu/drm/i915/intel_clock_gating.c
> > index a27600bc5976..9682323510cd 100644
> > --- a/drivers/gpu/drm/i915/intel_clock_gating.c
> > +++ b/drivers/gpu/drm/i915/intel_clock_gating.c
> > @@ -562,6 +562,9 @@ static void hsw_init_clock_gating(struct
> > drm_i915_private *i915)
> >         /* WaFbcAsynchFlipDisableFbcQueue:hsw,bdw */
> >         intel_uncore_rmw(&i915->uncore, CHICKEN_PIPESL_1(PIPE_A), 0,
> > HSW_FBCQ_DIS);
> >  
> > +       /* WaPsrDPAMaskVBlankInSRD:hsw */
> > +       intel_uncore_rmw(&i915->uncore, CHICKEN_PAR1_1, 0,
> > HSW_MASK_VBL_TO_PIPE_IN_SRD);
> > +
> >         /* This is required by WaCatErrorRejectionIssue:hsw */
> >         intel_uncore_rmw(&i915->uncore,
> > GEN7_SQ_CHICKEN_MBCUNIT_CONFIG,
> >                          0, GEN7_SQ_CHICKEN_MBCUNIT_SQINTMOB);
> 
> BR,
> 
> Jouni Högander

-- 
Ville Syrjälä
Intel
