Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E068115AC5C
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2020 16:51:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F5C26F530;
	Wed, 12 Feb 2020 15:51:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5CE86F530
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Feb 2020 15:51:55 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Feb 2020 07:51:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,433,1574150400"; d="scan'208";a="226902710"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 12 Feb 2020 07:51:52 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 12 Feb 2020 17:51:51 +0200
Date: Wed, 12 Feb 2020 17:51:51 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20200212155151.GE13686@intel.com>
References: <20200212152525.23108-1-stanislav.lisovskiy@intel.com>
 <87o8u3yfzr.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87o8u3yfzr.fsf@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v1] drm/i915: Ensure no conflicts with BIOS
 when updating Dbuf
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

On Wed, Feb 12, 2020 at 05:36:40PM +0200, Jani Nikula wrote:
> On Wed, 12 Feb 2020, Stanislav Lisovskiy <stanislav.lisovskiy@intel.com> =
wrote:
> > TGL BIOS seems to enable both DBuf slices ocasionally, depending
> > how many displays are connected, while i915 according to BSpec
> > was powering on S1 DBuf slice, until a modeset was done.
> >
> > This was causing a brief flash during the boot as we were
> > disabling slice, previously used by BIOS with that.
> >
> > To prevent this, now we are ensuring tht we are enabling
> > _at least_ one slice, but if there are more, let's not
> > power them off.
> >
> > Fixes: ff2cd8635e41 ("drm/i915: Correctly map DBUF slices to pipes")
> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display_power.c | 6 ++++--
> >  1 file changed, 4 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drive=
rs/gpu/drm/i915/display/intel_display_power.c
> > index 53056def5414..b9a9cbad8a03 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > @@ -4470,11 +4470,13 @@ void icl_dbuf_slices_update(struct drm_i915_pri=
vate *dev_priv,
> >  =

> >  static void icl_dbuf_enable(struct drm_i915_private *dev_priv)
> >  {
> > +	skl_ddb_get_hw_state(dev_priv);
> >  	/*
> > -	 * Just power up 1 slice, we will
> > +	 * Just power up at least 1 slice, we will
> >  	 * figure out later which slices we have and what we need.
> >  	 */
> > -	icl_dbuf_slices_update(dev_priv, BIT(DBUF_S1));
> > +	icl_dbuf_slices_update(dev_priv, dev_priv->enabled_dbuf_slices_mask |
> > +			       BIT(DBUF_S1));
> =

> I don't know anything about this, but it seems obvious to me the
> enabling code should not do hardware readout; they should be separated
> from a much higher level.

This is part of display core init, which is more or less half readout
vs. half initialization anyway. So can't think of a better place for it
really.

What I don't like is that it's now only in the icl+ function but not in
the pre-icl stuff. In fact I don't see why we even have this pre-icl vs.
icl split anymore. The same code should work for both. So as a followup
I'd like to see a patch to nuke the redundant code.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
