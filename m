Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E0743276F03
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Sep 2020 12:50:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A02D6E1E8;
	Thu, 24 Sep 2020 10:50:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61FC86E1E8
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Sep 2020 10:50:36 +0000 (UTC)
IronPort-SDR: buJDxViL87wr0ewtmdAdDhl5ILfMj0OkZKiFjZURmBgrwr8nwx/jEJbNVdQFEkfoXoTQE7jbbj
 8gBzwZ1QpX1g==
X-IronPort-AV: E=McAfee;i="6000,8403,9753"; a="225307371"
X-IronPort-AV: E=Sophos;i="5.77,297,1596524400"; d="scan'208";a="225307371"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2020 03:50:35 -0700
IronPort-SDR: SQCHBq6HjjA4D51DtTRJ1sG5aoUP8OJaJfryViKbhLiuwYyXQue4FMuWRJdGLx7L5+I0SANoWt
 SUD6BbBIdmLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,297,1596524400"; d="scan'208";a="413287963"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 24 Sep 2020 03:50:33 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 24 Sep 2020 13:50:32 +0300
Date: Thu, 24 Sep 2020 13:50:32 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
Message-ID: <20200924105032.GH6112@intel.com>
References: <20200716172106.2656-1-ville.syrjala@linux.intel.com>
 <20200716172106.2656-9-ville.syrjala@linux.intel.com>
 <e05b558822374fb782e5cfa4601974d4@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e05b558822374fb782e5cfa4601974d4@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 08/14] drm/i915: Sort SKL PCI IDs
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

On Thu, Sep 24, 2020 at 12:49:13AM +0000, Srivatsa, Anusha wrote:
> =

> =

> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of =
Ville
> > Syrjala
> > Sent: Thursday, July 16, 2020 10:21 AM
> > To: intel-gfx@lists.freedesktop.org
> > Subject: [Intel-gfx] [PATCH 08/14] drm/i915: Sort SKL PCI IDs
> > =

> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > Sort the SKL PCI IDs numerically. Some order seems better than
> > randomness.
> =

> There are 2 patches - patch 2 and 3 in the series that are reclassifying =
some PCI IDs  and there is patch 4 that adds a missing ID. All of those wit=
h this patch can be combined to a single patch OR patch 2, 3 and 4 can be s=
quashed as one solitary patch.

The original patch from Alexei was a single patch. I split it up for
a reason; easier to revert things if/when necessary, and it's also
easier to review.

If your commit message is of the form "do A and B" it's generally
a good indication that it should be split into two patches.

> =

> Anusha =

> > Cc: Alexei Podtelezhnikov <apodtele@gmail.com>
> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > ---
> >  include/drm/i915_pciids.h | 8 ++++----
> >  1 file changed, 4 insertions(+), 4 deletions(-)
> > =

> > diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h index
> > 4870c3c9f9b2..5185ac789038 100644
> > --- a/include/drm/i915_pciids.h
> > +++ b/include/drm/i915_pciids.h
> > @@ -340,8 +340,8 @@
> >  	INTEL_SKL_ULT_GT1_IDS(info), \
> >  	INTEL_SKL_ULX_GT1_IDS(info), \
> >  	INTEL_VGA_DEVICE(0x1902, info), /* DT  GT1 */ \
> > -	INTEL_VGA_DEVICE(0x190B, info), /* Halo GT1 */ \
> >  	INTEL_VGA_DEVICE(0x190A, info), /* SRV GT1 */ \
> > +	INTEL_VGA_DEVICE(0x190B, info), /* Halo GT1 */ \
> >  	INTEL_VGA_DEVICE(0x1917, info)  /* DT  GT1.5 */
> > =

> >  #define INTEL_SKL_ULT_GT2_IDS(info) \
> > @@ -355,8 +355,8 @@
> >  	INTEL_SKL_ULT_GT2_IDS(info), \
> >  	INTEL_SKL_ULX_GT2_IDS(info), \
> >  	INTEL_VGA_DEVICE(0x1912, info), /* DT  GT2 */ \
> > -	INTEL_VGA_DEVICE(0x191B, info), /* Halo GT2 */ \
> >  	INTEL_VGA_DEVICE(0x191A, info), /* SRV GT2 */ \
> > +	INTEL_VGA_DEVICE(0x191B, info), /* Halo GT2 */ \
> >  	INTEL_VGA_DEVICE(0x191D, info)  /* WKS GT2 */
> > =

> >  #define INTEL_SKL_ULT_GT3_IDS(info) \
> > @@ -372,9 +372,9 @@
> > =

> >  #define INTEL_SKL_GT4_IDS(info) \
> >  	INTEL_VGA_DEVICE(0x1932, info), /* DT GT4 */ \
> > +	INTEL_VGA_DEVICE(0x193A, info), /* SRV GT4e */ \
> >  	INTEL_VGA_DEVICE(0x193B, info), /* Halo GT4e */ \
> > -	INTEL_VGA_DEVICE(0x193D, info), /* WKS GT4e */ \
> > -	INTEL_VGA_DEVICE(0x193A, info)  /* SRV GT4e */
> > +	INTEL_VGA_DEVICE(0x193D, info) /* WKS GT4e */
> > =

> >  #define INTEL_SKL_IDS(info)	 \
> >  	INTEL_SKL_GT1_IDS(info), \
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
