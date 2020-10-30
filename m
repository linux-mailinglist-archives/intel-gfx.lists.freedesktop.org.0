Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2A9E2A0EE7
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Oct 2020 20:55:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D00336E067;
	Fri, 30 Oct 2020 19:55:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F7136E067
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Oct 2020 19:55:18 +0000 (UTC)
IronPort-SDR: Z1VDqaqIqAA1xBSNv3HsTOrPRLNF+NfsYMT6MYephG0ws/xo6ewVLBSuAxKkTZhEp97a+i7FD2
 cQ1m3xBnBa/Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9790"; a="186472425"
X-IronPort-AV: E=Sophos;i="5.77,434,1596524400"; d="scan'208";a="186472425"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2020 12:55:17 -0700
IronPort-SDR: zo5z44ZfOVshEKbUREsqf/B2KStScpiUlU3gdag689gI1uFtvxWvv0W2YF9DT82ULvIDB8LlVs
 uVEEI4Z6UNzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,434,1596524400"; d="scan'208";a="335517640"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 30 Oct 2020 12:55:15 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 30 Oct 2020 21:55:14 +0200
Date: Fri, 30 Oct 2020 21:55:14 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
Message-ID: <20201030195514.GL6112@intel.com>
References: <20201030164124.16922-1-ville.syrjala@linux.intel.com>
 <6046b238187a44e0b7c569efc7d0e9b8@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6046b238187a44e0b7c569efc7d0e9b8@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Sort EHL/JSL PCI IDs
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Oct 30, 2020 at 07:34:01PM +0000, Srivatsa, Anusha wrote:
> =

> =

> > -----Original Message-----
> > From: Ville Syrjala <ville.syrjala@linux.intel.com>
> > Sent: Friday, October 30, 2020 9:41 AM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: Srivatsa, Anusha <anusha.srivatsa@intel.com>
> > Subject: [PATCH v2] drm/i915: Sort EHL/JSL PCI IDs
> > =

> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > Sort the EHL/JSL PCI IDs numerically. Some order seems better than
> > randomness.
> > =

> > v2: Deal with the JSL vs. EHL split
> > =

> > Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com> #v1
> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > ---
> >  include/drm/i915_pciids.h | 14 +++++++-------
> >  1 file changed, 7 insertions(+), 7 deletions(-)
> > =

> > diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h index
> > 3b5ed1e4f3ec..4a0a06f4a81e 100644
> > --- a/include/drm/i915_pciids.h
> > +++ b/include/drm/i915_pciids.h
> > @@ -585,19 +585,19 @@
> >  /* EHL */
> >  #define INTEL_EHL_IDS(info) \
> >  	INTEL_VGA_DEVICE(0x4500, info),	\
> 0x4500 is actually no longer  a valid PCI ID for the platform.

Can you fire off a patch to remove the invalid stuff?
I can hold off on pushing this until those changes are
done, if that's the more convenient approach.

> =

> Anusha
> > -	INTEL_VGA_DEVICE(0x4571, info), \
> > -	INTEL_VGA_DEVICE(0x4551, info), \
> >  	INTEL_VGA_DEVICE(0x4541, info), \
> > +	INTEL_VGA_DEVICE(0x4551, info), \
> > +	INTEL_VGA_DEVICE(0x4555, info), \
> >  	INTEL_VGA_DEVICE(0x4557, info), \
> > -	INTEL_VGA_DEVICE(0x4555, info)
> > +	INTEL_VGA_DEVICE(0x4571, info)
> > =

> >  /* JSL */
> >  #define INTEL_JSL_IDS(info) \
> > -	INTEL_VGA_DEVICE(0x4E71, info), \
> > -	INTEL_VGA_DEVICE(0x4E61, info), \
> > -	INTEL_VGA_DEVICE(0x4E57, info), \
> > +	INTEL_VGA_DEVICE(0x4E51, info), \
> >  	INTEL_VGA_DEVICE(0x4E55, info), \
> > -	INTEL_VGA_DEVICE(0x4E51, info)
> > +	INTEL_VGA_DEVICE(0x4E57, info), \
> > +	INTEL_VGA_DEVICE(0x4E61, info), \
> > +	INTEL_VGA_DEVICE(0x4E71, info)
> > =

> >  /* TGL */
> >  #define INTEL_TGL_12_GT1_IDS(info) \
> > --
> > 2.26.2
> =


-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
