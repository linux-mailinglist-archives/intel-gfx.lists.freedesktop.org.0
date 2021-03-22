Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06E753447BC
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Mar 2021 15:48:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05EFE6E4B7;
	Mon, 22 Mar 2021 14:48:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D3C26E4B7
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Mar 2021 14:48:47 +0000 (UTC)
IronPort-SDR: ayMPlCT5cgtA4uMSe4RrwTrklydzC5KCm2ubT0+1ehnzCVVCCZFxsWLVWZ5D0kLr8TPerB9rdy
 RJqHbZQlntIA==
X-IronPort-AV: E=McAfee;i="6000,8403,9931"; a="187962520"
X-IronPort-AV: E=Sophos;i="5.81,269,1610438400"; d="scan'208";a="187962520"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2021 07:48:47 -0700
IronPort-SDR: zDmcqWFFYfj8KZGBAQBkDn4BpSFjvWrE7qAvurk3Z1es1rDMVWKtUzaayMDU8ob81ydPBTzvbh
 hxJ6DVIFKEPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,269,1610438400"; d="scan'208";a="381007226"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga007.fm.intel.com with SMTP; 22 Mar 2021 07:48:45 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 22 Mar 2021 16:48:44 +0200
Date: Mon, 22 Mar 2021 16:48:44 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <YFiuTGbrhSR+eKK/@intel.com>
References: <20210321161038.9329-1-ville.syrjala@linux.intel.com>
 <161634408760.31629.1053248022479151885@build.alporthouse.com>
 <161634423285.31629.4117583325553566238@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <161634423285.31629.4117583325553566238@build.alporthouse.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Avoid div-by-zero on gen2
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

On Sun, Mar 21, 2021 at 04:30:32PM +0000, Chris Wilson wrote:
> Quoting Chris Wilson (2021-03-21 16:28:07)
> > Quoting Ville Syrjala (2021-03-21 16:10:38)
> > > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/d=
rm/i915/gem/i915_gem_mman.c
> > > index ec28a6cde49b..0b2434e29d00 100644
> > > --- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> > > +++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> > > @@ -189,7 +189,7 @@ compute_partial_view(const struct drm_i915_gem_ob=
ject *obj,
> > >         struct i915_ggtt_view view;
> > >  =

> > >         if (i915_gem_object_is_tiled(obj))
> > > -               chunk =3D roundup(chunk, tile_row_pages(obj));
> > > +               chunk =3D roundup(chunk, tile_row_pages(obj) ?: 1);
> > =

> > I was thinking the answer would be to align to the next page, and hey
> > presto!
> =

> Wait, the tile row cannot be a single page. Something else is zero that
> should not be.

How come? At least i915_tiling_ok() doesn't enforce any
bigger lower bound.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
