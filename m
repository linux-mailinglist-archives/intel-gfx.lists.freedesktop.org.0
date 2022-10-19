Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 302BA603F4A
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Oct 2022 11:31:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 473E810E969;
	Wed, 19 Oct 2022 09:31:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A137910E83B
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Oct 2022 09:30:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666171855; x=1697707855;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=dBfBKtwPMIoIidBaSHvXf7Yzdmj0u0uiQGhoY8SkPXA=;
 b=g/wlvu/jPRW0gML+0qpHXYJL6OyhALIQQphRIKVxUtbGD8hyuKMhchrN
 DKKJTajyc68FJWdiuNaDeCevhb6L1j++tYE8BywiJM3C21Q0ZzzxQ3vvW
 OJrxDb5fcrcfjkCS2QQRmh1jETwSm8Fc38ti8pGKSd+44NK86bnVGNID0
 9t7adVAflGWZxEldg2/pPzq5GXM1WPXgRDXbp8j4XIfnjvh1arWxIsV4l
 B1GWTkDTn52k8PXOxlk/r5r78q1oPtop2D6opjJk64qKaYkRuxSOgV2NW
 eC/p++CILCha4UvJcM1byBgEm7+MYWnm9rJTsxMJ0CBvkatlA1WqlL1ZM w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="306349191"
X-IronPort-AV: E=Sophos;i="5.95,195,1661842800"; d="scan'208";a="306349191"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2022 02:30:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="631579524"
X-IronPort-AV: E=Sophos;i="5.95,195,1661842800"; d="scan'208";a="631579524"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga007.fm.intel.com with SMTP; 19 Oct 2022 02:30:43 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 19 Oct 2022 12:30:42 +0300
Date: Wed, 19 Oct 2022 12:30:42 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <Y0/Dwl3Bct0owF7S@intel.com>
References: <20221018172042.1449885-1-imre.deak@intel.com>
 <87bkq8i3xp.fsf@intel.com> <Y0/BNSKHS+GYkLCw@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Y0/BNSKHS+GYkLCw@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/tgl+: Add locking around DKL
 PHY register accesses
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

On Wed, Oct 19, 2022 at 12:19:49PM +0300, Ville Syrjälä wrote:
> On Wed, Oct 19, 2022 at 12:00:02PM +0300, Jani Nikula wrote:
> > On Tue, 18 Oct 2022, Imre Deak <imre.deak@intel.com> wrote:
> > > Accessing the TypeC DKL PHY registers during modeset-commit,
> > > -verification, DP link-retraining and AUX power well toggling is racy
> > > due to these code paths being concurrent and the PHY register bank
> > > selection register (HIP_INDEX_REG) being shared between PHY instances
> > > (aka TC ports) and the bank selection being not atomic wrt. the actual
> > > PHY register access.
> > >
> > > Add the required locking around each PHY register bank selection->
> > > register access sequence.
> > 
> > I honestly think the abstraction here is at a too low level.
> > 
> > Too many places are doing DKL PHY register access to begin with. IMO the
> > solution should be to abstract DKL PHY better, not to provide low level
> > DKL PHY register accessors.
> > 
> > Indeed, this level of granularity leads to a lot of unnecessary
> > lock/unlock that could have a longer span otherwise, and the interface
> > does not lend itself for that.
> 
> It's no worse than uncore.lock. No one cares about that in
> these codepaths either.
> 
> > Also requires separate bank selection for
> > every write, nearly doubling the MMIO writes.
> 
> Drop in the ocean. This is all slow modeset stuff anyway.
> 
> IMO separate reg accessors is the correct way to handle indexed
> registers unless you have some very specific performance concerns
> to deal with.

Now, whether those accessors need to be visible everywere is another
matter. It should certainly be possible to suck all dkl phy stuff
into one file and keep the accessors static. But currently eveything
is grouped by function (PLLs in one file, vswing stuff in another,
etc.). We'd have to flip that around so that all the sub functions
of of each IP block is in the same file. Is that a better apporach?
Not sure.

-- 
Ville Syrjälä
Intel
