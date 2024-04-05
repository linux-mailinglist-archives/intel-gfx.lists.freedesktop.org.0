Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7172C89A522
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Apr 2024 21:45:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF45A10E83A;
	Fri,  5 Apr 2024 19:45:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Pje+ulKh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61E0C10E83A
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Apr 2024 19:45:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712346334; x=1743882334;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=1m4RpCI6cMDz/C3JYdm/UwnupQThvRLngkobWVHLb/s=;
 b=Pje+ulKhMuUQBuQLEUUZUqCTqvhGT0pLrkhzMUb95HsuYICmV/loqFnf
 xi+TP82C6hN/glnbABEk0B/vKkhYK69uPT1zxgj22bBRwFXe65i+rMeSC
 OT9Hmnt1kH3u19MioM80Seh42TyPbV1rbKm7X2AiiQSjcjyCBbJ6y6Ctk
 JoNRvdLgi9v1yvaegw5xt9V7py3uTWo54vxMKtgqdjIVh7OqJjBbUUZWF
 IE/tNyND5NcbGycdZVO0G+Hk3jlb8vvyBIbKTsLhutL+rc73r3K3e+GLJ
 25OFRbfX7p8qxhFYtadayl7a0xXUTnYH4qKVbFhac+t47DNxg8Y35Nw7C w==;
X-CSE-ConnectionGUID: dZJLUbLjRdmXvViCQC3Ibg==
X-CSE-MsgGUID: /yuQhtnzQVu7VAJB5pRL/g==
X-IronPort-AV: E=McAfee;i="6600,9927,11035"; a="7551100"
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; 
   d="scan'208";a="7551100"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 12:45:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11035"; a="827791003"
X-IronPort-AV: E=Sophos;i="6.07,182,1708416000"; d="scan'208";a="827791003"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 05 Apr 2024 12:45:29 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 05 Apr 2024 22:45:29 +0300
Date: Fri, 5 Apr 2024 22:45:29 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2 01/17] drm/i915: Update pipes in reverse order for
 bigjoiner
Message-ID: <ZhBU2aPQSelporZX@intel.com>
References: <20240404213441.17637-1-ville.syrjala@linux.intel.com>
 <20240404213441.17637-2-ville.syrjala@linux.intel.com>
 <SJ0PR11MB678987E66265BC27DDB3D0EB8D032@SJ0PR11MB6789.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <SJ0PR11MB678987E66265BC27DDB3D0EB8D032@SJ0PR11MB6789.namprd11.prod.outlook.com>
X-Patchwork-Hint: comment
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Apr 05, 2024 at 01:42:49PM +0000, Kulkarni, Vandita wrote:
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ville
> > Syrjala
> > Sent: Friday, April 5, 2024 3:04 AM
> > To: intel-gfx@lists.freedesktop.org
> > Subject: [PATCH v2 01/17] drm/i915: Update pipes in reverse order for
> > bigjoiner
> > 
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > With bigjoiner the master crtc is the one that will send out the uapi
> > event/etc. We want that to happen after all the slaves are done, so let's try
> > to do the commits in reverse order so that the master comes last.
> > 
> > Even worse, the modeset helper will simply complete the commit on the
> > slave pipe immediately as it consider the crtc to be inactive (it can't see our
> > crtc_state->hw.active/etc.).
> > 
> > With regular sync updates this generally doesn't matter all that much as the
> > slave pipe should typically finish its work during the same frame as the
> > master pipe. However in case the slave pipe's commit slips into the next
> > frame we end up in a bit of trouble. This is most visible with either async flips
> > (currently disabled with bigjoiner exactly for this reason), and DSB gamma
> > updates. With DSB the problem happens because the DSB itself will wait until
> > the next start vblank before starting to execute. So if the master pipe already
> > finished its commit and the DSB on the slave pipe is still waiting for the next
> > vblank we will assume the DSB as gotten stuck and terminate it.
> > 
> > Reversing the commit order should ameliarate this for the most part as the
> > master pipe is guaranteed to start its commit after the slave pipe started. The
> > one thing that can still screw us over is the fact that we aren't necessarily
> > going to commit the pipes in the reverse order as the actual order is dictated
> > by the DDB overlap avoidance.
> > But that can only happen while other pipes are being enabled/disabled, and
> > so in the normal steady state we should be safe.
> > 
> > The full fix will involve making the commit machinery aware of the slave
> > pipes and not finish their commits prematurely. But that will involve a bit
> > more work than this. And this commit order reversal will still be beneficial to
> > avoid userspace getting an -EBUSY from the following page flip if the second
> > pipe's commit does stretch into the next frame.
> > 
> 
> LGTM.
> Reviewed-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
> 
> I had just one query though,
> Will there be a case where we can get vblank between slave update and master update,
> if so do you think there will be any problem due to that?

It can happen, in which case you may observe a vertical tear.
Since we've disabled all the fancy transcoder level stuff 
(vrr/lrr/etc.) that should be the worst of it.

-- 
Ville Syrjälä
Intel
