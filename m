Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FDC05BEF80
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Sep 2022 23:59:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E3B010E080;
	Tue, 20 Sep 2022 21:59:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0000310E080
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Sep 2022 21:59:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663711143; x=1695247143;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Mu5hdNjHTRtc1O9/r8eh9c3FXmJZDBQCUcLDOvA4CBk=;
 b=TMvu9lzwKrWY5KY2VhMcpDHt2GxH9DXM4Rt3AFt8gq1SfSMvl0MDTRCl
 MpMikii5VsYmalmm4ogseigYRCikjdVB8lgh3O2tqwJcxxzwMP76+JFxE
 OiCEHv/rnvgF93lmb5bamfscBbayMoK2IYdP5KQlzjbT58gnY6AI+9KXY
 68U/LhhbJHGm4wfEYJD8Wav0gNB2GqbasC3j4P46WOn2O0YfX58nM1JCe
 m6cX4UmGnAnO7LCWWecoIKltxw7uc1gAZwstQ4NQBsBPrIy4/ZVSgid0B
 D2zP3yppmCiuiTK1iI/HL/QvxdnTdvnOajxh2Ri7FIkXBP3/M0IXRX0Q/ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10476"; a="297423726"
X-IronPort-AV: E=Sophos;i="5.93,331,1654585200"; d="scan'208";a="297423726"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2022 14:59:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,331,1654585200"; d="scan'208";a="722922224"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga002.fm.intel.com with SMTP; 20 Sep 2022 14:59:01 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 21 Sep 2022 00:59:00 +0300
Date: Wed, 21 Sep 2022 00:59:00 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
Message-ID: <Yyo3pJ4QD9O4Iv6N@intel.com>
References: <20220917004404.414981-1-anusha.srivatsa@intel.com>
 <Yyl3sZ/zE4eZR4fH@intel.com>
 <CY4PR1101MB21666FC6A193F1FDA0B2A96BF84C9@CY4PR1101MB2166.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CY4PR1101MB21666FC6A193F1FDA0B2A96BF84C9@CY4PR1101MB2166.namprd11.prod.outlook.com>
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

On Tue, Sep 20, 2022 at 06:48:46PM +0000, Srivatsa, Anusha wrote:
> 
> 
> > -----Original Message-----
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > Sent: Tuesday, September 20, 2022 1:20 AM
> > To: Srivatsa, Anusha <anusha.srivatsa@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org; Shankar, Uma
> > <uma.shankar@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com>
> > Subject: Re: [PATCH 0/6] Introduce struct cdclk_step
> > 
> > On Fri, Sep 16, 2022 at 05:43:58PM -0700, Anusha Srivatsa wrote:
> > > This is a prep series for the actual cdclk refactoring that will be
> > > sent following this. Idea is to have a struct - cdclk_step that holds
> > > the following:
> > > - cdclk action (squash, crawl or modeset)
> > > - cdclk frequency
> > > which gets populated in atomic check. Driver uses the populated values
> > > during atomic commit to do the suitable sequence of actions like
> > > programming squash ctl registers in case of squashing or PLL sequence
> > > incase of modeset and so on.
> > >
> > > This series just addresses the initial idea. The actual plumming in
> > > the atomic commit phase will be sent shortly.
> > 
> > OK, people keep ignoring what I say so I just typed up the code quickly. This
> > to me seems like the most straightforward way to do what we need:
> > https://github.com/vsyrjala/linux.git cdclk_crawl_and_squash
> > 
> > Totally untested ofc, apart from me doing a quick scan through our cdclk
> > tables for the crawl+squahs platforms to make sure that this approach
> > should produce sane values.
> Ville,
> Why have a mid cdclk_config? Cant we use the new-cdclk-config for this purpose?

You either
- start at old, crawl to mid, then squash to new
- start at old, squash to mid, then crawl to new

-- 
Ville Syrjälä
Intel
