Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D4029604791
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Oct 2022 15:41:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECD3710EADB;
	Wed, 19 Oct 2022 13:41:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B89010EADF
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Oct 2022 13:41:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666186897; x=1697722897;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=dvlsG5sEh3EylAD9QJMNycaZauGQIGu7yJfnhIe0dIU=;
 b=S+ZYx31o4GoEQi15qUMofdCMwwobzlvGXxP39edZQeWN6t1PuiGFTr/i
 WWcjnMR9+l5eLB9edtJfM5jMfCvGCNAxqZ6P5gtjQz/occJTgv2Nj0+MC
 ubplbfm/4u20To+fD0xqaH3Sqi/2M4pgHGEzhmyTSKrVQQsTKPHLkYXFI
 5ZS3sh/QiemnNFLMNtDQRpokVp2/Nvsf2TTTTuHwm+zQVZnmw/+wTOU7W
 IEGcx48Oev5+i4Ee97euTs3HAUUFY/R7b637QtrUgFPmsROX2ZeTw1TqW
 4AXfy0ViBE1BuSPYFhTxwaZF5Uq3oJw/fZ+IWD2+0P65ub5gEfUEmdL1n A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="304028296"
X-IronPort-AV: E=Sophos;i="5.95,196,1661842800"; d="scan'208";a="304028296"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2022 06:41:36 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="631673289"
X-IronPort-AV: E=Sophos;i="5.95,196,1661842800"; d="scan'208";a="631673289"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2022 06:41:35 -0700
Date: Wed, 19 Oct 2022 16:41:31 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <Y0/9Et5mQ5K/Tnsl@ideak-desk.fi.intel.com>
References: <20221018172042.1449885-1-imre.deak@intel.com>
 <87bkq8i3xp.fsf@intel.com> <Y0/BNSKHS+GYkLCw@intel.com>
 <Y0/Dwl3Bct0owF7S@intel.com> <8735bkhu65.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <8735bkhu65.fsf@intel.com>
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Oct 19, 2022 at 03:30:58PM +0300, Jani Nikula wrote:
> On Wed, 19 Oct 2022, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
> > On Wed, Oct 19, 2022 at 12:19:49PM +0300, Ville Syrjälä wrote:
> >> On Wed, Oct 19, 2022 at 12:00:02PM +0300, Jani Nikula wrote:
> >> > On Tue, 18 Oct 2022, Imre Deak <imre.deak@intel.com> wrote:
> >> > > Accessing the TypeC DKL PHY registers during modeset-commit,
> >> > > -verification, DP link-retraining and AUX power well toggling is racy
> >> > > due to these code paths being concurrent and the PHY register bank
> >> > > selection register (HIP_INDEX_REG) being shared between PHY instances
> >> > > (aka TC ports) and the bank selection being not atomic wrt. the actual
> >> > > PHY register access.
> >> > >
> >> > > Add the required locking around each PHY register bank selection->
> >> > > register access sequence.
> >> > 
> >> > I honestly think the abstraction here is at a too low level.
> >> > 
> >> > Too many places are doing DKL PHY register access to begin with. IMO the
> >> > solution should be to abstract DKL PHY better, not to provide low level
> >> > DKL PHY register accessors.
> >> > 
> >> > Indeed, this level of granularity leads to a lot of unnecessary
> >> > lock/unlock that could have a longer span otherwise, and the interface
> >> > does not lend itself for that.
> >> 
> >> It's no worse than uncore.lock. No one cares about that in
> >> these codepaths either.
> >> 
> >> > Also requires separate bank selection for
> >> > every write, nearly doubling the MMIO writes.
> >> 
> >> Drop in the ocean. This is all slow modeset stuff anyway.
> >> 
> >> IMO separate reg accessors is the correct way to handle indexed
> >> registers unless you have some very specific performance concerns
> >> to deal with.
> 
> Fair enough.
> 
> > Now, whether those accessors need to be visible everywere is another
> > matter. It should certainly be possible to suck all dkl phy stuff
> > into one file and keep the accessors static. But currently eveything
> > is grouped by function (PLLs in one file, vswing stuff in another,
> > etc.). We'd have to flip that around so that all the sub functions
> > of of each IP block is in the same file. Is that a better apporach?
> > Not sure.
> 
> I'm often interested in the precedent a change makes. What's the
> direction we want to go to?
> 
> So here, we're saying the DKL PHY registers are special, and need to be
> accessed via dedicated register accessors. To enforce this, we create
> strong typing for DKL PHY registers. We go out of our way to make it
> safe to access DKL PHY registers anywhere in the driver.
> 
> Do we want to add more and more register types in the future? And
> duplicate the accessors for each? Oops, looks like we're already on our
> way [1].

Making the DKL PHY accesses type safe was just a bonus, the main reason
for adding the dkl_phy_reg struct (in a later refactoring patch) is that
defining those registers only makes sense to me specifying all the
attributes (both MMIO and the bank index) of the register at one place.
That's instead of the current way of having to pass these separately to
each accessor functions. For instance to be able to call

read(DKL_PLL_DIV0(tc_port))

instead of having to remember the index of each (non lane-instanced)
register and call

read(DKL_PLL_DIV0(tc_port), 2)

It also makes more sense to me that the register itself is parametric
if that's needed (lane-instanced registers), for instance

read(DKL_TX_DPCNTL0(tc_port, 0))

instead of this being a separate parameter of each accessor function:

read(DKL_TX_DPCNTL0(tc_port), 0)

> My argument is that maybe access to such a hardware block should instead
> be limited to a module (.c file) that abstracts the details. Abstract
> hardware blocks and function, not registers. How many files need big
> changes to add a new PHY?

I think the accessors could be added to a new intel_tc_phy.c file
instead? (That would still allow further refactoring of both the MG and
DKL functionality as a follow-up to this change for -stable.)

> BR,
> Jani.
> 
> [1] https://lore.kernel.org/r/20221014230239.1023689-13-matthew.d.roper@intel.com
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
