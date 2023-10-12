Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 990FB7C6F6F
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Oct 2023 15:40:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D68410E4E8;
	Thu, 12 Oct 2023 13:40:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E0BD10E4F2
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Oct 2023 13:40:14 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 36DE8CE28A0;
 Thu, 12 Oct 2023 13:40:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0B9A8C433C7;
 Thu, 12 Oct 2023 13:40:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1697118011;
 bh=1o+cuBL+5vr4LFtq3Hovsvd3Zszh2wtTcLRw67oFKsQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=a+hMeWVUuq3TiqwzWYJsenxmi0i66GJx7/yaE8RQ+zJ/uFMlqAV16bWYdURk1cAwk
 jQyxF2eCDaZ+cYREHzCeXQ1c12KHhI8hJ37Jx7HfW9l2zHV0Nwn3xJXimBKkWG3Lcy
 s/Fpm+eH5CjQ80RB8RYE4ISPHBtvjQRxaOkFjyDo=
Date: Thu, 12 Oct 2023 15:40:08 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <2023101257-chamber-excavator-2063@gregkh>
References: <20231012132801.16292-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231012132801.16292-1-ville.syrjala@linux.intel.com>
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

On Thu, Oct 12, 2023 at 04:28:01PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> If we can't find a free fence register to handle a fault in the GMADR
> range just return VM_FAULT_NOPAGE without populating the PTE so that
> userspace will retry the access and trigger another fault. Eventually
> we should find a free fence and the fault will get properly handled.
> 
> A further improvement idea might be to reserve a fence (or one per CPU?)
> for the express purpose of handling faults without having to retry. But
> that would require some additional work.
> 
> Looks like this may have gotten broken originally by
> commit 39965b376601 ("drm/i915: don't trash the gtt when running out of fences")
> as that changed the errno to -EDEADLK which wasn't handle by the gtt
> fault code either. But later in commit 2feeb52859fc ("drm/i915/gt: Fix
> -EDEADLK handling regression") I changed it again to -ENOBUFS as -EDEADLK
> was now getting used for the ww mutex dance. So this fix only makes
> sense after that last commit.
> 
> Cc: stable@vger.kernel.org
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/9479
> Fixes: 2feeb52859fc ("drm/i915/gt: Fix -EDEADLK handling regression")
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_mman.c | 1 +
>  1 file changed, 1 insertion(+)
> 

<formletter>

This is not the correct way to submit patches for inclusion in the
stable kernel tree.  Please read:
    https://www.kernel.org/doc/html/latest/process/stable-kernel-rules.html
for how to do this properly.

</formletter>
