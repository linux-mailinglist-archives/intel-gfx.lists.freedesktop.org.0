Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A967D3A4874
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Jun 2021 20:15:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BD1C6F3B5;
	Fri, 11 Jun 2021 18:15:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 797DE6E081
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Jun 2021 18:15:26 +0000 (UTC)
IronPort-SDR: j3ktFa61Nvgv3d6kQaYkDYIIGxxS7j2FgasfZ8icI5F/nycDr2N5DQEVbxWKONqf9OE7LP0c+b
 rWBS+NgQUqBg==
X-IronPort-AV: E=McAfee;i="6200,9189,10012"; a="269429714"
X-IronPort-AV: E=Sophos;i="5.83,267,1616482800"; d="scan'208";a="269429714"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2021 11:15:25 -0700
IronPort-SDR: kaWQEWtyfJSjmQUgZbxExMpZbzUGyudilS9/cNrj3eom73jsyr68iAhNxEintZxONSxRNhIQ0b
 BX8lxCWGzrng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,267,1616482800"; d="scan'208";a="486672104"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga002.fm.intel.com with SMTP; 11 Jun 2021 11:15:22 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 11 Jun 2021 21:15:22 +0300
Date: Fri, 11 Jun 2021 21:15:22 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <YMOoOmrc8tkbxDUw@intel.com>
References: <20210514232247.144542-1-jose.souza@intel.com>
 <20210514232247.144542-4-jose.souza@intel.com>
 <YL8btV/81CFi+ytm@intel.com>
 <07ca2b6b6e730531d4387436002cc86608839398.camel@intel.com>
 <YMIDF+fA5GTJ8Bqs@intel.com>
 <57a75282acd88b3613c2f737dde1c0ba529d34c8.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <57a75282acd88b3613c2f737dde1c0ba529d34c8.camel@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 4/4] drm/i915/display: Drop FIXME about
 turn off infoframes
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

On Thu, Jun 10, 2021 at 05:44:12PM +0000, Souza, Jose wrote:
> On Thu, 2021-06-10 at 15:18 +0300, Ville Syrj=E4l=E4 wrote:
> > On Wed, Jun 09, 2021 at 07:25:36PM +0000, Souza, Jose wrote:
> > > On Tue, 2021-06-08 at 10:26 +0300, Ville Syrj=E4l=E4 wrote:
> > > > On Fri, May 14, 2021 at 04:22:47PM -0700, Jos=E9 Roberto de Souza w=
rote:
> > > > > intel_dp_set_infoframes() call in intel_ddi_post_disable_dp() will
> > > > > take care to disable all enabled infoframes.
> > > > > =

> > > > > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > > Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> > > > > ---
> > > > >  drivers/gpu/drm/i915/display/intel_ddi.c | 1 -
> > > > >  1 file changed, 1 deletion(-)
> > > > > =

> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/g=
pu/drm/i915/display/intel_ddi.c
> > > > > index 5bc5528f3091..d3bc5a1a936a 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > > > @@ -2762,7 +2762,6 @@ static void intel_ddi_pre_enable(struct int=
el_atomic_state *state,
> > > > >  					conn_state);
> > > > >  =

> > > > >  		/* FIXME precompute everything properly */
> > > > > -		/* FIXME how do we turn infoframes off again? */
> > > > =

> > > > The FIXME was there for LSPCON and shouldn't have been removed.
> > > > No one has yet figured out how to do this.
> > > =

> > > intel_ddi_post_disable_dp()->intel_dp_set_infoframes() will be execut=
ed for LSPCON, or am I missing something?
> > =

> > LSPCON generates its own infoframes, so turning off the video DIP does
> > diddly squat.
> > =

> =

> It would not be the lspcon job to do so when DP -> lspcon video is off?

LSPCON is a blackbox and no one knows what it actually does. Which is
pretty much the point of the FIXME.

> Anyways will be sending the revert in a few minutes, please review that i=
f we really need this fixme back.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
