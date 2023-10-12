Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 046AF7C6FC4
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Oct 2023 15:53:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C39610E174;
	Thu, 12 Oct 2023 13:53:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC7F410E174
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Oct 2023 13:53:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697118822; x=1728654822;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=tu87ZBuoFyYCD6VoBfWYqvOjb4rDBWx+QTveoO5psEs=;
 b=fCbZc690pBhhIGYaUnwAmqoh9WGenFTeB4ZvbNWRRCekPABaXaV5uiR7
 YIO5cMpXNhbWhvHrQubt16Tlm5AoLe0k9I0Y6mnl8lI9qZqERNyjskQBO
 M5VQWpegXvwuodr75Gi9z8Ar4Yl5xLsCd0C3XrpHqV40m9AbHDycmz4tJ
 mREtBo4lkOYGK8wrpxI14XhB5qiJFExAnxe5TnjIcpltSibf1sK7yDq3W
 P8Pdcp/dBhp0KLiRmaqt3uu5GT6NBw9zMAQO8le1vcg3ie0FuRZ1qFULT
 Ji0AA9lSS+sGCR2V/KiWG81dPmOA7pODIr53RIw5z9DBO1WLcVqhV8zUR A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="375282746"
X-IronPort-AV: E=Sophos;i="6.03,219,1694761200"; d="scan'208";a="375282746"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 06:53:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="704191747"
X-IronPort-AV: E=Sophos;i="6.03,219,1694761200"; d="scan'208";a="704191747"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga003.jf.intel.com with SMTP; 12 Oct 2023 06:53:39 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 12 Oct 2023 16:53:38 +0300
Date: Thu, 12 Oct 2023 16:53:38 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Greg KH <gregkh@linuxfoundation.org>
Message-ID: <ZSf6YjQuCjtUi5h_@intel.com>
References: <20231012132801.16292-1-ville.syrjala@linux.intel.com>
 <2023101257-chamber-excavator-2063@gregkh>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <2023101257-chamber-excavator-2063@gregkh>
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

On Thu, Oct 12, 2023 at 03:40:08PM +0200, Greg KH wrote:
> On Thu, Oct 12, 2023 at 04:28:01PM +0300, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > If we can't find a free fence register to handle a fault in the GMADR
> > range just return VM_FAULT_NOPAGE without populating the PTE so that
> > userspace will retry the access and trigger another fault. Eventually
> > we should find a free fence and the fault will get properly handled.
> > 
> > A further improvement idea might be to reserve a fence (or one per CPU?)
> > for the express purpose of handling faults without having to retry. But
> > that would require some additional work.
> > 
> > Looks like this may have gotten broken originally by
> > commit 39965b376601 ("drm/i915: don't trash the gtt when running out of fences")
> > as that changed the errno to -EDEADLK which wasn't handle by the gtt
> > fault code either. But later in commit 2feeb52859fc ("drm/i915/gt: Fix
> > -EDEADLK handling regression") I changed it again to -ENOBUFS as -EDEADLK
> > was now getting used for the ww mutex dance. So this fix only makes
> > sense after that last commit.
> > 
> > Cc: stable@vger.kernel.org
> > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/9479
> > Fixes: 2feeb52859fc ("drm/i915/gt: Fix -EDEADLK handling regression")
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/gem/i915_gem_mman.c | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> 
> <formletter>
> 
> This is not the correct way to submit patches for inclusion in the
> stable kernel tree.  Please read:
>     https://www.kernel.org/doc/html/latest/process/stable-kernel-rules.html
> for how to do this properly.
> 
> </formletter>

Say what now?

-- 
Ville Syrjälä
Intel
