Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8019D1835AD
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2020 17:01:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 835E789C89;
	Thu, 12 Mar 2020 16:01:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB9AE89C3B;
 Thu, 12 Mar 2020 16:01:18 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Mar 2020 09:01:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,545,1574150400"; d="scan'208";a="236884856"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 12 Mar 2020 09:01:13 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 12 Mar 2020 18:01:12 +0200
Date: Thu, 12 Mar 2020 18:01:12 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Laxminarayan Bharadiya, Pankaj" <pankaj.laxminarayan.bharadiya@intel.com>
Message-ID: <20200312160112.GH13686@intel.com>
References: <20200225070545.4482-1-pankaj.laxminarayan.bharadiya@intel.com>
 <20200312140434.GG13686@intel.com>
 <E92BA18FDE0A5B43B7B3DA7FCA031286057B3798@BGSMSX107.gar.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E92BA18FDE0A5B43B7B3DA7FCA031286057B3798@BGSMSX107.gar.corp.intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [RFC][PATCH 0/5] Introduce drm scaling filter
 property
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
Cc: "mripard@kernel.org" <mripard@kernel.org>,
 "tzimmermann@suse.de" <tzimmermann@suse.de>, "Kunche,
 Kishore" <kishore.kunche@intel.com>, "airlied@linux.ie" <airlied@linux.ie>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "Nautiyal,
 Ankit K" <ankit.k.nautiyal@intel.com>,
 "mihail.atanassov@arm.com" <mihail.atanassov@arm.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 12, 2020 at 03:37:03PM +0000, Laxminarayan Bharadiya, Pankaj wr=
ote:
> =

> =

> > -----Original Message-----
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Sent: 12 March 2020 19:35
> > To: Laxminarayan Bharadiya, Pankaj
> > <pankaj.laxminarayan.bharadiya@intel.com>
> > Cc: jani.nikula@linux.intel.com; daniel@ffwll.ch; intel-
> > gfx@lists.freedesktop.org; dri-devel@lists.freedesktop.org; airlied@lin=
ux.ie;
> > maarten.lankhorst@linux.intel.com; tzimmermann@suse.de;
> > mripard@kernel.org; mihail.atanassov@arm.com; linux-
> > kernel@vger.kernel.org; Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> > Subject: Re: [RFC][PATCH 0/5] Introduce drm scaling filter property
> > =

> > On Tue, Feb 25, 2020 at 12:35:40PM +0530, Pankaj Bharadiya wrote:
> > > Integer scaling (IS) is a nearest-neighbor upscaling technique that
> > > simply scales up the existing pixels by an integer (i.e., whole
> > > number) multiplier. Nearest-neighbor (NN) interpolation works by
> > > filling in the missing color values in the upscaled image with that of
> > > the coordinate-mapped nearest source pixel value.
> > >
> > > Both IS and NN preserve the clarity of the original image. In
> > > contrast, traditional upscaling algorithms, such as bilinear or
> > > bicubic interpolation, result in blurry upscaled images because they
> > > employ interpolation techniques that smooth out the transition from
> > > one pixel to another.  Therefore, integer scaling is particularly
> > > useful for pixel art games that rely on sharp, blocky images to
> > > deliver their distinctive look.
> > >
> > > Many gaming communities have been asking for integer-mode scaling
> > > support, some links and background:
> > >
> > > https://software.intel.com/en-us/articles/integer-scaling-support-on-i
> > > ntel-graphics http://tanalin.com/en/articles/lossless-scaling/
> > > https://community.amd.com/thread/209107
> > > https://www.nvidia.com/en-us/geforce/forums/game-ready-drivers/13/1002
> > > /feature-request-nonblurry-upscaling-at-integer-rat/
> > >
> > > This patch series -
> > >   - Introduces new scaling filter property to allow userspace to
> > >     select  the driver's default scaling filter or Nearest-neighbor(N=
N)
> > >     filter for scaling operations on crtc/plane.
> > >   - Implements and enable integer scaling for i915
> > >
> > > Userspace patch series link: TBD.
> > =

> > That needs to be done or this will go nowhere.
> =

> Yes, Sameer is working on enabling this feature in Kodi. =

> Sameer, please share link here once you post patches.

And who is doing it for other stuff? I think this would be most useful
for games/emulators and such so IMO we should find a way to get it to
the hands of users doing those things.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
