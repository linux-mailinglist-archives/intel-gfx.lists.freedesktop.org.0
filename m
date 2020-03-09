Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FDA317E26C
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Mar 2020 15:21:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0F9B6E15F;
	Mon,  9 Mar 2020 14:21:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67BF36E15F
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Mar 2020 14:21:24 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Mar 2020 07:21:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,518,1574150400"; d="scan'208";a="260431538"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 09 Mar 2020 07:21:21 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 09 Mar 2020 16:21:20 +0200
Date: Mon, 9 Mar 2020 16:21:20 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200309142120.GX13686@intel.com>
References: <20191213152823.26817-1-ville.syrjala@linux.intel.com>
 <157625247338.7535.668231195608100084@skylake-alporthouse-com>
 <20191213170601.GB1208@intel.com> <20191213171739.GC1208@intel.com>
 <158361919091.30296.10666589395477736863@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <158361919091.30296.10666589395477736863@build.alporthouse.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add device name to display
 tracepoints
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

On Sat, Mar 07, 2020 at 10:13:10PM +0000, Chris Wilson wrote:
> Quoting Ville Syrj=E4l=E4 (2019-12-13 17:17:39)
> > On Fri, Dec 13, 2019 at 07:06:01PM +0200, Ville Syrj=E4l=E4 wrote:
> > > On Fri, Dec 13, 2019 at 03:54:33PM +0000, Chris Wilson wrote:
> > > > Quoting Ville Syrjala (2019-12-13 15:28:23)
> > > > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > > =

> > > > > Include dev_name() in the tracpoints so one can filter based on
> > > > > the device.
> > > > > =

> > > > > Example:
> > > > > echo 'dev=3D=3D"0000:00:02.0"' > events/i915/intel_cpu_fifo_under=
run/filter
> > > > > =

> > > > > TODO: maybe don't both specifying the field name always and just
> > > > >       make it 'dev' (or whatever) always?
> > > > > TODO: add for other tracpoints too if this is deemed good enough
> > > > > =

> > > > > Suggested-by: Chris Wilson <chris@chris-wilson.co.uk>
> > > > > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > > ---
> > > > >  drivers/gpu/drm/i915/i915_trace.h | 96 +++++++++++++++++++++----=
------
> > > > >  1 file changed, 65 insertions(+), 31 deletions(-)
> > > > > =

> > > > > diff --git a/drivers/gpu/drm/i915/i915_trace.h b/drivers/gpu/drm/=
i915/i915_trace.h
> > > > > index 7ef7a1e1664c..8931b6756f44 100644
> > > > > --- a/drivers/gpu/drm/i915/i915_trace.h
> > > > > +++ b/drivers/gpu/drm/i915/i915_trace.h
> > > > > @@ -20,11 +20,18 @@
> > > > >  =

> > > > >  /* watermark/fifo updates */
> > > > >  =

> > > > > +#define __dev_name_i915(field, i915) __string(field, dev_name((i=
915)->drm.dev))
> > > > > +#define __dev_name_crtc(field, crtc) __string(field, dev_name((c=
rtc)->base.dev->dev))
> > > > > +#define __assign_dev_name_i915(field, i915) __assign_str(field, =
dev_name((i915)->drm.dev))
> > > > > +#define __assign_dev_name_crtc(field, crtc) __assign_str(field, =
dev_name((crtc)->base.dev->dev))
> > > > > +#define __get_dev_name(field) __get_str(field)
> > > > =

> > > > Storing the string is quite expensive, I thought. Can we stash the =
i915
> > > > and stringify in the TP_printk? Or is stashing the string the secre=
t for
> > > > the dev=3D=3D filter?
> > > =

> > > Last time I stashed a pointer in there people complained that it can
> > > disappear before being consumed and cause a very theoretical oops.
> > > But I guess we could stash just the pci devfn and whatnot.
> > =

> > I believe 'domain + bus + devfn' would amount to 4 bytes. The downside
> > is that it'd be just an integer so we'd lose the dev=3Ddomain:bus:dev.fn
> > syntax for the filter. Suppose I could try to implement a new filter
> > type for it, but no guarantees that would get accepted. Seems a bit too
> > pci specific for kernel/trace/.
> =

> Put the name string in there, it's simplest and most foolproof.

You mean just go with the original patch?

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
