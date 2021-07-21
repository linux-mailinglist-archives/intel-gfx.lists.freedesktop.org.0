Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 839FB3D12DC
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jul 2021 17:53:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D52136E97A;
	Wed, 21 Jul 2021 15:53:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7A1F6E97A
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jul 2021 15:53:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10052"; a="208344623"
X-IronPort-AV: E=Sophos;i="5.84,258,1620716400"; d="scan'208";a="208344623"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2021 08:52:42 -0700
X-IronPort-AV: E=Sophos;i="5.84,258,1620716400"; d="scan'208";a="576732107"
Received: from unknown (HELO intel.com) ([10.212.44.180])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2021 08:52:41 -0700
Date: Wed, 21 Jul 2021 11:52:40 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jason Ekstrand <jason@jlekstrand.net>
Message-ID: <YPhCyOHhJwotw9U+@intel.com>
References: <20210720182108.2761496-1-jason@jlekstrand.net>
 <YPcxMC1oULxcCSSO@intel.com> <YPcxkGJi9b8jpXII@intel.com>
 <CAOFGe95_ELCr2d==7ohQ+5aFBufcSHo-PZi59bfDNREarN7YPg@mail.gmail.com>
 <YPfxaqe51WtKcA06@intel.com>
 <CAOFGe96_rC+=3A1g=BLYZ1J=fNvRG0Xy_UC4gn7W-JY85J1NCw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOFGe96_rC+=3A1g=BLYZ1J=fNvRG0Xy_UC4gn7W-JY85J1NCw@mail.gmail.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Correct the docs for
 intel_engine_cmd_parser
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
Cc: Intel GFX <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jul 21, 2021 at 10:25:27AM -0500, Jason Ekstrand wrote:
> Would you mind pushing?  I still don't have those magic powers. :-)
> 
> --Jason
> 
> On Wed, Jul 21, 2021 at 5:05 AM Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> >
> > On Tue, Jul 20, 2021 at 04:04:59PM -0500, Jason Ekstrand wrote:
> > > On Tue, Jul 20, 2021 at 3:26 PM Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> > > >
> > > > On Tue, Jul 20, 2021 at 04:25:21PM -0400, Rodrigo Vivi wrote:
> > > > > On Tue, Jul 20, 2021 at 01:21:08PM -0500, Jason Ekstrand wrote:
> > > > > > In c9d9fdbc108a ("drm/i915: Revert "drm/i915/gem: Asynchronous

while pushing I noticed this hash was for the patch in the drm-intel-fixes
branch. I updated to the right one in drm-intel-gt-next.

Then I also added the Fixes tag and cherry-picked to drm-intel-fixes branch.

Everything pushed now.

Thanks for the patch,
Rodrigo.

> > > > > > cmdparser""), the parameters to intel_engine_cmd_parser() were altered
> > > > > > without updating the docs, causing Fi.CI.DOCS to start failing.
> > > > > >
> > > > > > Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
> > > > > > ---
> > > > > >  drivers/gpu/drm/i915/i915_cmd_parser.c | 4 +---
> > > > > >  1 file changed, 1 insertion(+), 3 deletions(-)
> > > > > >
> > > > > > diff --git a/drivers/gpu/drm/i915/i915_cmd_parser.c b/drivers/gpu/drm/i915/i915_cmd_parser.c
> > > > > > index 322f4d5955a4f..e0403ce9ce692 100644
> > > > > > --- a/drivers/gpu/drm/i915/i915_cmd_parser.c
> > > > > > +++ b/drivers/gpu/drm/i915/i915_cmd_parser.c
> > > > > > @@ -1416,9 +1416,7 @@ static unsigned long *alloc_whitelist(u32 batch_length)
> > > > > >   * @batch_offset: byte offset in the batch at which execution starts
> > > > > >   * @batch_length: length of the commands in batch_obj
> > > > > >   * @shadow: validated copy of the batch buffer in question
> > > > > > - * @jump_whitelist: buffer preallocated with intel_engine_cmd_parser_alloc_jump_whitelist()
> > > > > > - * @shadow_map: mapping to @shadow vma
> > > > > > - * @batch_map: mapping to @batch vma
> > > > > > + * @trampoline: true if we need to trampoline into privileged execution
> > > > >
> > > > > I was wondering if we should also return the original text, but this one
> > > > > here looks better.
> > > > >
> > > > >
> > > > > Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > > >
> > > > btw, while on it, I wouldn't mind if you squash some english fixes to
> > > > the trampoline documentation block inside this function ;)
> > >
> > > I don't mind at all but I'm not sure what changes you're suggesting.
> >
> > nevermind...
> > It was just my broke english that didn't know the inversion on the "only if"
> >
> >
> > >
> > > > >
> > > > >
> > > > > >   *
> > > > > >   * Parses the specified batch buffer looking for privilege violations as
> > > > > >   * described in the overview.
> > > > > > --
> > > > > > 2.31.1
> > > > > >
> > > > > > _______________________________________________
> > > > > > Intel-gfx mailing list
> > > > > > Intel-gfx@lists.freedesktop.org
> > > > > > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
