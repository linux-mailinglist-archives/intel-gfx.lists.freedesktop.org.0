Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 50143276EF4
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Sep 2020 12:46:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E16489C1C;
	Thu, 24 Sep 2020 10:46:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 267A989C1C
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Sep 2020 10:46:23 +0000 (UTC)
IronPort-SDR: pY8/KtDJ4f2t5L2tmlkNMrBRQEPEbO6QbBxJgQoKn8EHKIsyzsp6I9G2asD2W7U/iVGRNqDrBk
 fMIyJAD9BsUg==
X-IronPort-AV: E=McAfee;i="6000,8403,9753"; a="148818183"
X-IronPort-AV: E=Sophos;i="5.77,297,1596524400"; d="scan'208";a="148818183"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2020 03:46:22 -0700
IronPort-SDR: xJ51sOD/hLiHm16yBxG/2S+Uk6xQIyFAwPdcGQycgujImwTNQfgpi+RBP0jgRgZwyQl3w1BR9J
 SsqcHXdFnd8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,297,1596524400"; d="scan'208";a="339003798"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 24 Sep 2020 03:46:20 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 24 Sep 2020 13:46:19 +0300
Date: Thu, 24 Sep 2020 13:46:19 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
Message-ID: <20200924104619.GG6112@intel.com>
References: <20200716172106.2656-1-ville.syrjala@linux.intel.com>
 <20200716172106.2656-5-ville.syrjala@linux.intel.com>
 <5eaf7a6e770841e1abac61b686acdde8@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5eaf7a6e770841e1abac61b686acdde8@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 04/14] drm/i915: Add SKL GT1.5 PCI IDs
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

On Thu, Sep 24, 2020 at 12:37:47AM +0000, Srivatsa, Anusha wrote:
> =

> =

> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of =
Ville
> > Syrjala
> > Sent: Thursday, July 16, 2020 10:21 AM
> > To: intel-gfx@lists.freedesktop.org
> > Subject: [Intel-gfx] [PATCH 04/14] drm/i915: Add SKL GT1.5 PCI IDs
> > =

> > From: Alexei Podtelezhnikov <apodtele@gmail.com>
> > =

> > Add three new devices 0x1913, 0x1915, and 0x1917 also known as
> > iSKLULTGT15, iSKLULXGT15, and iSKLDTGT15.
> > =

> > Signed-off-by: Alexei Podtelezhnikov <apodtele@gmail.com>
> > [vsyrjala: Split separate changes into separate patchs,
> >            Sort the IDs]
> The above comment appears in every patch. If this is v2 of the patches th=
en it goes right after the commit message as:
> =

>  V2: Split separate changes into separate patches, sort the IDs (Ville)

No. I use the [vsyrjala: blah] notation to indicate I modified the
original patch which was authored by someone else.

>  =

> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> The code changes itself look good.
> =

> Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> =

> > ---
> >  include/drm/i915_pciids.h | 9 ++++++---
> >  1 file changed, 6 insertions(+), 3 deletions(-)
> > =

> > diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h index
> > 9df3697f074d..c906088ccffe 100644
> > --- a/include/drm/i915_pciids.h
> > +++ b/include/drm/i915_pciids.h
> > @@ -329,17 +329,20 @@
> >  	INTEL_VGA_DEVICE(0x22b3, info)
> > =

> >  #define INTEL_SKL_ULT_GT1_IDS(info) \
> > -	INTEL_VGA_DEVICE(0x1906, info) /* ULT GT1 */
> > +	INTEL_VGA_DEVICE(0x1906, info), /* ULT GT1 */ \
> > +	INTEL_VGA_DEVICE(0x1913, info)  /* ULT GT1.5 */
> > =

> >  #define INTEL_SKL_ULX_GT1_IDS(info) \
> > -	INTEL_VGA_DEVICE(0x190E, info) /* ULX GT1 */
> > +	INTEL_VGA_DEVICE(0x190E, info), /* ULX GT1 */ \
> > +	INTEL_VGA_DEVICE(0x1915, info)  /* ULX GT1.5 */
> > =

> >  #define INTEL_SKL_GT1_IDS(info)	\
> >  	INTEL_SKL_ULT_GT1_IDS(info), \
> >  	INTEL_SKL_ULX_GT1_IDS(info), \
> >  	INTEL_VGA_DEVICE(0x1902, info), /* DT  GT1 */ \
> >  	INTEL_VGA_DEVICE(0x190B, info), /* Halo GT1 */ \
> > -	INTEL_VGA_DEVICE(0x190A, info) /* SRV GT1 */
> > +	INTEL_VGA_DEVICE(0x190A, info), /* SRV GT1 */ \
> > +	INTEL_VGA_DEVICE(0x1917, info)  /* DT  GT1.5 */
> > =

> >  #define INTEL_SKL_ULT_GT2_IDS(info) \
> >  	INTEL_VGA_DEVICE(0x1916, info), /* ULT GT2 */ \
> > --
> > 2.26.2
> > =

> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
