Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FC07603EB7
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Oct 2022 11:20:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14D4510E969;
	Wed, 19 Oct 2022 09:20:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6133210E969
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Oct 2022 09:19:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666171194; x=1697707194;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=wiZ5crfTcZrwyuGOzfa2NfIPfMuYS82ul2fFji+Qrl8=;
 b=Q3rJat5IXZbKx94OJlwzLj0+9y+Vn2GZ00O9CZzKrpilyNdV5a/SCD4l
 /0CrtDuIILKPNeIkc8C64EfGkm3T74Zx8A7olExutnODbJXey6E7tY4aD
 6Vgep9p1axJ70zuzNI//lGMd7UW3JYzPkvcziPlV23l3N1R/yxUv4yO89
 EZXtDFxpjJFl5dZG8gSU5m9QJ4LCLEWyLe9lXad/28fqz+wPlyr1f662c
 iosxTk8RmIST9SP97Pu7Ayn2SFUwXXClqscOPTFuKQUVBgqlYc6R/hTTU
 Betd3/QuJomdMaR8Dvgym8bCTqrmJNcZYquUtvnOZmVNBVVyzeuUpduEu w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="370575191"
X-IronPort-AV: E=Sophos;i="5.95,195,1661842800"; d="scan'208";a="370575191"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2022 02:19:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="624045181"
X-IronPort-AV: E=Sophos;i="5.95,195,1661842800"; d="scan'208";a="624045181"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga007.jf.intel.com with SMTP; 19 Oct 2022 02:19:50 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 19 Oct 2022 12:19:49 +0300
Date: Wed, 19 Oct 2022 12:19:49 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <Y0/BNSKHS+GYkLCw@intel.com>
References: <20221018172042.1449885-1-imre.deak@intel.com>
 <87bkq8i3xp.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87bkq8i3xp.fsf@intel.com>
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

On Wed, Oct 19, 2022 at 12:00:02PM +0300, Jani Nikula wrote:
> On Tue, 18 Oct 2022, Imre Deak <imre.deak@intel.com> wrote:
> > Accessing the TypeC DKL PHY registers during modeset-commit,
> > -verification, DP link-retraining and AUX power well toggling is racy
> > due to these code paths being concurrent and the PHY register bank
> > selection register (HIP_INDEX_REG) being shared between PHY instances
> > (aka TC ports) and the bank selection being not atomic wrt. the actual
> > PHY register access.
> >
> > Add the required locking around each PHY register bank selection->
> > register access sequence.
> 
> I honestly think the abstraction here is at a too low level.
> 
> Too many places are doing DKL PHY register access to begin with. IMO the
> solution should be to abstract DKL PHY better, not to provide low level
> DKL PHY register accessors.
> 
> Indeed, this level of granularity leads to a lot of unnecessary
> lock/unlock that could have a longer span otherwise, and the interface
> does not lend itself for that.

It's no worse than uncore.lock. No one cares about that in
these codepaths either.

> Also requires separate bank selection for
> every write, nearly doubling the MMIO writes.

Drop in the ocean. This is all slow modeset stuff anyway.

IMO separate reg accessors is the correct way to handle indexed
registers unless you have some very specific performance concerns
to deal with.

> I think the choice of intel_tc.c is indicative of the problems in
> abstraction. That file has zero DKL PHY register access currently, but
> becomes the focal point of DKL PHY.
> 
> I'd aim at adding intel_dkl_phy.c which is the only place that includes
> intel_dkl_phy_regs.h and only place that directly uses the DKL PHY
> registers. And with that, maybe you don't need to add any DKL PHY
> specific register accessors.

Ripping out the PHY specific junk from eg. intel_ddi.c I
think would be a good goal. But that should also be done
for the mg phy.

-- 
Ville Syrjälä
Intel
