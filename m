Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DBD9F5EAE34
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Sep 2022 19:30:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73CCF10E21D;
	Mon, 26 Sep 2022 17:29:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3158D10E21D
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Sep 2022 17:29:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664213392; x=1695749392;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=DArQgZjXxczfEfzo6vBoNBDsU5RXndCN0pncpmkWSYs=;
 b=m+u2Havt+SYbUFr0Ff6//o2zIbHen+XZ5ww4eAnWtNiDklnWLal+c+D9
 2Sw8LPP5YqnHZN3+4EAKx6gqjeLHBIBdD+LaZTDf2FMlBHY5KvdSGcgTk
 aV0KqSEsIZUA66UVfqzatQeLD7cPYL6k5RgW03ZW5/BtfGo5ybW9T1ysM
 Xnb6xsleVNNXb/bm85AHc/Ri/5aE1gnRy91sUvUzY2UQZWvC1nxZzdxUP
 MBiMz2Pjgngcnm35ujIopjnGa7+yUJqSq+VLJYekMbW2M2dLBRgid1Uva
 EvawD/EgvF4k/ZH33RIYkHmbzxbqlV92LcPbuUTE3rmmEblakukRTG2Gw Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="298691189"
X-IronPort-AV: E=Sophos;i="5.93,346,1654585200"; d="scan'208";a="298691189"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2022 10:29:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="689645682"
X-IronPort-AV: E=Sophos;i="5.93,346,1654585200"; d="scan'208";a="689645682"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga004.fm.intel.com with SMTP; 26 Sep 2022 10:29:48 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 26 Sep 2022 20:29:47 +0300
Date: Mon, 26 Sep 2022 20:29:47 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
Message-ID: <YzHhi9b0N5szcRcF@intel.com>
References: <20220917004404.414981-1-anusha.srivatsa@intel.com>
 <Yyl3sZ/zE4eZR4fH@intel.com>
 <CY4PR1101MB21666FC6A193F1FDA0B2A96BF84C9@CY4PR1101MB2166.namprd11.prod.outlook.com>
 <Yyo3pJ4QD9O4Iv6N@intel.com>
 <CY4PR1101MB2166290BF7A081C7C3A966F5F8519@CY4PR1101MB2166.namprd11.prod.outlook.com>
 <Yy4DPNanyNsqC+jU@intel.com>
 <CY4PR1101MB216654E040AB3C6B8446961FF8529@CY4PR1101MB2166.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CY4PR1101MB216654E040AB3C6B8446961FF8529@CY4PR1101MB2166.namprd11.prod.outlook.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 0/6] Introduce struct cdclk_step
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Sep 26, 2022 at 05:21:40PM +0000, Srivatsa, Anusha wrote:
> 
> 
> > -----Original Message-----
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > Sent: Friday, September 23, 2022 12:04 PM
> > To: Srivatsa, Anusha <anusha.srivatsa@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org; Shankar, Uma
> > <uma.shankar@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com>; Navare,
> > Manasi D <manasi.d.navare@intel.com>; Roper, Matthew D
> > <matthew.d.roper@intel.com>
> > Subject: Re: [PATCH 0/6] Introduce struct cdclk_step
> > 
> > On Fri, Sep 23, 2022 at 04:56:53PM +0000, Srivatsa, Anusha wrote:
> > >
> > >
> > > > -----Original Message-----
> > > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > > Sent: Tuesday, September 20, 2022 2:59 PM
> > > > To: Srivatsa, Anusha <anusha.srivatsa@intel.com>
> > > > Cc: intel-gfx@lists.freedesktop.org; Shankar, Uma
> > > > <uma.shankar@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com>
> > > > Subject: Re: [PATCH 0/6] Introduce struct cdclk_step
> > > >
> > > > On Tue, Sep 20, 2022 at 06:48:46PM +0000, Srivatsa, Anusha wrote:
> > > > >
> > > > >
> > > > > > -----Original Message-----
> > > > > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > > > > Sent: Tuesday, September 20, 2022 1:20 AM
> > > > > > To: Srivatsa, Anusha <anusha.srivatsa@intel.com>
> > > > > > Cc: intel-gfx@lists.freedesktop.org; Shankar, Uma
> > > > > > <uma.shankar@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com>
> > > > > > Subject: Re: [PATCH 0/6] Introduce struct cdclk_step
> > > > > >
> > > > > > On Fri, Sep 16, 2022 at 05:43:58PM -0700, Anusha Srivatsa wrote:
> > > > > > > This is a prep series for the actual cdclk refactoring that
> > > > > > > will be sent following this. Idea is to have a struct -
> > > > > > > cdclk_step that holds the following:
> > > > > > > - cdclk action (squash, crawl or modeset)
> > > > > > > - cdclk frequency
> > > > > > > which gets populated in atomic check. Driver uses the
> > > > > > > populated values during atomic commit to do the suitable
> > > > > > > sequence of actions like programming squash ctl registers in
> > > > > > > case of squashing or PLL sequence incase of modeset and so on.
> > > > > > >
> > > > > > > This series just addresses the initial idea. The actual
> > > > > > > plumming in the atomic commit phase will be sent shortly.
> > > > > >
> > > > > > OK, people keep ignoring what I say so I just typed up the code
> > > > > > quickly. This to me seems like the most straightforward way to
> > > > > > do what
> > > > we need:
> > > > > > https://github.com/vsyrjala/linux.git cdclk_crawl_and_squash
> > > > > >
> > > > > > Totally untested ofc, apart from me doing a quick scan through
> > > > > > our cdclk tables for the crawl+squahs platforms to make sure
> > > > > > that this approach should produce sane values.
> > > > > Ville,
> > > > > Why have a mid cdclk_config? Cant we use the new-cdclk-config for
> > > > > this
> > > > purpose?
> > > >
> > > > You either
> > > > - start at old, crawl to mid, then squash to new
> > > > - start at old, squash to mid, then crawl to new
> > >
> > > Tested the changes on TGL(legacy) and DG2(squash). Took some time to
> > understand the code but the mid cdclk config logic works. @Ville Syrjälä does
> > replacing the intel_cdclk_can_squash() and intel_cdclk_can_crawl() with your
> > new cdclk_crawl_and_squash in atomic check make sense?
> > 
> > I don't think we should need any real logic at that point.
> > If we can squash and crawl then I think we can always do the cdclk change
> > w/o a modeset, at least with what we currently have defined in the cdclk
> > tables.
> 
> @Ville Syrjälä is this patch in your radar to be sending out to the ML? Or should I send it on your behalf?

You can take over again if you want.

-- 
Ville Syrjälä
Intel
