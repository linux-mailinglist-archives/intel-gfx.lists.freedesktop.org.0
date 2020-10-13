Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21B9D28D1DF
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Oct 2020 18:11:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF8FB6E8D4;
	Tue, 13 Oct 2020 16:11:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B4C16E8D4
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Oct 2020 16:11:32 +0000 (UTC)
IronPort-SDR: EAQ/hyirP3L45reWMANY/jgxSMCsS9ajxdvBnQ0CuEUlz8htmwVTmr6WDcQUfxDPTYnt+giyr1
 qdSB6bzgpPQQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9773"; a="153768625"
X-IronPort-AV: E=Sophos;i="5.77,371,1596524400"; d="scan'208";a="153768625"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2020 09:11:15 -0700
IronPort-SDR: oUpJ7rvhSJp+pZsSDO1k11PVCQpypRPm3DYaM80SXZq5da7WUwSljPnyRLi19GmGW/L4J9ySSw
 wgKX+PoAU9sA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,371,1596524400"; d="scan'208";a="346240968"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 13 Oct 2020 09:11:13 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 13 Oct 2020 19:11:12 +0300
Date: Tue, 13 Oct 2020 19:11:12 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20201013161112.GC6112@intel.com>
References: <20201007120329.17076-1-ville.syrjala@linux.intel.com>
 <20201007120329.17076-2-ville.syrjala@linux.intel.com>
 <160260426090.2946.5418082025217279551@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <160260426090.2946.5418082025217279551@build.alporthouse.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: Fix MOCS PTE setting for gen9+
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Oct 13, 2020 at 04:51:00PM +0100, Chris Wilson wrote:
> Quoting Ville Syrjala (2020-10-07 13:03:28)
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > Fix up the MOCS PTE setting to really get the LLC cacheability
> > from the PTE rather than hardocoding it to LLC or LLC+eLLC.
> > =

> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_mocs.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i91=
5/gt/intel_mocs.c
> > index 632e08a4592b..6f771a482608 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_mocs.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
> > @@ -124,7 +124,7 @@ struct drm_i915_mocs_table {
> >                    LE_1_UC | LE_TC_2_LLC_ELLC, \
> >                    L3_1_UC), \
> >         MOCS_ENTRY(I915_MOCS_PTE, \
> > -                  LE_0_PAGETABLE | LE_TC_2_LLC_ELLC | LE_LRUM(3), \
> > +                  LE_0_PAGETABLE | LE_TC_0_PAGETABLE | LE_LRUM(3), \
> >                    L3_3_WB)
> >  =

> >  static const struct drm_i915_mocs_entry skl_mocs_table[] =3D {
> > @@ -274,7 +274,7 @@ static const struct drm_i915_mocs_entry icl_mocs_ta=
ble[] =3D {
> >                    L3_1_UC),
> >         /* Base - L3 + LeCC:PAT (Deprecated) */
> >         MOCS_ENTRY(I915_MOCS_PTE,
> > -                  LE_0_PAGETABLE | LE_TC_1_LLC,
> > +                  LE_0_PAGETABLE | LE_TC_0_PAGETABLE,
> >                    L3_3_WB),
> =

> Makes sense. Did the PAGETABLE bit carry forward into tgl? That might
> fixup the new regression...

At least I still see it in the docs. What troubles me here is the
"deprecated" comment someone added. If this is deprecated how are we
supposed to configure cachine for display surfaces?

> =

> For the two given here, it certainly exists and makes a whole lot of
> sense,
> Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
> -Chris

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
