Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B56AD18BBDD
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2020 17:06:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2137B6EA2C;
	Thu, 19 Mar 2020 16:06:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADE61897CD
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Mar 2020 16:06:40 +0000 (UTC)
IronPort-SDR: zC2RE7x1WXI6A9+1qOiu379Tf57YHn1AX3NIaTwRL6zuuNejzsvD4NqksHRczv72d7fw/tMCrE
 g/Bo2WBhlQvA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2020 09:06:40 -0700
IronPort-SDR: rE+f2JKXhM+O+rQmHZJg4TsoVIpVEkMvFSipBWjeabrt7gmI8cRmaDXGxnOgpA6s142F/7hv5K
 MNr3HCp9wT9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,572,1574150400"; d="scan'208";a="324557841"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 19 Mar 2020 09:06:37 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 19 Mar 2020 18:06:37 +0200
Date: Thu, 19 Mar 2020 18:06:37 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <20200319160637.GL13686@intel.com>
References: <20200311083632.3249-1-anshuman.gupta@intel.com>
 <20200313073917.aeki7lm6zupx7y26@ldmartin-desk1>
 <20200318164827.GC13686@intel.com>
 <20200319075317.GB11440@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200319075317.GB11440@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Enable non-contiguous pipe fusing
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 19, 2020 at 01:23:18PM +0530, Anshuman Gupta wrote:
> On 2020-03-18 at 18:48:27 +0200, Ville Syrj=E4l=E4 wrote:
> > On Fri, Mar 13, 2020 at 12:39:17AM -0700, Lucas De Marchi wrote:
> > > On Wed, Mar 11, 2020 at 02:06:32PM +0530, Anshuman Gupta wrote:
> > > >Allow 3-display pipes SKU system with any combination
> > > >in INTEL_INFO pipe mask.
> > > >B.Spec:50075
> > > >
> > > >changes since RFC:
> > > >- using intel_pipe_mask_is_valid() function to check integrity of
> > > >  pipe_mask. [Ville]
> > > >v2:
> > > >- simplify condition in intel_pipe_mask_is_valid(). [Ville]
> > > >v3:
> > > >- removed non-contiguous pipe fusing check. [Lucas]
> > > =

> > > I'd also say in the commit message that the support for non-contiguous
> > > pipe fusing is *already* supported in the driver. So this check here
> > > doesn't make sense anymore and since it's an unlike condition we
> > > can just stop checking.
> > =

> > BTW I think we still have those crtc index=3D=3Dpipe asserts in the code
> > somewhere. Now that all the (known) assumptions have been fixed we can
> > remove the WARNs.
> yes we still have drm_WARN_ON(&dev_priv->drm, drm_crtc_index(&crtc->base)=
 !=3D crtc->pipe)
> in intel_crtc_init.
> AFAIU the idea was to have the WARN_ON to know that we are running a brok=
en driver
> (if there any unknown assumption is still left out).

Unknown assumptions are by definition unknown. The WARN will not help
with those.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
