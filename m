Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 120D31D82E9
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2020 20:01:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66C7B6E457;
	Mon, 18 May 2020 18:01:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 687456E457
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 May 2020 18:01:20 +0000 (UTC)
IronPort-SDR: PBdu+UM+0a2tOgBevtj4mNWBKF2ytdr45gP13y3fsCDhCJIgydwNh+QDDkMfeYAc6sPqCRegZM
 K7RzmO6NR1/Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2020 11:01:19 -0700
IronPort-SDR: iAA1hn6POaQavKnPObmsCTqRtHejHvhqG8RuWOMXQXM7f35n2fHsCGglqRay367dC5DE9nzhxl
 OrXHgMnhZGkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,407,1583222400"; d="scan'208";a="267604257"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 18 May 2020 11:01:17 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 18 May 2020 21:01:16 +0300
Date: Mon, 18 May 2020 21:01:16 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200518180116.GS6112@intel.com>
References: <20200516161542.8032-1-ville.syrjala@linux.intel.com>
 <20200518121354.20401-1-ville.syrjala@linux.intel.com>
 <158980765594.17769.1625000273900850456@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <158980765594.17769.1625000273900850456@build.alporthouse.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Fix dbuf slice mask when
 turning off all the pipes
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

On Mon, May 18, 2020 at 02:14:15PM +0100, Chris Wilson wrote:
> Quoting Ville Syrjala (2020-05-18 13:13:54)
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > The current dbuf slice computation only happens when there are
> > active pipes. If we are turning off all the pipes we just leave
> > the dbuf slice mask at it's previous value, which may be something
> > other that BIT(S1). If runtime PM will kick in it will however
> > turn off everything but S1. Then on the next atomic commit (if
> > the new dbuf slice mask matches the stale value we left behind)
> > the code will not turn on the other slices we now need. This will
> > lead to underruns as the planes are trying to use a dbuf slice
> > that's not powered up.
> > =

> > To work around let's just just explicitly set the dbuf slice mask
> > to BIT(S1) when we are turning off all the pipes. Really the code
> > should just calculate this stuff the same way regardless whether
> > the pipes are on or off, but we're not quite there yet (need a
> > bit more work on the dbuf state for that).
> > =

> > v2: Let's not put the fix into dead code
> > =

> > Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > Acked-by: Chris Wilson <chris@chris-wilson.co.uk> #v1
> Acked-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Fixes: 3cf43cdc63fb ("drm/i915: Introduce proper dbuf state")
> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> -Chris

v2 seems to have done the trick. CI gave up on the reverts anyway so
let's go with this one then. Pushed along with Chris's smatch fix.

Apologies for the massive cockup.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
