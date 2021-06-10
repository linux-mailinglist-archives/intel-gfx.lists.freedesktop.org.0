Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C630E3A2B52
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jun 2021 14:18:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B15DB89EB4;
	Thu, 10 Jun 2021 12:18:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AA1589EB4
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Jun 2021 12:18:34 +0000 (UTC)
IronPort-SDR: JJm1Uc1xVN9k6kdUlbqY3y56sJ6HWVgz4IBjXBcLV0ProO0Zb7Z9nF8NQS/SSp9A3u38vDRD8z
 hxjZUMShd8PQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10010"; a="226678247"
X-IronPort-AV: E=Sophos;i="5.83,263,1616482800"; d="scan'208";a="226678247"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 05:18:34 -0700
IronPort-SDR: 6XwORwHgDrAXTo8/JR2wVcvuifZFBzlHBe7x1LLRwVIyHio2NkJP7ClQiDun7kV+1lxTFA3G8w
 FBSu3k82k18w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,263,1616482800"; d="scan'208";a="402669259"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga006.jf.intel.com with SMTP; 10 Jun 2021 05:18:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Jun 2021 15:18:31 +0300
Date: Thu, 10 Jun 2021 15:18:31 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <YMIDF+fA5GTJ8Bqs@intel.com>
References: <20210514232247.144542-1-jose.souza@intel.com>
 <20210514232247.144542-4-jose.souza@intel.com>
 <YL8btV/81CFi+ytm@intel.com>
 <07ca2b6b6e730531d4387436002cc86608839398.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <07ca2b6b6e730531d4387436002cc86608839398.camel@intel.com>
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

On Wed, Jun 09, 2021 at 07:25:36PM +0000, Souza, Jose wrote:
> On Tue, 2021-06-08 at 10:26 +0300, Ville Syrj=E4l=E4 wrote:
> > On Fri, May 14, 2021 at 04:22:47PM -0700, Jos=E9 Roberto de Souza wrote:
> > > intel_dp_set_infoframes() call in intel_ddi_post_disable_dp() will
> > > take care to disable all enabled infoframes.
> > > =

> > > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_ddi.c | 1 -
> > >  1 file changed, 1 deletion(-)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/d=
rm/i915/display/intel_ddi.c
> > > index 5bc5528f3091..d3bc5a1a936a 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > @@ -2762,7 +2762,6 @@ static void intel_ddi_pre_enable(struct intel_a=
tomic_state *state,
> > >  					conn_state);
> > >  =

> > >  		/* FIXME precompute everything properly */
> > > -		/* FIXME how do we turn infoframes off again? */
> > =

> > The FIXME was there for LSPCON and shouldn't have been removed.
> > No one has yet figured out how to do this.
> =

> intel_ddi_post_disable_dp()->intel_dp_set_infoframes() will be executed f=
or LSPCON, or am I missing something?

LSPCON generates its own infoframes, so turning off the video DIP does
diddly squat.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
