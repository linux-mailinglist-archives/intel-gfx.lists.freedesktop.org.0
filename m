Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C33CAC0A29
	for <lists+intel-gfx@lfdr.de>; Thu, 22 May 2025 12:58:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D26D10E77F;
	Thu, 22 May 2025 10:58:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ge6mhJiD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5143C10E7AA
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 May 2025 10:58:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747911494; x=1779447494;
 h=mime-version:content-transfer-encoding:in-reply-to:
 references:subject:from:cc:to:date:message-id;
 bh=dtIdeBILIEVkrXRtwvbqd6idFoqP4YdRc38caMjTwt4=;
 b=Ge6mhJiDkMf4qviCN5IVj8m31HYsuE3k4vTTxGEmLZZlXHadpghCgauN
 g5QQtzqH+UKyioBTYUM0waCRmmghUG096UP4GfVjRKGyzbXnj2aRXayV2
 tHoFWN7msBgChGuu5KLSruX02jONiRo7LSY96Gay/jYS59nLu0KkzMYpz
 jnqhHNSYgzOt0We49+5Pq23e0D72fwpjSNL1438sWvZl90/7SMDT+n+oo
 WuMfH+GT9LNLXDaDQ7Yg0JItQ7S6mrrIVMM7VduBEgC7le9FjQHuXi9rX
 extkmHzbgr9GwuQUZIcyFq0sCXbi3RIC7FrBoYnS5Vl6mcBzqUpXJSKCQ w==;
X-CSE-ConnectionGUID: zi9Bewj0QW2oDFkDOvp9LQ==
X-CSE-MsgGUID: m26icKyYQwe9cScCKwHWVw==
X-IronPort-AV: E=McAfee;i="6700,10204,11440"; a="67486512"
X-IronPort-AV: E=Sophos;i="6.15,305,1739865600"; d="scan'208";a="67486512"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2025 03:58:12 -0700
X-CSE-ConnectionGUID: hye4iOL0RcmFRlQ4FGhZOg==
X-CSE-MsgGUID: MJGPGi6OQ1GfWuUlMA0QBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,305,1739865600"; d="scan'208";a="140615706"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.245.245.66])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2025 03:58:10 -0700
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <aC7vyURBb6k8TqBI@intel.com>
References: <20250411144313.11660-1-ville.syrjala@linux.intel.com>
 <20250411144313.11660-2-ville.syrjala@linux.intel.com>
 <174789510455.12498.1410930072009074388@jlahtine-mobl>
 <aC7vyURBb6k8TqBI@intel.com>
Subject: Re: [PATCH v2 1/2] drm/i915/gem: Allow EXEC_CAPTURE on recoverable
 contexts on DG1
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, Tvrtko Ursulin <tursulin@ursulin.net>,
 stable@vger.kernel.org, Matthew Auld <matthew.auld@intel.com>,
 Thomas =?utf-8?q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>
To: Ville =?utf-8?b?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Thu, 22 May 2025 13:58:07 +0300
Message-ID: <174791148753.46844.12744171979550995848@jlahtine-mobl>
User-Agent: alot/0.12.dev7+g16b50e5f
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Ville Syrj=C3=A4l=C3=A4 (2025-05-22 12:35:05)
> On Thu, May 22, 2025 at 09:25:04AM +0300, Joonas Lahtinen wrote:
> > (+ Tvrkto)
> >=20
> > Quoting Ville Syrjala (2025-04-11 17:43:12)

<SNIP>

> > > +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > > @@ -2013,7 +2013,7 @@ static int eb_capture_stage(struct i915_execbuf=
fer *eb)
> > >                         continue;
> > > =20
> > >                 if (i915_gem_context_is_recoverable(eb->gem_context) =
&&
> > > -                   (IS_DGFX(eb->i915) || GRAPHICS_VER_FULL(eb->i915)=
 > IP_VER(12, 0)))
> > > +                   GRAPHICS_VER_FULL(eb->i915) > IP_VER(12, 10))
> >=20
> > The IS_DGFX check was there because the error capture is expected to be
> > broken on anything with VRAM.
>=20
> I don't care. It's a regression that prevents current userspace
> from working.

(Spoiler: The userspace fix seems to be accepted and released.)

It's always bit murky when a platform stays under force_probe for
extended period of time, but it was never considered to be finalized from
memory management perspective at the time of adding this check.

Now you are just unblocking codepaths that are simply not expected to work,
and as it's in rather fragile part of the device resets so that's bit of
a no-go.

So if you really would prefer to drop this check for DG1, options would be =
to
implement the page copying for VRAM (probably bit much work) or alternative=
ly
we could just ignore the flag for DG1 specifically.

> > If we have already submitted an userspace fix to remove that flag, that
> > would be the right way to go.
>=20
> There has a been an open pull request for that for who knows how long
> without any action.
>=20
> >=20
> > So reverting this for now.
>=20
> *You* make sure a userspace fix actually gets released then.

Per GIT history[1] it should already be part of media-driver release 25.2.3
which was released last week. Or am I looking at the wrong fix?

Regards, Joonas

[1] https://github.com/intel/media-driver/commit/93c07d9b4b96a78bab21f6acd4=
eb863f4313ea4a
