Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B83547C7225
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Oct 2023 18:12:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EC5D10E151;
	Thu, 12 Oct 2023 16:12:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D62110E151
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Oct 2023 16:12:31 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id 86219B8253D;
 Thu, 12 Oct 2023 16:12:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 74897C433C8;
 Thu, 12 Oct 2023 16:12:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1697127148;
 bh=TvenXf/4OvfuGW4p4UmiPQ+pfRv3tr8u8yVKIkLs4n0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TK8THUdEmqOUyC7GdXLhucmb1mh4AFXsxxOYLbibnw0a/lPQlG3nbpy/a2V7lYHpR
 GoO8a/gpsHwwZ7I0lGMVtAACwtZqciQOBN7CM5aJrhxUx4fHc+OMIZwFA7V7jrQeTx
 MhT2WITdVMYCZ5h3Q4E9QjLObg3QckRjPrVqWaKQ=
Date: Thu, 12 Oct 2023 18:12:26 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <2023101202-conjure-shortwave-6ebc@gregkh>
References: <20231012132801.16292-1-ville.syrjala@linux.intel.com>
 <2023101257-chamber-excavator-2063@gregkh>
 <ZSf6YjQuCjtUi5h_@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZSf6YjQuCjtUi5h_@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Retry gtt fault when out of fence
 register
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Oct 12, 2023 at 04:53:38PM +0300, Ville Syrjälä wrote:
> On Thu, Oct 12, 2023 at 03:40:08PM +0200, Greg KH wrote:
> > On Thu, Oct 12, 2023 at 04:28:01PM +0300, Ville Syrjala wrote:
> > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > 
> > > If we can't find a free fence register to handle a fault in the GMADR
> > > range just return VM_FAULT_NOPAGE without populating the PTE so that
> > > userspace will retry the access and trigger another fault. Eventually
> > > we should find a free fence and the fault will get properly handled.
> > > 
> > > A further improvement idea might be to reserve a fence (or one per CPU?)
> > > for the express purpose of handling faults without having to retry. But
> > > that would require some additional work.
> > > 
> > > Looks like this may have gotten broken originally by
> > > commit 39965b376601 ("drm/i915: don't trash the gtt when running out of fences")
> > > as that changed the errno to -EDEADLK which wasn't handle by the gtt
> > > fault code either. But later in commit 2feeb52859fc ("drm/i915/gt: Fix
> > > -EDEADLK handling regression") I changed it again to -ENOBUFS as -EDEADLK
> > > was now getting used for the ww mutex dance. So this fix only makes
> > > sense after that last commit.
> > > 
> > > Cc: stable@vger.kernel.org
> > > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/9479
> > > Fixes: 2feeb52859fc ("drm/i915/gt: Fix -EDEADLK handling regression")
> > > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/gem/i915_gem_mman.c | 1 +
> > >  1 file changed, 1 insertion(+)
> > > 
> > 
> > <formletter>
> > 
> > This is not the correct way to submit patches for inclusion in the
> > stable kernel tree.  Please read:
> >     https://www.kernel.org/doc/html/latest/process/stable-kernel-rules.html
> > for how to do this properly.
> > 
> > </formletter>
> 
> Say what now?

Sorry, my bot thought this was a patch sent only to stable, I've kicked
it a bit and it shouldn't do that again...
