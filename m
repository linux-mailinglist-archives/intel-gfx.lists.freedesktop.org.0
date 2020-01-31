Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32DBB14EBDA
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 12:42:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BB076E97B;
	Fri, 31 Jan 2020 11:42:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46C816E97B
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 11:42:55 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jan 2020 03:42:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,385,1574150400"; d="scan'208";a="323342529"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 31 Jan 2020 03:42:52 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 31 Jan 2020 13:42:52 +0200
Date: Fri, 31 Jan 2020 13:42:52 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>
Message-ID: <20200131114252.GL13686@intel.com>
References: <20200129182034.26138-1-ville.syrjala@linux.intel.com>
 <db28322f94782e13905cac3ccdaaef9e3cb665b7.camel@intel.com>
 <5a7b6710-fb66-ca0e-666b-4b98c0e8052e@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5a7b6710-fb66-ca0e-666b-4b98c0e8052e@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 1/9] drm/i915/dsb: Replace HAS_DSB check
 with dsb->cmd_buf check
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

On Fri, Jan 31, 2020 at 03:04:17PM +0530, Manna, Animesh wrote:
> =

> On 30-01-2020 23:43, Souza, Jose wrote:
> > On Wed, 2020-01-29 at 20:20 +0200, Ville Syrjala wrote:
> >> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> >>
> >> We may want to not use the DSB even if the platform has one.
> >> So replace the HAS_DSB check in the _put() with a cmd_buf check
> >> that will work in either case.
> > Reviewed-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> >
> >> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> >> ---
> >>   drivers/gpu/drm/i915/display/intel_dsb.c | 3 +--
> >>   1 file changed, 1 insertion(+), 2 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c
> >> b/drivers/gpu/drm/i915/display/intel_dsb.c
> >> index 9dd18144a664..12776f09f227 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> >> @@ -160,9 +160,8 @@ intel_dsb_get(struct intel_crtc *crtc)
> >>   void intel_dsb_put(struct intel_dsb *dsb)
> >>   {
> >>   	struct intel_crtc *crtc =3D container_of(dsb, typeof(*crtc),
> >> dsb);
> >> -	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> >>   =

> >> -	if (!HAS_DSB(i915))
> >> +	if (!dsb->cmd_buf)
> =

> Ville and Jose,
> =

> Have a concern here. In intel_dsb_get() if get failure during i915_gem_ob=
ject_create_internal, i915_gem_object_ggtt_pin, i915_gem_object_pin_map the=
n we may not have dsb->cmd_buf.
> Then ref-count mechanism will break.

Hmm. Yeah. The refcount WARN could easily be fixed by either
decrementung refcount on get() fail or doing the "let's never use
DSB" patch after the refcount inc.

> I feel HAS_DSB(i915) check is better than dsb->cmd_buf otherwise need to =
do some cleanup is intel_dsb_get() as well.
> =

> Regards,
> Animesh
> =

> >>   		return;
> >>   =

> >>   	if (WARN_ON(dsb->refcount =3D=3D 0))
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
