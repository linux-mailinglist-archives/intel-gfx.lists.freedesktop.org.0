Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AB8F33B88F4
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Jun 2021 21:05:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA7B76EA75;
	Wed, 30 Jun 2021 19:04:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EFB26EA71;
 Wed, 30 Jun 2021 19:04:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10031"; a="205408799"
X-IronPort-AV: E=Sophos;i="5.83,312,1616482800"; d="scan'208";a="205408799"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2021 12:04:56 -0700
X-IronPort-AV: E=Sophos;i="5.83,312,1616482800"; d="scan'208";a="476407956"
Received: from dnandira-mobl.amr.corp.intel.com (HELO intel.com)
 ([10.209.157.224])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2021 12:04:55 -0700
Date: Wed, 30 Jun 2021 15:04:54 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <YNzAViVC1l4hE/uG@intel.com>
References: <YNtsfguvCRSROBUZ@intel.com>
 <87zgv7r7kg.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87zgv7r7kg.fsf@intel.com>
Subject: Re: [Intel-gfx] [PULL] drm-intel-next-fixes
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
Cc: dim-tools@lists.freedesktop.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 intel-gfx@lists.freedesktop.org, Maxime Ripard <mripard@kernel.org>,
 dri-devel@lists.freedesktop.org, Dave Airlie <airlied@gmail.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jun 30, 2021 at 01:05:35PM +0300, Jani Nikula wrote:
> On Tue, 29 Jun 2021, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> > Hi Dave and Daniel,
> >
> > Here goes drm-intel-next-fixes-2021-06-29:
> >
> > The biggest fix is the restoration of mmap ioctl for gen12 integrated p=
arts
> > which lack was breaking ADL-P with media stack.
> > Besides that a small selftest fix and a theoretical overflow on
> > i915->pipe_to_crtc_mapping.
> =

> My last fixes pull for v5.13 fell between the cracks [1]. There was one
> stable worthy fix, but since it was still in drm-intel-fixes when you
> ran dim cherry-pick-next-fixes, it was skipped for drm-intel-next-fixes.
> =

> I've now dropped the commit and pushed v5.13 to drm-intel-fixes, as
> we're past that point. Subsequent dim cherry-pick-next-fixes should pick
> it up now.

it didn't, probably because the Fixes hash not being part of the drm-next y=
et?!

I can cherry-pick that directly. Please let me know the commit id.

Thanks,
Rodrigo.

> =

> Please do another next fixes pull request with that. (It's okay to pull
> this one already though, doesn't make a difference.)
> =

> =

> BR,
> Jani.
> =

> =

> [1] https://lore.kernel.org/r/87czsbu15r.fsf@intel.com
> =

> =

> =

> >
> > Thanks,
> > Rodrigo.
> >
> > The following changes since commit 1bd8a7dc28c1c410f1ceefae1f2a97c06d1a=
67c2:
> >
> >   Merge tag 'exynos-drm-next-for-v5.14' of git://git.kernel.org/pub/scm=
/linux/kernel/git/daeinki/drm-exynos into drm-next (2021-06-11 14:19:12 +10=
00)
> >
> > are available in the Git repository at:
> >
> >   git://anongit.freedesktop.org/drm/drm-intel tags/drm-intel-next-fixes=
-2021-06-29
> >
> > for you to fetch changes up to c90c4c6574f3feaf2203b5671db1907a1e15c653:
> >
> >   drm/i915: Reinstate the mmap ioctl for some platforms (2021-06-28 07:=
43:56 -0400)
> >
> > ----------------------------------------------------------------
> > The biggest fix is the restoration of mmap ioctl for gen12 integrated p=
arts
> > which lack was breaking ADL-P with media stack.
> > Besides that a small selftest fix and a theoretical overflow on
> > i915->pipe_to_crtc_mapping.
> >
> > ----------------------------------------------------------------
> > Chris Wilson (1):
> >       drm/i915/selftests: Reorder tasklet_disable vs local_bh_disable
> >
> > Jani Nikula (1):
> >       drm/i915/dsc: abstract helpers to get bigjoiner primary/secondary=
 crtc
> >
> > Thomas Hellstr=F6m (1):
> >       drm/i915: Reinstate the mmap ioctl for some platforms
> >
> >  drivers/gpu/drm/i915/display/intel_display.c       |  7 ++-
> >  drivers/gpu/drm/i915/display/intel_display_types.h |  8 ++++
> >  drivers/gpu/drm/i915/display/intel_vdsc.c          | 40 +++++++++++---=
--
> >  drivers/gpu/drm/i915/display/intel_vdsc.h          |  1 +
> >  drivers/gpu/drm/i915/gem/i915_gem_mman.c           |  7 +--
> >  drivers/gpu/drm/i915/gt/selftest_execlists.c       | 55 +++++++++++++-=
--------
> >  6 files changed, 76 insertions(+), 42 deletions(-)
> =

> -- =

> Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
