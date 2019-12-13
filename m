Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CBDA11E8E1
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 18:06:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E47FF6EB54;
	Fri, 13 Dec 2019 17:06:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D40086EB54
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 17:06:05 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Dec 2019 09:06:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,309,1571727600"; d="scan'208";a="211497156"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 13 Dec 2019 09:06:02 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 13 Dec 2019 19:06:01 +0200
Date: Fri, 13 Dec 2019 19:06:01 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191213170601.GB1208@intel.com>
References: <20191213152823.26817-1-ville.syrjala@linux.intel.com>
 <157625247338.7535.668231195608100084@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <157625247338.7535.668231195608100084@skylake-alporthouse-com>
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

On Fri, Dec 13, 2019 at 03:54:33PM +0000, Chris Wilson wrote:
> Quoting Ville Syrjala (2019-12-13 15:28:23)
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > Include dev_name() in the tracpoints so one can filter based on
> > the device.
> > =

> > Example:
> > echo 'dev=3D=3D"0000:00:02.0"' > events/i915/intel_cpu_fifo_underrun/fi=
lter
> > =

> > TODO: maybe don't both specifying the field name always and just
> >       make it 'dev' (or whatever) always?
> > TODO: add for other tracpoints too if this is deemed good enough
> > =

> > Suggested-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_trace.h | 96 +++++++++++++++++++++----------
> >  1 file changed, 65 insertions(+), 31 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/i915_trace.h b/drivers/gpu/drm/i915/i=
915_trace.h
> > index 7ef7a1e1664c..8931b6756f44 100644
> > --- a/drivers/gpu/drm/i915/i915_trace.h
> > +++ b/drivers/gpu/drm/i915/i915_trace.h
> > @@ -20,11 +20,18 @@
> >  =

> >  /* watermark/fifo updates */
> >  =

> > +#define __dev_name_i915(field, i915) __string(field, dev_name((i915)->=
drm.dev))
> > +#define __dev_name_crtc(field, crtc) __string(field, dev_name((crtc)->=
base.dev->dev))
> > +#define __assign_dev_name_i915(field, i915) __assign_str(field, dev_na=
me((i915)->drm.dev))
> > +#define __assign_dev_name_crtc(field, crtc) __assign_str(field, dev_na=
me((crtc)->base.dev->dev))
> > +#define __get_dev_name(field) __get_str(field)
> =

> Storing the string is quite expensive, I thought. Can we stash the i915
> and stringify in the TP_printk? Or is stashing the string the secret for
> the dev=3D=3D filter?

Last time I stashed a pointer in there people complained that it can
disappear before being consumed and cause a very theoretical oops.
But I guess we could stash just the pci devfn and whatnot.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
