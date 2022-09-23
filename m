Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F4F95E824E
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Sep 2022 21:04:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEB3010E090;
	Fri, 23 Sep 2022 19:04:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0FD010E090
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Sep 2022 19:04:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663959872; x=1695495872;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=t26sLFDtSUiPRk6M5PKGZOnuZ5+2EKwwAEd8p5dHXE8=;
 b=he4WPL9VRULjnsDoqYIrhFVNo+H6bcX6k+71YgA2dZO++GIhZDh2kvCs
 4LFG391p3XAsVIJRcSQ3z1uprHocmNcFR59y2ObzLTYinhaqdfODt29IK
 oHwwm1Tua6fUXqilvlscX1z13MHLHQHxp9i5/YdUhKlIjQFZhVlnDCdMe
 Hklp7WVmBdt3l8O6QxGAVdn59Hlxh0aVSQvk/Fw+a/YrpWe+7Y0yp1Svh
 WTsIYWQcBuOKh8ym8AxzM/ppCI4NqCVNrK9ukckf1q+I/+Uca8TpFdW+z
 BeYBW68dKP1EoEe/sfVi10Pxy6hGZ3G/U+K0joO5Ljlq0TLM3yF1IffFV w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10479"; a="386958768"
X-IronPort-AV: E=Sophos;i="5.93,339,1654585200"; d="scan'208";a="386958768"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2022 12:04:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,339,1654585200"; d="scan'208";a="651061322"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga008.jf.intel.com with SMTP; 23 Sep 2022 12:04:28 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 23 Sep 2022 22:04:28 +0300
Date: Fri, 23 Sep 2022 22:04:28 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
Message-ID: <Yy4DPNanyNsqC+jU@intel.com>
References: <20220917004404.414981-1-anusha.srivatsa@intel.com>
 <Yyl3sZ/zE4eZR4fH@intel.com>
 <CY4PR1101MB21666FC6A193F1FDA0B2A96BF84C9@CY4PR1101MB2166.namprd11.prod.outlook.com>
 <Yyo3pJ4QD9O4Iv6N@intel.com>
 <CY4PR1101MB2166290BF7A081C7C3A966F5F8519@CY4PR1101MB2166.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CY4PR1101MB2166290BF7A081C7C3A966F5F8519@CY4PR1101MB2166.namprd11.prod.outlook.com>
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

On Fri, Sep 23, 2022 at 04:56:53PM +0000, Srivatsa, Anusha wrote:
> 
> 
> > -----Original Message-----
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > Sent: Tuesday, September 20, 2022 2:59 PM
> > To: Srivatsa, Anusha <anusha.srivatsa@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org; Shankar, Uma
> > <uma.shankar@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com>
> > Subject: Re: [PATCH 0/6] Introduce struct cdclk_step
> > 
> > On Tue, Sep 20, 2022 at 06:48:46PM +0000, Srivatsa, Anusha wrote:
> > >
> > >
> > > > -----Original Message-----
> > > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > > Sent: Tuesday, September 20, 2022 1:20 AM
> > > > To: Srivatsa, Anusha <anusha.srivatsa@intel.com>
> > > > Cc: intel-gfx@lists.freedesktop.org; Shankar, Uma
> > > > <uma.shankar@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com>
> > > > Subject: Re: [PATCH 0/6] Introduce struct cdclk_step
> > > >
> > > > On Fri, Sep 16, 2022 at 05:43:58PM -0700, Anusha Srivatsa wrote:
> > > > > This is a prep series for the actual cdclk refactoring that will
> > > > > be sent following this. Idea is to have a struct - cdclk_step that
> > > > > holds the following:
> > > > > - cdclk action (squash, crawl or modeset)
> > > > > - cdclk frequency
> > > > > which gets populated in atomic check. Driver uses the populated
> > > > > values during atomic commit to do the suitable sequence of actions
> > > > > like programming squash ctl registers in case of squashing or PLL
> > > > > sequence incase of modeset and so on.
> > > > >
> > > > > This series just addresses the initial idea. The actual plumming
> > > > > in the atomic commit phase will be sent shortly.
> > > >
> > > > OK, people keep ignoring what I say so I just typed up the code
> > > > quickly. This to me seems like the most straightforward way to do what
> > we need:
> > > > https://github.com/vsyrjala/linux.git cdclk_crawl_and_squash
> > > >
> > > > Totally untested ofc, apart from me doing a quick scan through our
> > > > cdclk tables for the crawl+squahs platforms to make sure that this
> > > > approach should produce sane values.
> > > Ville,
> > > Why have a mid cdclk_config? Cant we use the new-cdclk-config for this
> > purpose?
> > 
> > You either
> > - start at old, crawl to mid, then squash to new
> > - start at old, squash to mid, then crawl to new
> 
> Tested the changes on TGL(legacy) and DG2(squash). Took some time to understand the code but the mid cdclk config logic works. @Ville Syrjälä does replacing the intel_cdclk_can_squash() and intel_cdclk_can_crawl() with your new cdclk_crawl_and_squash in atomic check make sense?

I don't think we should need any real logic at that point.
If we can squash and crawl then I think we can always do
the cdclk change w/o a modeset, at least with what we
currently have defined in the cdclk tables.

-- 
Ville Syrjälä
Intel
