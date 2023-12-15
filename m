Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F3CC814688
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Dec 2023 12:15:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97D7F10E9C5;
	Fri, 15 Dec 2023 11:15:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAD2110E9C5
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Dec 2023 11:15:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702638920; x=1734174920;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=vhbWscbQ/P6fOu/uyuXO/RbdRBewLwFJ+2R1H2pbROg=;
 b=LilnxzW5OTaOghSIm+A6NikknFRXeEJ0WIgwPckliNaM2DlsYQqCRPsm
 JYfCwyH1RiiXvqFWG9qGdj1BjtGd2aFdpE+82C0Fveb/VIVVhn1iUs0q5
 O/slC9omfTuprsLDhcQ5Ag4NurqyY8ZLjExzTtQ+u2qzuzNH+Ez74ZZ4F
 eBFQ9ConWcaSOq8qP6uiRuHMJCrsrcT622iNfH2GJ08NWheCYIHYlMnLn
 vSRksO+oh2wMx8k3Y7N59L0QzSb3wBgJKY2RIfU4borSals+TqkhdVI5j
 2WqoS9lp83sjigfO04GObGeYTGke1zI2lxtR3QBbe0T4IEb2TJ7lhMwaF w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="380257945"
X-IronPort-AV: E=Sophos;i="6.04,278,1695711600"; d="scan'208";a="380257945"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2023 03:15:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="767947396"
X-IronPort-AV: E=Sophos;i="6.04,278,1695711600"; d="scan'208";a="767947396"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 15 Dec 2023 03:15:16 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 15 Dec 2023 13:15:16 +0200
Date: Fri, 15 Dec 2023 13:15:16 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Subject: Re: [PATCH 9/9] Revert "drm/i915/xe2lpd: Treat cursor plane as
 regular plane for DDB allocation"
Message-ID: <ZXw1RM2V-gifTLHK@intel.com>
References: <20231213102519.13500-1-ville.syrjala@linux.intel.com>
 <20231213102519.13500-10-ville.syrjala@linux.intel.com>
 <ZXmVT5b18dJ7emvp@intel.com> <ZXnKejc3qC3QtrY2@intel.com>
 <ZXnNyF6F-v3C72hz@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZXnNyF6F-v3C72hz@intel.com>
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
Cc: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org,
 Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Dec 13, 2023 at 05:29:12PM +0200, Ville Syrjälä wrote:
> On Wed, Dec 13, 2023 at 05:15:06PM +0200, Ville Syrjälä wrote:
> > On Wed, Dec 13, 2023 at 01:28:15PM +0200, Lisovskiy, Stanislav wrote:
> > > On Wed, Dec 13, 2023 at 12:25:19PM +0200, Ville Syrjala wrote:
> > > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > > 
> > > > This reverts commit cfeff354f70bb1d0deb0279506e3f7989bc16e28.
> > > > 
> > > > A core design consideration with legacy cursor updates is that the
> > > > cursor must not touch any other plane, even if we were to force it
> > > > to take the slow path. That is the real reason why the cursor uses
> > > > a fixed ddb allocation, not because bspec says so.
> > > > 
> > > > Treating cursors as any other plane during ddb allocation
> > > > violates that, which means we can now pull other planes into
> > > > fully unsynced legacy cursor mailbox commits. That is
> > > > definitely not something we've ever considered when designing
> > > > the rest of the code. The noarm+arm register write split in
> > > > particular makes that dangerous as previous updates can get
> > > > disarmed pretty much at any random time, and not necessarily
> > > > in an order that is actually safe (eg. against ddb overlaps).
> > > > 
> > > > So if we were to do this then:
> > > > - someone needs to expend the appropriate amount of brain
> > > >   cells thinking through all the tricky details
> > > 
> > > So question is how can we avoid pulling other planes to the commit?..
> > 
> > By preallocating the ddb, as we do already.
> 
> I guess one thing we could consider is allcating the cursor ddb
> based on the cursors real size (as opposed to always allocating for
> 256x256 cursor), and not doing a mailbox update when changing size.
> But as we learn in https://gitlab.freedesktop.org/drm/intel/-/issues/7687:
> - current userspace always uses 256x256 until the PLANE_SIZE_HINTS
>   stuff (or something similar) lands, so there is no point
> - it would lead to worse power consumption with smaller cursors
>   as there isn't enough extra ddb. The fact that we currently 
>   allocate the minimum for 256x256 means smallers cursor sizes
>   are more efficient. Some tests I did also indicated that the
>   current code does not give optimal values even if we let it
>   fully calculate the extra ddb like in the reverted commit here.
>   We really need someone to take a proper look at how to tune
>   the ddb allocation for optimal power consumption...

Oh, and another random idea I keep having occasionally would
be to by default assume that legacy cursor uapi wouldn't be
used, and then massage stuff sufficiently when the first use
appears to make it work well from that point onwards. That 
way we could try to be a bit more optimal with ddb/other
stuff for userspace that never uses the legacy cursor uapi.
But haven't really thought through the details on this one.

-- 
Ville Syrjälä
Intel
