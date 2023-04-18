Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 15F926E6428
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Apr 2023 14:46:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9198710E143;
	Tue, 18 Apr 2023 12:46:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBD4C10E143
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Apr 2023 12:46:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681821997; x=1713357997;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=BkdkIgHWyq/Ttj60aW0zWrTD1MqPvBwTsxNMaGHJ9Pk=;
 b=hylt0fuyRDjUcuxeI0CRAa4ydclv4SbFUkWtXsDM+e74jwZ6wYsevR5O
 XWjus/vEFX0TF4Rh/FkJC1cYYT0B9j0t5dCyiaWZbL0CRg3UdE48gTqOo
 ysTMlFRl+250WMq8rlWBjcprKFxh5ld8N7p1wWkqbVzjzENoIbacBtdeb
 +nvtKTrIy5TyggioYMwIYyogTRvCVY3L9qkCZHBA40Qw4oMXHaq+tKxNa
 y8BAuU2BVTZ0kCFascsZmBtPWm10az8uaj4yvXZA3JYBXa6YQa2ocwBUa
 4E6m1wx7QZipNLNbPocGVq675gyLciqGD5sn9kTn0wOvgn4NGS39rAuAM Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="329331271"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="329331271"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2023 05:46:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="721504097"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="721504097"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga008.jf.intel.com with SMTP; 18 Apr 2023 05:46:34 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 18 Apr 2023 15:46:33 +0300
Date: Tue, 18 Apr 2023 15:46:33 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Manasi Navare <navaremanasi@chromium.org>
Message-ID: <ZD6RKS972byO+Fpa@intel.com>
References: <20230411173408.1945921-1-navaremanasi@chromium.org>
 <ZDWcDhmJyMhQpQBa@intel.com>
 <CAE72mNkzD4fpXeTVyFaP+xQqDbSFm+yiQ8sBvGoD+beequfeaQ@mail.gmail.com>
 <ZDZAHj4PPaDD9HHj@intel.com>
 <CAE72mNmd2wAdLFQFLgKeDazyn+Qogd1h4N75hfJrtBsOndB2Vg@mail.gmail.com>
 <CAE72mNmy9Lm2vZz9S1q18-yAGWXsBkjhFkYDzoHZFQY6LqvOyw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAE72mNmy9Lm2vZz9S1q18-yAGWXsBkjhFkYDzoHZFQY6LqvOyw@mail.gmail.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Return correct err code
 for bpc < 0
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Apr 17, 2023 at 03:48:12PM -0700, Manasi Navare wrote:
> Hi Ville,
> 
> Could you suggest how to handle the intel_dp_link_compute_config()
> when the max_bpp is returned as 0, currently
> it just exits the loop and returns a -EINVAL and this triggers the DSC path.
> While we should be completely failing the modeset and encoder_config
> in this case instead of trying DSC, correct?

The DSC path needs to handle the bpp limits correctly:
1. Take the baseline limits already computed
2. Further restrict them based on sink/source DSC capabilities/etc.
3. Make sure the uncompressed bpp value chosen is between the min/max

> 
> Manasi
> 
> On Thu, Apr 13, 2023 at 8:23 AM Manasi Navare <navaremanasi@chromium.org> wrote:
> >
> > On Tue, Apr 11, 2023 at 10:22 PM Ville Syrjälä
> > <ville.syrjala@linux.intel.com> wrote:
> > >
> > > On Tue, Apr 11, 2023 at 05:07:01PM -0700, Manasi Navare wrote:
> > > > On Tue, Apr 11, 2023 at 10:42 AM Ville Syrjälä
> > > > <ville.syrjala@linux.intel.com> wrote:
> > > > >
> > > > > On Tue, Apr 11, 2023 at 05:34:08PM +0000, Manasi Navare wrote:
> > > > > > In the function intel_dp_max_bpp(), currently if bpc < 0 in case of error,
> > > > > > we return 0 instead of returning an err code of -EINVAL.
> > > > > > This throws off the logic in the calling function.
> > > > >
> > > > > What logic? The caller doesn't expect to get an error.
> > > >
> > > > If this returns a 0, we end up using limits.max_bpp = 0 and in
> > > > intel_dp_compute_link_config_wide(),
> > > > since max_bpp is 0, it exits this for loop:
> > > >
> > > > for (bpp = limits->max_bpp; bpp >= limits->min_bpp; bpp -= 2 * 3) and returns
> > > > -EINVAL which then wrongly goes to enable DSC even when link BW is
> > > > sufficient without DSC.
> > >
> > > And how woud max_bpp<0 prevent that?
> > >
> > > The real problem seems to be that the DSC code totally
> > > ignores bpp limits.
> >
> > Hi Ville,
> >
> > So I see a few concerns/questions:
> > - Why is the Max bpp value 0 in intel_dp_max_bpp, is that a valid case
> > and how should our link configurations handle that case when max_bpp
> > is 0?
> > - This is happening in a bug I am looking at with HDMI PCON, @Ankit
> > Nautiyal  have we ever seen something similar where max_bpp for HDMi
> > PCON
> > is returned 0?
> > - I dont think its a problem with DSC code, but rather
> > intel_dp_compute_link_config() outer for loop where we vary
> > from max_bpp to min_bpp and see if any bpp works with available link
> > bw, how should we handle this when max_bpp = 0 if you are saying thats
> > a valid case?
> > - In this patch if I return -EINVAL instead of 0, then atleast the
> > entire encoder_config will fail and that will fail the modeset, since
> > it assumes max_bpp cannot be 0
> >
> > Could you please help answer above concerns and how to handle max bpp
> > = 0 case if that is valid? This patch is simply making that invalid
> > resulting into modeset failure
> >
> > Manasi
> > >
> > > --
> > > Ville Syrjälä
> > > Intel

-- 
Ville Syrjälä
Intel
