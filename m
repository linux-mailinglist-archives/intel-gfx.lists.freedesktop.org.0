Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C16AA7CAE16
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Oct 2023 17:49:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D6FD10E1C7;
	Mon, 16 Oct 2023 15:49:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD9F710E1C7
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Oct 2023 15:49:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697471367; x=1729007367;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=9Mv8kh/CUzFcN00rxrVSrH6ocuROm3sFvBVoQRNdq8g=;
 b=Eo9aeNFWSKjdDAk4kP5GawCmQ0+rOeZCtOtrCri7UgCD4OBoLvbc7PX8
 3avrM9G/qkLJeDFxzwZO7yw+H/rqf3+xCI+RMahbEykz3oM40y2bebagT
 psAyDmnrWVNU4WWvh3ZOsUKdGv7iK5bxFBfzJ2eYMXgCgxHpjl0bFkOzD
 FSlGo47JeQupv5MC5IhMDRkUnhM44X1EFEh7uxfSMxvhZXNGZNdcdtlwF
 9QQVSaotckm3Bou+gpGbi5luZ1usRBu+TZ2qkGZpYV9kYri02Dcjm398M
 RIWoC0i0SoPJP+OH3exHqsYuK1UzezV97ZIPXLP2zO+zAeDNKLJpplrWw A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="449773083"
X-IronPort-AV: E=Sophos;i="6.03,229,1694761200"; d="scan'208";a="449773083"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2023 08:49:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="790840889"
X-IronPort-AV: E=Sophos;i="6.03,229,1694761200"; d="scan'208";a="790840889"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 16 Oct 2023 08:49:24 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 16 Oct 2023 18:49:23 +0300
Date: Mon, 16 Oct 2023 18:49:23 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
Message-ID: <ZS1bg_LpDKlC0bEE@intel.com>
References: <20231012132801.16292-1-ville.syrjala@linux.intel.com>
 <ZSkhxx8bIJSfKHJ0@ashyti-mobl2.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZSkhxx8bIJSfKHJ0@ashyti-mobl2.lan>
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

On Fri, Oct 13, 2023 at 12:53:59PM +0200, Andi Shyti wrote:
> Hi Ville,
> 
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
> 
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> 

Thanks. Pushed to gt-next.

-- 
Ville Syrjälä
Intel
