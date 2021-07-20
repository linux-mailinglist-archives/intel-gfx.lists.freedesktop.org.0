Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB3123D02A5
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jul 2021 22:27:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 295696E3F4;
	Tue, 20 Jul 2021 20:27:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED91D6E187
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Jul 2021 20:26:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10051"; a="211381498"
X-IronPort-AV: E=Sophos;i="5.84,256,1620716400"; d="scan'208";a="211381498"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2021 13:26:58 -0700
X-IronPort-AV: E=Sophos;i="5.84,256,1620716400"; d="scan'208";a="564535002"
Received: from emacedox-mobl1.amr.corp.intel.com (HELO intel.com)
 ([10.209.165.51])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2021 13:26:57 -0700
Date: Tue, 20 Jul 2021 16:26:56 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jason Ekstrand <jason@jlekstrand.net>
Message-ID: <YPcxkGJi9b8jpXII@intel.com>
References: <20210720182108.2761496-1-jason@jlekstrand.net>
 <YPcxMC1oULxcCSSO@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YPcxMC1oULxcCSSO@intel.com>
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jul 20, 2021 at 04:25:21PM -0400, Rodrigo Vivi wrote:
> On Tue, Jul 20, 2021 at 01:21:08PM -0500, Jason Ekstrand wrote:
> > In c9d9fdbc108a ("drm/i915: Revert "drm/i915/gem: Asynchronous
> > cmdparser""), the parameters to intel_engine_cmd_parser() were altered
> > without updating the docs, causing Fi.CI.DOCS to start failing.
> > 
> > Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
> > ---
> >  drivers/gpu/drm/i915/i915_cmd_parser.c | 4 +---
> >  1 file changed, 1 insertion(+), 3 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/i915_cmd_parser.c b/drivers/gpu/drm/i915/i915_cmd_parser.c
> > index 322f4d5955a4f..e0403ce9ce692 100644
> > --- a/drivers/gpu/drm/i915/i915_cmd_parser.c
> > +++ b/drivers/gpu/drm/i915/i915_cmd_parser.c
> > @@ -1416,9 +1416,7 @@ static unsigned long *alloc_whitelist(u32 batch_length)
> >   * @batch_offset: byte offset in the batch at which execution starts
> >   * @batch_length: length of the commands in batch_obj
> >   * @shadow: validated copy of the batch buffer in question
> > - * @jump_whitelist: buffer preallocated with intel_engine_cmd_parser_alloc_jump_whitelist()
> > - * @shadow_map: mapping to @shadow vma
> > - * @batch_map: mapping to @batch vma
> > + * @trampoline: true if we need to trampoline into privileged execution
> 
> I was wondering if we should also return the original text, but this one
> here looks better.
> 
> 
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

btw, while on it, I wouldn't mind if you squash some english fixes to
the trampoline documentation block inside this function ;)

> 
> 
> >   *
> >   * Parses the specified batch buffer looking for privilege violations as
> >   * described in the overview.
> > -- 
> > 2.31.1
> > 
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
