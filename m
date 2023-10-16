Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0063E7CAE3D
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Oct 2023 17:52:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A32710E207;
	Mon, 16 Oct 2023 15:52:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 384F810E20E
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Oct 2023 15:52:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697471566; x=1729007566;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=o9K5auazarub6zyjU0typwbV8WvA0XLH8AwvkWCQ/qs=;
 b=fQ7zZprKCENDTYj9mYrG5DvPk8f6uuGhTf7jmX4b9NPsmn8/DYYSTUHH
 qNWDnylwbReW1jcRMBJgZkICJBRDizRMNLEa/A2mL119vd42Clqsg1mcb
 HKwzQ1rsSNgrGvBCtJY8wUW3ATPkfkBrHtw4bJ24CinC0G5Zo3IkLfBvW
 FsrGVOEJNuzTCkBUH/gDeTgd9I52kJbpUfmDbRm3reyuSdx1ZYRiNOXTw
 jXeg9RhFfxjJKqqGR23quMvI7MR3GuaW1vHxyQa3VPDLbf/mvZKltBVEV
 zVAZrOAkri0dJ57MTxWftwzGu0QCS7ygxG6vMCBCf7UJl5iATFbUOHvJ4 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10865"; a="449774081"
X-IronPort-AV: E=Sophos;i="6.03,229,1694761200"; d="scan'208";a="449774081"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2023 08:52:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10865"; a="790842138"
X-IronPort-AV: E=Sophos;i="6.03,229,1694761200"; d="scan'208";a="790842138"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 16 Oct 2023 08:52:43 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 16 Oct 2023 18:52:42 +0300
Date: Mon, 16 Oct 2023 18:52:42 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Greg KH <gregkh@linuxfoundation.org>
Message-ID: <ZS1cSv7GZAf8SKfz@intel.com>
References: <20231012132801.16292-1-ville.syrjala@linux.intel.com>
 <2023101257-chamber-excavator-2063@gregkh>
 <ZSf6YjQuCjtUi5h_@intel.com>
 <2023101202-conjure-shortwave-6ebc@gregkh>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <2023101202-conjure-shortwave-6ebc@gregkh>
X-Patchwork-Hint: comment
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

On Thu, Oct 12, 2023 at 06:12:26PM +0200, Greg KH wrote:
> On Thu, Oct 12, 2023 at 04:53:38PM +0300, Ville Syrjälä wrote:
> > On Thu, Oct 12, 2023 at 03:40:08PM +0200, Greg KH wrote:
> > > On Thu, Oct 12, 2023 at 04:28:01PM +0300, Ville Syrjala wrote:
> > > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > > 
> > > > If we can't find a free fence register to handle a fault in the GMADR
> > > > range just return VM_FAULT_NOPAGE without populating the PTE so that
> > > > userspace will retry the access and trigger another fault. Eventually
> > > > we should find a free fence and the fault will get properly handled.
> > > > 
> > > > A further improvement idea might be to reserve a fence (or one per CPU?)
> > > > for the express purpose of handling faults without having to retry. But
> > > > that would require some additional work.
> > > > 
> > > > Looks like this may have gotten broken originally by
> > > > commit 39965b376601 ("drm/i915: don't trash the gtt when running out of fences")
> > > > as that changed the errno to -EDEADLK which wasn't handle by the gtt
> > > > fault code either. But later in commit 2feeb52859fc ("drm/i915/gt: Fix
> > > > -EDEADLK handling regression") I changed it again to -ENOBUFS as -EDEADLK
> > > > was now getting used for the ww mutex dance. So this fix only makes
> > > > sense after that last commit.
> > > > 
> > > > Cc: stable@vger.kernel.org
> > > > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/9479
> > > > Fixes: 2feeb52859fc ("drm/i915/gt: Fix -EDEADLK handling regression")
> > > > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/gem/i915_gem_mman.c | 1 +
> > > >  1 file changed, 1 insertion(+)
> > > > 
> > > 
> > > <formletter>
> > > 
> > > This is not the correct way to submit patches for inclusion in the
> > > stable kernel tree.  Please read:
> > >     https://www.kernel.org/doc/html/latest/process/stable-kernel-rules.html
> > > for how to do this properly.
> > > 
> > > </formletter>
> > 
> > Say what now?
> 
> Sorry, my bot thought this was a patch sent only to stable, I've kicked
> it a bit and it shouldn't do that again...

Ah OK, thanks.

I was a bit worried that my reading comprehension had deterirated enough
that I couldn't figure iut what new requirement in the process I had
violated :)

-- 
Ville Syrjälä
Intel
