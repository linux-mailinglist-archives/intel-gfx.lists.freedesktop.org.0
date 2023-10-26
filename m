Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07F937D82D7
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Oct 2023 14:41:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 488AF10E7D4;
	Thu, 26 Oct 2023 12:41:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CEAF10E7CF
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Oct 2023 12:41:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698324097; x=1729860097;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=EFOFgliIfQoLU3VQX2HL6eih+dhyIiiZEnPCsczOgFg=;
 b=R5jln0Ar+MgxMHIyrSu7dhanqnLjhdgXFGIN+oJSB4nyUiaL++eOfHpf
 c17YgcUJubnxeY4zByJxumERMEvXM7C18IsdXxcnrD5wdpIQe0tcY5vSq
 5Xy4xK9bJ0JLrvHk7o/xoZg6LSt3NWX8Q5+xuIFMo3okVpo29YLtxu6sV
 ROJsBFEWTzTwC4Eekb6hlC6FYJJxd6//L13WgLHRNAM3SHzabxNR1pV79
 Ljxoa8XraB4EXensKVgVaHcGcHIzH8O8S0TeHdiZHWvqEKd0LVvfXPwld
 JSz6FJNEvl6Xder8N8PqbVqouRlO8HtBlOx0299/vl99O1t1veEcfD9mZ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="336672"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; 
   d="scan'208";a="336672"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 05:41:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="824980283"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; d="scan'208";a="824980283"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmsmga008.fm.intel.com with SMTP; 26 Oct 2023 05:41:27 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 26 Oct 2023 15:41:26 +0300
Date: Thu, 26 Oct 2023 15:41:26 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <ZTpdojAvgq1baVD9@intel.com>
References: <20231024175552.15503-1-ville.syrjala@linux.intel.com>
 <87r0lj7wu9.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87r0lj7wu9.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [topic/core-for-CI][PATCH 0/2] Drop some
 unnecessary patches
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Oct 25, 2023 at 02:41:50PM +0300, Jani Nikula wrote:
> On Tue, 24 Oct 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Try to drop a few seemingly unnecessary patches from core-for-CI.
> 
> Yay, ack!

Didn't spot any regressions in the CI results, so force pushed
topic/core-for-CI with these dropped. Didn't bother with a rebase.

> 
> >
> > Ville Syrjälä (2):
> >   Revert "freezer: Dump more info on whoever is trying to get frozen
> >     with locks held"
> >   Revert "iommu: Remove iova cpu hotplugging flushing"
> >
> >  drivers/iommu/iova.c       | 28 ++++++++++++++++++++++++++++
> >  include/linux/cpuhotplug.h |  1 +
> >  include/linux/iova.h       |  1 +
> >  kernel/freezer.c           | 12 ++----------
> >  4 files changed, 32 insertions(+), 10 deletions(-)
> 
> -- 
> Jani Nikula, Intel

-- 
Ville Syrjälä
Intel
