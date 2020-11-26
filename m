Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0302F2C5677
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Nov 2020 14:52:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 753976E952;
	Thu, 26 Nov 2020 13:52:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0086C6E95E
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Nov 2020 13:52:18 +0000 (UTC)
IronPort-SDR: 7rRBj/E6AQH8joM3TftNyLLfTqFdZ0mxwBu19tL5ZHx258Xmd4q8MFbK7G2XHBTDxTgpu29HfF
 GBs00w9EMVrA==
X-IronPort-AV: E=McAfee;i="6000,8403,9816"; a="233891785"
X-IronPort-AV: E=Sophos;i="5.78,372,1599548400"; d="scan'208";a="233891785"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2020 05:52:12 -0800
IronPort-SDR: kPtZVqLnnrxOhqBE+eD8+mEsuWRnR92zHIeim37/f4/tIpsPG/l4PAUtIz8k0pMWvkgvv9kwQF
 h+SN+mLV53TQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,372,1599548400"; d="scan'208";a="403640080"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 26 Nov 2020 05:52:09 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 26 Nov 2020 15:52:09 +0200
Date: Thu, 26 Nov 2020 15:52:09 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <20201126135209.GB6112@intel.com>
References: <20201124095847.14098-1-anshuman.gupta@intel.com>
 <20201124164406.GG1750458@ideak-desk.fi.intel.com>
 <20201125074624.GJ13853@intel.com>
 <20201125162444.GC1968234@ideak-desk.fi.intel.com>
 <20201126093947.GM13853@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201126093947.GM13853@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [RFC] drm/i915/dp: PPS registers doesn't require
 AUX power
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Nov 26, 2020 at 03:09:50PM +0530, Anshuman Gupta wrote:
> On 2020-11-25 at 18:24:44 +0200, Imre Deak wrote:
> > +Ville.
> Hi Ville ,
> Let me provide you some context over the issue which requires your input.
> TGL on chorome OS has observed some display glitches when brightness is b=
eing updated
> at very fast rate. This has surfaced out two issue.
> 1. Getting the AUX power when accessing the PPS registers on platform wit=
h split PCH.

There can be all kinds of reasons for taking the AUX power
domain. If that somehow causes display glitches then someone
needs to figure out why and fix it. This looks like just duct
tape over one specific case.

> 2. The race between DC3CO disabling delay and flips. (B.Spec says 200us d=
c3co exit delay)
>    I will send a separate RFC patch to fix this issue.
> =

> Current patch is addressing issue1, =

> IMHO it is unnecessary to take AUX power for pps register read for checki=
ng
> whether backlight was enabled. This is causing flip to race with
> DC3CO exit delay.
> Could you please provide your input to this . =

> =

> Thanks,
> Anshuman Gupta.   =

> > =

> > On Wed, Nov 25, 2020 at 01:16:27PM +0530, Anshuman Gupta wrote:
> > > On 2020-11-24 at 18:44:06 +0200, Imre Deak wrote:
> > > > On Tue, Nov 24, 2020 at 03:28:47PM +0530, Anshuman Gupta wrote:
> > > > > Platforms with South Display Engine on PCH, doesn't
> > > > > require to get/put the AUX power domain in order to
> > > > > access PPS register because PPS registers are always on
> > > > > with South display on PCH.
> > > > > =

> > > > > Cc: Imre Deak <imre.deak@intel.com>
> > > > > Cc: <stable@vger.kernel.org>
> > > > > Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> > > > =

> > > > Could you describe the issue the patch is fixing?
> > >
> > > This fixes the display glitches causes by race between brightness
> > > update thread and flip thread.
> > =

> > Flips should work even with asynchronous DC3co (or any DC state)
> > disabling, at least according to the spec the HW handles this. Only
> > modesetting and AUX transfers have restriction wrt. DC state handling
> > (where DC states need to get disabled).
> > =

> > I think the exact restriction needs to be clarified with HW people: Is
> > only the DC3co disable -> flip or also the opposite sequence
> > problematic? Is it only DC3co or also DC5/6 affected?
> > =

> > > While brightness is being updated it reads pp_ctrl reg to check
> > > whether backlight is enabled and get/put the AUX power domain, this
> > > enables and disable DC Off power well(DC3CO) back and forth.
> > >
> > > IMO there are two work item for above race needed to be addressed.
> > > 1. Don't get AUX power for PPS register access (this patch addressed =
this).
> > > 2. skl_program_plane() should wait for DC3CO exit delay to avoid any =
race with
> > >    DC3CO disable sequence. (WIP)      =

> > =

> > DC states can be disabled asynchronously with a flip modeset, not only
> > for panel brightness setting, but also AUX transfers for instance. So I
> > think we'd need to add locking against DC state changes to
> > intel_pipe_update_start()/end(). Probably the easiest would be to use
> > the power_domains->lock for this.
> > =

> > --Imre

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
