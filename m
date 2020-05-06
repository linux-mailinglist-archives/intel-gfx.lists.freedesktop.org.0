Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C88891C7D81
	for <lists+intel-gfx@lfdr.de>; Thu,  7 May 2020 00:41:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76AC36E05F;
	Wed,  6 May 2020 22:41:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 360756E05F
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 May 2020 22:41:31 +0000 (UTC)
IronPort-SDR: OvgGBg4VxsEWxRNE5NOecnwBgrvN1nHnAHuqlOsk4U9dUp/cUr47tLblNawxGwk0zlFXpQz8m4
 l5YgBdqBkkhQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2020 15:41:30 -0700
IronPort-SDR: Um0LtdD1rfvE8ResHDEx42l+T8NZFwVi0PbKfU0OYfna4pMUBhmI0iAoPxlrmTzVlo7tr7M4PI
 JfyUc6wpAHCw==
X-IronPort-AV: E=Sophos;i="5.73,361,1583222400"; d="scan'208";a="461935206"
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com)
 ([10.165.21.202])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2020 15:41:30 -0700
Date: Wed, 6 May 2020 15:40:30 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200506224030.GC1219060@intel.com>
References: <20200429205446.3259-1-chris@chris-wilson.co.uk>
 <20200429205446.3259-4-chris@chris-wilson.co.uk>
 <20200506144448.GB1219060@intel.com>
 <158878050724.927.1472476462505554945@build.alporthouse.com>
 <158878544855.927.11295814293184377474@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <158878544855.927.11295814293184377474@build.alporthouse.com>
Subject: Re: [Intel-gfx] [CI 4/6] drm/i915/gt: Switch to manual evaluation
 of RPS
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

On Wed, May 06, 2020 at 06:17:28PM +0100, Chris Wilson wrote:
> Quoting Chris Wilson (2020-05-06 16:55:07)
> > Quoting Rodrigo Vivi (2020-05-06 15:44:48)
> > > Btw, there are other patches on the list of failed cherry-picks:
> > > 
> > > 614654abe847 ("drm/i915: Check current i915_vma.pin_count status first on unbind")
> > 
> > We need that to fix a deadlock.
> > 
> > > c4e8ba739034 ("drm/i915/gt: Yield the timeslice if caught waiting on a user semaphore")
> > 
> > That to behave nicely with VkEvents.
> > 
> > > a95f3ac21d64 ("drm/i915/gem: Remove object_is_locked assertion from unpin_from_display_plane")
> > 
> > And that's a potential bug in 5.7, so needs fixing.
> > 
> > > 2632f174a2e1 ("drm/i915/execlists: Avoid reusing the same logical CCID")
> > > 5c4a53e3b1cb ("drm/i915/execlists: Track inflight CCID")
> > 
> > We probably need these based on our presumption of how the HW might
> > work.
> > > 
> > > do you have any updated ickle/dif branch available?
> > 
> > Will do.
> 
> To ssh://people.freedesktop.org/~ickle/linux-2.6
>  + f98e2df61ab3...134711240307 dif -> dif (forced update)

Thanks a lot for all the details and the ports.
Pushed to dif

> -Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
