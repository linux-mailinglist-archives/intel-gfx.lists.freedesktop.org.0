Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B6B11521AE
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 22:07:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97DB389385;
	Tue,  4 Feb 2020 21:07:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33E8589385
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Feb 2020 21:07:24 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Feb 2020 13:07:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,403,1574150400"; d="scan'208";a="279174636"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 04 Feb 2020 13:07:21 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 04 Feb 2020 23:07:21 +0200
Date: Tue, 4 Feb 2020 23:07:21 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20200204210721.GF13686@intel.com>
References: <20200121171100.4370-10-ville.syrjala@linux.intel.com>
 <20200121194403.15066-1-ville.syrjala@linux.intel.com>
 <87r1zk9cgt.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87r1zk9cgt.fsf@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 09/11] drm/i915: Turn
 intel_digital_port_connected() in a vfunc
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

On Tue, Jan 28, 2020 at 11:06:42AM +0200, Jani Nikula wrote:
> On Tue, 21 Jan 2020, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/=
i915/display/intel_dp.h
> > index 3da166054788..cf0df6f18734 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> > @@ -116,6 +116,12 @@ void intel_dp_vsc_enable(struct intel_dp *intel_dp,
> >  void intel_dp_hdr_metadata_enable(struct intel_dp *intel_dp,
> >  				  const struct intel_crtc_state *crtc_state,
> >  				  const struct drm_connector_state *conn_state);
> > +bool cpt_digital_port_connected(struct intel_encoder *encoder);
> > +bool spt_digital_port_connected(struct intel_encoder *encoder);
> > +bool ivb_digital_port_connected(struct intel_encoder *encoder);
> > +bool bdw_digital_port_connected(struct intel_encoder *encoder);
> > +bool bxt_digital_port_connected(struct intel_encoder *encoder);
> > +bool icp_digital_port_connected(struct intel_encoder *encoder);
> =

> Please find a way to not expose a plethora of platform specific
> functions from files. I want to take things to the completely opposite
> direction.

Many of these do disappear in the next patch. Still, I was letting
this idea simmer a bit in case I'd actually come up with a good
approach, alas no inspiration has occurred. I think we have three
options:

1) keep everyting hidden in intel_dp.c and expose some kind of
   intel_dig_port_init() thing that we call from the ddi code.
   The reason I don't really like this is I've been thinking of
   stuffing all the function pointers into some const vtables
   which would probably be mostly populated by stuff from
   intel_ddi.c. So we'd end up in the exact opposite situation
   where ddi code would have to exposes functions to intel_dp.c.

2) Store the hpd register in intel_encoder/dig_port/etc. so we could
   unify the ilk/ivb/bdw/pch functions into a single function. But
   since we still need special sauce for the TC ports we'd still want
   the vfunc. And since we do have the vfunc storing the hpd register
   offset feels rather redundant.

3) Duplicate two of the functions in intel_ddi.c:
   ivb->hsw and pch->lpt (or whatever we call it), and move
   the bdw function over entirely. The duplication seems a
   bit silly, but might actually be the least annoying approach.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
