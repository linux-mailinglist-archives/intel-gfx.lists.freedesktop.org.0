Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E24C41F75C
	for <lists+intel-gfx@lfdr.de>; Sat,  2 Oct 2021 00:17:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0C286E593;
	Fri,  1 Oct 2021 22:17:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4DE16E593
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Oct 2021 22:17:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10124"; a="248167060"
X-IronPort-AV: E=Sophos;i="5.85,340,1624345200"; d="scan'208";a="248167060"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2021 15:17:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,340,1624345200"; d="scan'208";a="619441943"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga001.fm.intel.com with SMTP; 01 Oct 2021 15:17:06 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 02 Oct 2021 01:17:05 +0300
Date: Sat, 2 Oct 2021 01:17:05 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org,
 Karthik B S <karthik.b.s@intel.com>
Message-ID: <YVeI4b7EzRcwrvLi@intel.com>
References: <20210930190943.17547-1-ville.syrjala@linux.intel.com>
 <20211001210815.GG3389343@mdroper-desk1.amr.corp.intel.com>
 <YVeFOzabpcWAbVFQ@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YVeFOzabpcWAbVFQ@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Extend the async flip VT-d
 w/a to skl/bxt
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

On Sat, Oct 02, 2021 at 01:01:31AM +0300, Ville Syrjälä wrote:
> On Fri, Oct 01, 2021 at 02:08:15PM -0700, Matt Roper wrote:
> > On Thu, Sep 30, 2021 at 10:09:42PM +0300, Ville Syrjala wrote:
> > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > 
> > > Looks like skl/bxt/derivatives also need the plane stride
> > > stretch w/a when using async flips and VT-d is enabled, or
> > > else we get corruption on screen. To my surprise this was
> > > even documented in bspec, but only as a note on the
> > > CHICHKEN_PIPESL register description rather than on the
> > > w/a list.
> > > 
> > > So very much the same thing as on HSW/BDW, except the bits
> > > moved yet again.
> > 
> > Bspec 7522 doesn't say anything about this requirement being tied to
> > VT-d on these platforms.  Should we drop the intel_vtd_active()
> > condition to be safe?
> 
> I think it's just an oversight in bspec. I read through the hsd and
> IIRC it did specify that it's VT-d only. Also real life confirms
> it. No problems whatsoever when VT-d is disabled.

BTW I was hopeful this would fix shard-skl but no such luck.
Well, in fact it does fix the crc error, indicating the patch
does work. Unfortunately those systems have yet another
undiagnosed async flip problem. From the ci report on this
series I can see that the machine was only capable of ~1.2
async flips per frame during the crc test. I guess technically
anything >1 counts as "some async flips did happen" but it really
should not be that low (I put the arbitrary limit in the test at
two flips per frame). My cfl can do IIRC 50-150 per frame,
depending on the phase of the moon and whatnot.

-- 
Ville Syrjälä
Intel
