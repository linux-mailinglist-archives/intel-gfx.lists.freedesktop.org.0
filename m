Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F24471328B4
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jan 2020 15:20:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4486489FE8;
	Tue,  7 Jan 2020 14:20:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66EA189FE8
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jan 2020 14:20:49 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Jan 2020 06:20:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,406,1571727600"; d="scan'208";a="271532898"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 07 Jan 2020 06:20:46 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 07 Jan 2020 16:20:45 +0200
Date: Tue, 7 Jan 2020 16:20:45 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lucas De Marchi <lucas.de.marchi@gmail.com>
Message-ID: <20200107142045.GE1208@intel.com>
References: <20190306131957.GC3888@intel.com>
 <20190308232321.30168-1-lucas.demarchi@intel.com>
 <CAKi4VAKSi1otf_R_D1mPEvCjR1+MRfhQ0NEc_-hJ298W=wdTRQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKi4VAKSi1otf_R_D1mPEvCjR1+MRfhQ0NEc_-hJ298W=wdTRQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: remove ICP_PP_CONTROL
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
Cc: Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 02, 2020 at 03:44:38PM -0800, Lucas De Marchi wrote:
> Today I saw this register and had a vague memory of having already
> removed it in the past.
> It seems this patch has never been reviewed/applied.
> =

> Ping

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> =

> Lucas De Marchi
> =

> On Fri, Mar 8, 2019 at 3:23 PM Lucas De Marchi <lucas.demarchi@intel.com>=
 wrote:
> >
> > This register was placed in the middle of the PP_STATUS definition
> > instead of together with the PP_CONTROL where it should. Since it's not
> > used and there are no current plans to use it, just remove the
> > definition.
> >
> > v2: remove the define rather than moving it.
> >
> > Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_reg.h | 11 -----------
> >  1 file changed, 11 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i91=
5_reg.h
> > index c0cd7a836799..4a855befa838 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -4692,17 +4692,6 @@ enum {
> >  #define _PP_STATUS                     0x61200
> >  #define PP_STATUS(pps_idx)             _MMIO_PPS(pps_idx, _PP_STATUS)
> >  #define   PP_ON                                (1 << 31)
> > -
> > -#define _PP_CONTROL_1                  0xc7204
> > -#define _PP_CONTROL_2                  0xc7304
> > -#define ICP_PP_CONTROL(x)              _MMIO(((x) =3D=3D 1) ? _PP_CONT=
ROL_1 : \
> > -                                             _PP_CONTROL_2)
> > -#define  POWER_CYCLE_DELAY_MASK        (0x1f << 4)
> > -#define  POWER_CYCLE_DELAY_SHIFT       4
> > -#define  VDD_OVERRIDE_FORCE            (1 << 3)
> > -#define  BACKLIGHT_ENABLE              (1 << 2)
> > -#define  PWR_DOWN_ON_RESET             (1 << 1)
> > -#define  PWR_STATE_TARGET              (1 << 0)
> >  /*
> >   * Indicates that all dependencies of the panel are on:
> >   *
> > --
> > 2.20.1
> >
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> =

> =

> =

> -- =

> Lucas De Marchi

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
