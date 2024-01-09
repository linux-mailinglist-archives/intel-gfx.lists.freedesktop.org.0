Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 403E38285EF
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jan 2024 13:18:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F6F310E190;
	Tue,  9 Jan 2024 12:18:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E7D910E190
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jan 2024 12:18:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704802691; x=1736338691;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=3ZEHh321FpIFOuTDWqz3Rihpubz2OKQfae+slo2sB1Y=;
 b=k7aIQN6ttc3lVxCl8qjNvUTcJSqPjAlU1ScmJJkfR0rlIwlFpf1owBCW
 sdbu9Kh6hz1qcg57xq8MIF92xO5g5H3fx7/Ua5AWX5pZc7WXPuCB87+uG
 8lZNYV7f+IN6Pg3yMROPOPnD2qQp1x9ItkHpcZDMOhV3/DYcXpHIbtMs2
 46rZadxmL5T3PSbgNJNvdE5EX+DisTg1lNiAYyoxOI9Lbaz5Z5XH9gprn
 TTKrRpzwuVLY6egOre1BoTZDwL0Ygr9+JKbLjxPo9Uayk3nxVyHjM1oX4
 UFsDwB2Kbhef05ziJAtKzSK6yjCAkBD5DzodlnpSoEzA/WvMHFrk8dlVt w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="464578137"
X-IronPort-AV: E=Sophos;i="6.04,182,1695711600"; d="scan'208";a="464578137"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2024 04:17:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="925251596"
X-IronPort-AV: E=Sophos;i="6.04,182,1695711600"; d="scan'208";a="925251596"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2024 04:17:43 -0800
Date: Tue, 9 Jan 2024 14:17:35 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 9/9] Revert "drm/i915/xe2lpd: Treat cursor plane as
 regular plane for DDB allocation"
Message-ID: <ZZ05Xzs7Owly5BVX@intel.com>
References: <20231213102519.13500-1-ville.syrjala@linux.intel.com>
 <20231213102519.13500-10-ville.syrjala@linux.intel.com>
 <ZXmVT5b18dJ7emvp@intel.com> <ZXnKejc3qC3QtrY2@intel.com>
 <ZXnNyF6F-v3C72hz@intel.com> <ZXw1RM2V-gifTLHK@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZXw1RM2V-gifTLHK@intel.com>
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

On Fri, Dec 15, 2023 at 01:15:16PM +0200, Ville Syrjälä wrote:
> On Wed, Dec 13, 2023 at 05:29:12PM +0200, Ville Syrjälä wrote:
> > On Wed, Dec 13, 2023 at 05:15:06PM +0200, Ville Syrjälä wrote:
> > > On Wed, Dec 13, 2023 at 01:28:15PM +0200, Lisovskiy, Stanislav wrote:
> > > > On Wed, Dec 13, 2023 at 12:25:19PM +0200, Ville Syrjala wrote:
> > > > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > > > 
> > > > > This reverts commit cfeff354f70bb1d0deb0279506e3f7989bc16e28.
> > > > > 
> > > > > A core design consideration with legacy cursor updates is that the
> > > > > cursor must not touch any other plane, even if we were to force it
> > > > > to take the slow path. That is the real reason why the cursor uses
> > > > > a fixed ddb allocation, not because bspec says so.
> > > > > 
> > > > > Treating cursors as any other plane during ddb allocation
> > > > > violates that, which means we can now pull other planes into
> > > > > fully unsynced legacy cursor mailbox commits. That is
> > > > > definitely not something we've ever considered when designing
> > > > > the rest of the code. The noarm+arm register write split in
> > > > > particular makes that dangerous as previous updates can get
> > > > > disarmed pretty much at any random time, and not necessarily
> > > > > in an order that is actually safe (eg. against ddb overlaps).
> > > > > 
> > > > > So if we were to do this then:
> > > > > - someone needs to expend the appropriate amount of brain
> > > > >   cells thinking through all the tricky details
> > > > 
> > > > So question is how can we avoid pulling other planes to the commit?..
> > > 
> > > By preallocating the ddb, as we do already.
> > 
> > I guess one thing we could consider is allcating the cursor ddb
> > based on the cursors real size (as opposed to always allocating for
> > 256x256 cursor), and not doing a mailbox update when changing size.
> > But as we learn in https://gitlab.freedesktop.org/drm/intel/-/issues/7687:
> > - current userspace always uses 256x256 until the PLANE_SIZE_HINTS
> >   stuff (or something similar) lands, so there is no point
> > - it would lead to worse power consumption with smaller cursors
> >   as there isn't enough extra ddb. The fact that we currently 
> >   allocate the minimum for 256x256 means smallers cursor sizes
> >   are more efficient. Some tests I did also indicated that the
> >   current code does not give optimal values even if we let it
> >   fully calculate the extra ddb like in the reverted commit here.
> >   We really need someone to take a proper look at how to tune
> >   the ddb allocation for optimal power consumption...
> 
> Oh, and another random idea I keep having occasionally would
> be to by default assume that legacy cursor uapi wouldn't be
> used, and then massage stuff sufficiently when the first use
> appears to make it work well from that point onwards. That 
> way we could try to be a bit more optimal with ddb/other
> stuff for userspace that never uses the legacy cursor uapi.
> But haven't really thought through the details on this one.

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> 
> -- 
> Ville Syrjälä
> Intel
