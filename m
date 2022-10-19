Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D44C960454C
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Oct 2022 14:31:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73C0D10F219;
	Wed, 19 Oct 2022 12:31:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8915610F219
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Oct 2022 12:31:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666182663; x=1697718663;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=Hb4yPL+oX/qWWF0AeYFT87gWrS5dBZ4mFs48M8Bw/BM=;
 b=YkImCITG+3s44z9CSvJmuo8OUzPyniA5V0RXCyR8Hir8F/ENTX2r0Z3R
 W/dp3U1efE7JF5MeIlt4Dv2fcANcHzNGcxMrpn2zoc51NswzQhf5Wc0z0
 W9ObpXN7nCq93zBOkBaa8uPG2j3ZKKa6C1Xwl+Y71Q0jr2vOgaJdOziwN
 SVbTuB6+LJM7XeTWW1giadzS3DiVscT2KAB4KwkXSASx+GupfuHme4vOT
 Fl3YhvU43xS8Z+hJ65NAHBx83AwGOIIZHJ8ffLp1k7BdvSPYaPgBJ8m9h
 D/PzdiOJYXECTnHk01EdpqSmqlhCQaWBNYkMzmPF+nYfUKlrRUmxkkcco g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="289712264"
X-IronPort-AV: E=Sophos;i="5.95,196,1661842800"; d="scan'208";a="289712264"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2022 05:31:02 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="754559620"
X-IronPort-AV: E=Sophos;i="5.95,196,1661842800"; d="scan'208";a="754559620"
Received: from mosermix-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.50.2])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2022 05:31:01 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <Y0/Dwl3Bct0owF7S@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221018172042.1449885-1-imre.deak@intel.com>
 <87bkq8i3xp.fsf@intel.com> <Y0/BNSKHS+GYkLCw@intel.com>
 <Y0/Dwl3Bct0owF7S@intel.com>
Date: Wed, 19 Oct 2022 15:30:58 +0300
Message-ID: <8735bkhu65.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Wed, 19 Oct 2022, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Wed, Oct 19, 2022 at 12:19:49PM +0300, Ville Syrj=C3=A4l=C3=A4 wrote:
>> On Wed, Oct 19, 2022 at 12:00:02PM +0300, Jani Nikula wrote:
>> > On Tue, 18 Oct 2022, Imre Deak <imre.deak@intel.com> wrote:
>> > > Accessing the TypeC DKL PHY registers during modeset-commit,
>> > > -verification, DP link-retraining and AUX power well toggling is racy
>> > > due to these code paths being concurrent and the PHY register bank
>> > > selection register (HIP_INDEX_REG) being shared between PHY instances
>> > > (aka TC ports) and the bank selection being not atomic wrt. the actu=
al
>> > > PHY register access.
>> > >
>> > > Add the required locking around each PHY register bank selection->
>> > > register access sequence.
>> >=20
>> > I honestly think the abstraction here is at a too low level.
>> >=20
>> > Too many places are doing DKL PHY register access to begin with. IMO t=
he
>> > solution should be to abstract DKL PHY better, not to provide low level
>> > DKL PHY register accessors.
>> >=20
>> > Indeed, this level of granularity leads to a lot of unnecessary
>> > lock/unlock that could have a longer span otherwise, and the interface
>> > does not lend itself for that.
>>=20
>> It's no worse than uncore.lock. No one cares about that in
>> these codepaths either.
>>=20
>> > Also requires separate bank selection for
>> > every write, nearly doubling the MMIO writes.
>>=20
>> Drop in the ocean. This is all slow modeset stuff anyway.
>>=20
>> IMO separate reg accessors is the correct way to handle indexed
>> registers unless you have some very specific performance concerns
>> to deal with.

Fair enough.

> Now, whether those accessors need to be visible everywere is another
> matter. It should certainly be possible to suck all dkl phy stuff
> into one file and keep the accessors static. But currently eveything
> is grouped by function (PLLs in one file, vswing stuff in another,
> etc.). We'd have to flip that around so that all the sub functions
> of of each IP block is in the same file. Is that a better apporach?
> Not sure.

I'm often interested in the precedent a change makes. What's the
direction we want to go to?

So here, we're saying the DKL PHY registers are special, and need to be
accessed via dedicated register accessors. To enforce this, we create
strong typing for DKL PHY registers. We go out of our way to make it
safe to access DKL PHY registers anywhere in the driver.

Do we want to add more and more register types in the future? And
duplicate the accessors for each? Oops, looks like we're already on our
way [1].

My argument is that maybe access to such a hardware block should instead
be limited to a module (.c file) that abstracts the details. Abstract
hardware blocks and function, not registers. How many files need big
changes to add a new PHY?


BR,
Jani.



[1] https://lore.kernel.org/r/20221014230239.1023689-13-matthew.d.roper@int=
el.com



--=20
Jani Nikula, Intel Open Source Graphics Center
