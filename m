Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECCAF3D0BB0
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jul 2021 12:05:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69BE56EB29;
	Wed, 21 Jul 2021 10:05:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A47DD6E890
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jul 2021 10:05:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10051"; a="190991487"
X-IronPort-AV: E=Sophos;i="5.84,257,1620716400"; d="scan'208";a="190991487"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2021 03:05:33 -0700
X-IronPort-AV: E=Sophos;i="5.84,257,1620716400"; d="scan'208";a="496559437"
Received: from pramodhp-mobl1.amr.corp.intel.com (HELO intel.com)
 ([10.212.44.180])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2021 03:05:31 -0700
Date: Wed, 21 Jul 2021 06:05:30 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jason Ekstrand <jason@jlekstrand.net>
Message-ID: <YPfxaqe51WtKcA06@intel.com>
References: <20210720182108.2761496-1-jason@jlekstrand.net>
 <YPcxMC1oULxcCSSO@intel.com> <YPcxkGJi9b8jpXII@intel.com>
 <CAOFGe95_ELCr2d==7ohQ+5aFBufcSHo-PZi59bfDNREarN7YPg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOFGe95_ELCr2d==7ohQ+5aFBufcSHo-PZi59bfDNREarN7YPg@mail.gmail.com>
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

On Tue, Jul 20, 2021 at 04:04:59PM -0500, Jason Ekstrand wrote:
> On Tue, Jul 20, 2021 at 3:26 PM Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> >
> > On Tue, Jul 20, 2021 at 04:25:21PM -0400, Rodrigo Vivi wrote:
> > > On Tue, Jul 20, 2021 at 01:21:08PM -0500, Jason Ekstrand wrote:
> > > > In c9d9fdbc108a ("drm/i915: Revert "drm/i915/gem: Asynchronous
> > > > cmdparser""), the parameters to intel_engine_cmd_parser() were altered
> > > > without updating the docs, causing Fi.CI.DOCS to start failing.
> > > >
> > > > Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
> > > > ---
> > > >  drivers/gpu/drm/i915/i915_cmd_parser.c | 4 +---
> > > >  1 file changed, 1 insertion(+), 3 deletions(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/i915_cmd_parser.c b/drivers/gpu/drm/i915/i915_cmd_parser.c
> > > > index 322f4d5955a4f..e0403ce9ce692 100644
> > > > --- a/drivers/gpu/drm/i915/i915_cmd_parser.c
> > > > +++ b/drivers/gpu/drm/i915/i915_cmd_parser.c
> > > > @@ -1416,9 +1416,7 @@ static unsigned long *alloc_whitelist(u32 batch_length)
> > > >   * @batch_offset: byte offset in the batch at which execution starts
> > > >   * @batch_length: length of the commands in batch_obj
> > > >   * @shadow: validated copy of the batch buffer in question
> > > > - * @jump_whitelist: buffer preallocated with intel_engine_cmd_parser_alloc_jump_whitelist()
> > > > - * @shadow_map: mapping to @shadow vma
> > > > - * @batch_map: mapping to @batch vma
> > > > + * @trampoline: true if we need to trampoline into privileged execution
> > >
> > > I was wondering if we should also return the original text, but this one
> > > here looks better.
> > >
> > >
> > > Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> >
> > btw, while on it, I wouldn't mind if you squash some english fixes to
> > the trampoline documentation block inside this function ;)
> 
> I don't mind at all but I'm not sure what changes you're suggesting.

nevermind...
It was just my broke english that didn't know the inversion on the "only if"


> 
> > >
> > >
> > > >   *
> > > >   * Parses the specified batch buffer looking for privilege violations as
> > > >   * described in the overview.
> > > > --
> > > > 2.31.1
> > > >
> > > > _______________________________________________
> > > > Intel-gfx mailing list
> > > > Intel-gfx@lists.freedesktop.org
> > > > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
