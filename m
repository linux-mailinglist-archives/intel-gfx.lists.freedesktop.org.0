Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 221323151DE
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Feb 2021 15:44:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DE4B6E07B;
	Tue,  9 Feb 2021 14:44:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBE5B6E07B
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Feb 2021 14:44:16 +0000 (UTC)
IronPort-SDR: 2UvZjh5AfwrsLxGQdgWDs9YTRXElcINg9ew6QsipMZgykryYI1wk/XP7hFCJEbTUVoS7vHSdFe
 W7w9CpNAHT6w==
X-IronPort-AV: E=McAfee;i="6000,8403,9889"; a="161638594"
X-IronPort-AV: E=Sophos;i="5.81,165,1610438400"; d="scan'208";a="161638594"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2021 06:44:16 -0800
IronPort-SDR: JeokiBdjQyGCQpLktv279AW7ZABYWAgkVnD9LcDHX/Rsx7VPdSVE0ZOv1/LIUa2fQAozYnHruW
 F63nvxOwUofA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,165,1610438400"; d="scan'208";a="396144351"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga008.jf.intel.com with SMTP; 09 Feb 2021 06:44:13 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 09 Feb 2021 16:44:12 +0200
Date: Tue, 9 Feb 2021 16:44:12 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <YCKfvPL+j34G/YGb@intel.com>
References: <20210209021918.16234-1-ville.syrjala@linux.intel.com>
 <161286252973.7943.3574089157194446990@build.alporthouse.com>
 <161286422853.7943.29461918361584777@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <161286422853.7943.29461918361584777@build.alporthouse.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Disallow plane x+w>stride on
 ilk+ with X-tiling
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

On Tue, Feb 09, 2021 at 09:50:28AM +0000, Chris Wilson wrote:
> Quoting Chris Wilson (2021-02-09 09:22:09)
> > Quoting Ville Syrjala (2021-02-09 02:19:16)
> > > +               while ((src_x + src_w) * cpp > plane_state->color_pla=
ne[0].stride) {
> > > +                       if (offset =3D=3D 0) {
> > > +                               drm_dbg_kms(&dev_priv->drm,
> > > +                                           "Unable to find suitable =
display surface offset due to X-tiling\n");
> > > +                               return -EINVAL;
> > > +                       }
> > > +
> > > +                       offset =3D intel_plane_adjust_aligned_offset(=
&src_x, &src_y, plane_state, 0,
> > > +                                                                  of=
fset, offset - alignment);
> =

> > The reason for choosing a nearby tile offset was to reduce src_x/src_y
> > to fit within the crtc limits. While remapping could be used to solve
> > that, the aligned_offset computation allows reuse of a single view.
> =

> Should there not be a second constraint on the loop to make sure src_x +
> src_w is less than 4095/8191/etc?

Yeah, but we don't have that in the skl code either atm.
Should add it to both.

And if it can actually fail I guess we should just fall back
to remapping rather than telling the user they can't have a
working display. So far I never did the mental gymnastics to
come up with an actually failing scenario.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
