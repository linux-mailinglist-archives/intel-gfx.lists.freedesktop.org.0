Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8880C2C44E8
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Nov 2020 17:24:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D26EE6E93C;
	Wed, 25 Nov 2020 16:24:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 282906E93C
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Nov 2020 16:24:50 +0000 (UTC)
IronPort-SDR: o9IPLWTvoDu/wC7xwf7qbxeWXbrw2vzUhP5b78u7J0ucCA6cIMwt9hpYGDedljY5ZOu39idMkB
 8AFkixZsLWYA==
X-IronPort-AV: E=McAfee;i="6000,8403,9816"; a="172259548"
X-IronPort-AV: E=Sophos;i="5.78,369,1599548400"; d="scan'208";a="172259548"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2020 08:24:49 -0800
IronPort-SDR: /i76pblaYolpkBRngQkfA8yvx5x5VSznJWzTN/lxilPlZZDa4Y0efYy1+DoQTgpJN/o7gOPK/b
 XhgqvpXoRARQ==
X-IronPort-AV: E=Sophos;i="5.78,369,1599548400"; d="scan'208";a="547342971"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2020 08:24:47 -0800
Date: Wed, 25 Nov 2020 18:24:44 +0200
From: Imre Deak <imre.deak@intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>,
 Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20201125162444.GC1968234@ideak-desk.fi.intel.com>
References: <20201124095847.14098-1-anshuman.gupta@intel.com>
 <20201124164406.GG1750458@ideak-desk.fi.intel.com>
 <20201125074624.GJ13853@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201125074624.GJ13853@intel.com>
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

+Ville.

On Wed, Nov 25, 2020 at 01:16:27PM +0530, Anshuman Gupta wrote:
> On 2020-11-24 at 18:44:06 +0200, Imre Deak wrote:
> > On Tue, Nov 24, 2020 at 03:28:47PM +0530, Anshuman Gupta wrote:
> > > Platforms with South Display Engine on PCH, doesn't
> > > require to get/put the AUX power domain in order to
> > > access PPS register because PPS registers are always on
> > > with South display on PCH.
> > > 
> > > Cc: Imre Deak <imre.deak@intel.com>
> > > Cc: <stable@vger.kernel.org>
> > > Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> > 
> > Could you describe the issue the patch is fixing?
>
> This fixes the display glitches causes by race between brightness
> update thread and flip thread.

Flips should work even with asynchronous DC3co (or any DC state)
disabling, at least according to the spec the HW handles this. Only
modesetting and AUX transfers have restriction wrt. DC state handling
(where DC states need to get disabled).

I think the exact restriction needs to be clarified with HW people: Is
only the DC3co disable -> flip or also the opposite sequence
problematic? Is it only DC3co or also DC5/6 affected?

> While brightness is being updated it reads pp_ctrl reg to check
> whether backlight is enabled and get/put the AUX power domain, this
> enables and disable DC Off power well(DC3CO) back and forth.
>
> IMO there are two work item for above race needed to be addressed.
> 1. Don't get AUX power for PPS register access (this patch addressed this).
> 2. skl_program_plane() should wait for DC3CO exit delay to avoid any race with
>    DC3CO disable sequence. (WIP)      

DC states can be disabled asynchronously with a flip modeset, not only
for panel brightness setting, but also AUX transfers for instance. So I
think we'd need to add locking against DC state changes to
intel_pipe_update_start()/end(). Probably the easiest would be to use
the power_domains->lock for this.

--Imre
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
