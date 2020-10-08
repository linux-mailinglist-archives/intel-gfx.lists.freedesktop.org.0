Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06A082870C2
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Oct 2020 10:34:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C28986EA35;
	Thu,  8 Oct 2020 08:34:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8ACDB6EA35
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Oct 2020 08:34:38 +0000 (UTC)
IronPort-SDR: 3NF3bbgDMTiqK+FsMgLf7C1UnzN0KyRr5j15E1QS3EyQ3dQtqUnNglCWpFx5Vf9k62FMQR+ttQ
 dRZ9svbrNorg==
X-IronPort-AV: E=McAfee;i="6000,8403,9767"; a="153134738"
X-IronPort-AV: E=Sophos;i="5.77,350,1596524400"; d="scan'208";a="153134738"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2020 01:34:37 -0700
IronPort-SDR: t45r7gMmT0upreuMFV81h1l/iu04WAnJL8sxYRAvP8YgTBV9NEfL34lzkoGl+wrWhWzh3vrRhF
 aS5y8Grtxg3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,350,1596524400"; d="scan'208";a="349419237"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 08 Oct 2020 01:34:35 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 08 Oct 2020 11:34:34 +0300
Date: Thu, 8 Oct 2020 11:34:34 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20201008083434.GF6112@intel.com>
References: <20201006143349.5561-1-ville.syrjala@linux.intel.com>
 <20201006143349.5561-4-ville.syrjala@linux.intel.com>
 <20201007222848.fxik7ddhtrao5vje@ldmartin-desk1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201007222848.fxik7ddhtrao5vje@ldmartin-desk1>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 03/20] drm/i915: Add PORT_TCn aliases to
 enum port
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

On Wed, Oct 07, 2020 at 03:28:48PM -0700, Lucas De Marchi wrote:
> On Tue, Oct 06, 2020 at 05:33:32PM +0300, Ville Syrj=E4l=E4 wrote:
> >diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/=
drm/i915/display/intel_display.h
> >index 8c93253cbd95..a39be3c9e0cf 100644
> >--- a/drivers/gpu/drm/i915/display/intel_display.h
> >+++ b/drivers/gpu/drm/i915/display/intel_display.h
> >@@ -207,6 +207,14 @@ enum port {
> > 	PORT_H,
> > 	PORT_I,
> >
> >+	/* tgl+ */
> >+	PORT_TC1 =3D PORT_D,
> =

> ICL also uses TC ports but there PORT_TC1 would be PORT_C. Just ignore
> that and only add the aliases for tgl+ or should we also add for ICL to
> avoid confusion?

The spec still uses the DDI C-F names on icl for the TC DDIs.
My idea here is to match the spec terminology.

However, it's going to get annoying in the future because some
of the TC DDIs revert back to alphabetic names in the future,
and in a way that doesn't match the original alphabetic names.
Not quite sure how to deal with that. Probably more aliases,
but this time with a platform specific suffix :(

> =

> Lucas De Marchi
> =

> >+	PORT_TC2,
> >+	PORT_TC3,
> >+	PORT_TC4,
> >+	PORT_TC5,
> >+	PORT_TC6,
> >+
> > 	I915_MAX_PORTS
> > };
> >
> >-- =

> >2.26.2
> >
> >_______________________________________________
> >Intel-gfx mailing list
> >Intel-gfx@lists.freedesktop.org
> >https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
