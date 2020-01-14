Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0838513B59A
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 00:03:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A66D6E071;
	Tue, 14 Jan 2020 23:03:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5939F6E071
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jan 2020 23:03:31 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jan 2020 15:03:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,320,1574150400"; d="scan'208";a="219078332"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by fmsmga007.fm.intel.com with ESMTP; 14 Jan 2020 15:03:20 -0800
Date: Tue, 14 Jan 2020 15:03:20 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200114230320.GF2244136@mdroper-desk1.amr.corp.intel.com>
References: <20200114224508.3302967-1-matthew.d.roper@intel.com>
 <157904207833.5559.9894672106993486116@skylake-alporthouse-com>
 <157904249072.5559.17330332451430123199@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <157904249072.5559.17330332451430123199@skylake-alporthouse-com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [RFC] drm/i915: Restrict legacy color key ioctl to
 pre-gen12
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

On Tue, Jan 14, 2020 at 10:54:50PM +0000, Chris Wilson wrote:
> Quoting Chris Wilson (2020-01-14 22:47:58)
> > Quoting Matt Roper (2020-01-14 22:45:08)
> > > Since gen12 platform support isn't finalized yet, let's kill off the
> > > legacy color key ioctl for this platform; there's no userspace today
> > > that can run on this platform that utilizes this legacy ioctl, so we can
> > > safely kill it now before it becomes ABI.
> > > 
> > > Color key functionality never got integrated into the property / atomic
> > > interface, and the only known open source consumer was the Intel DDX
> > > which was never updated to run on platforms beyond gen9.  If color
> > > keying is desired going forward, it should really be exposed as a
> > > property so that it can be applied atomically with other display updates
> > > (and should probably be standardized in a way all drivers can choose to
> > > support rather than being i915-specific).
> > 
> > But it does run on those platforms and exposes the sprite plane via Xv.
> 

Hmm, looks like I overlooked 00184dc03 ("Sync i915_pciids upto
d0e062ebb3a4") which finally brought in the CNL and ICL pci ids.  As far
as I can see it still lacks EHL/JSL and TGL as far as I can see.  Are
there plans to continue support for xf86-video-intel for future
platforms?  If not, then cutting the support off at TGL would still be
safe.


Matt

> What you can say is that the color_key is not required by the Xv sprite
> code. We will just unfortunately advertise it to clients, but not
> actually do anything.
> -Chris



-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
