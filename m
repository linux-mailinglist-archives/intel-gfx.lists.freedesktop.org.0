Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AA7CF6E6795
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Apr 2023 16:54:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1302610E356;
	Tue, 18 Apr 2023 14:54:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6924810E166
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Apr 2023 14:54:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681829667; x=1713365667;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=MGXThFPNyK1oPiNNLuIk2H26wE60R5DvFCaBlVaIfzo=;
 b=bjWZJCxeJYuIQYE3+vHmQO9cMFOYVKFrgWT669hIzloNZyt4/RsjpXa+
 5tnmKb5NxSfVEGQnkZ+B6ULDgBfCwP7X1MeJalxHaw8co/QK7Vp4yebyt
 PDYk+GL6virKUX3MURJc8OBrOks48c8Dvyj1QMMdiAGBCk3BFaR9k/vop
 5d8+cfzPCkoZ2V8CNYqlydoBpwxQLO+qdxtB6Fv9APzLEOvOhI974Pdkz
 r+6U9uPtCab5Ug+CqQQGAyFfMEmOPtMyi6tQtm+cTXal2ePNMREQTbKE2
 QpMfXgZwMBEyDlHnWw/hglS/6e9yhPnlWW1/puibeHFMPIbI2EBoHBBkH A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="342681075"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="342681075"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2023 07:54:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="834902302"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="834902302"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga001.fm.intel.com with SMTP; 18 Apr 2023 07:54:22 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 18 Apr 2023 17:54:22 +0300
Date: Tue, 18 Apr 2023 17:54:22 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Message-ID: <ZD6vHkhvyqzHra2X@intel.com>
References: <20230411173408.1945921-1-navaremanasi@chromium.org>
 <ZDWcDhmJyMhQpQBa@intel.com>
 <CAE72mNkzD4fpXeTVyFaP+xQqDbSFm+yiQ8sBvGoD+beequfeaQ@mail.gmail.com>
 <ZDZAHj4PPaDD9HHj@intel.com>
 <CAE72mNmd2wAdLFQFLgKeDazyn+Qogd1h4N75hfJrtBsOndB2Vg@mail.gmail.com>
 <CAE72mNmy9Lm2vZz9S1q18-yAGWXsBkjhFkYDzoHZFQY6LqvOyw@mail.gmail.com>
 <ZD6RKS972byO+Fpa@intel.com>
 <fc47b7d8-0a93-716d-337b-405c601f2a6d@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <fc47b7d8-0a93-716d-337b-405c601f2a6d@intel.com>
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

On Tue, Apr 18, 2023 at 08:09:16PM +0530, Nautiyal, Ankit K wrote:
> 
> On 4/18/2023 6:16 PM, Ville Syrjälä wrote:
> > On Mon, Apr 17, 2023 at 03:48:12PM -0700, Manasi Navare wrote:
> >> Hi Ville,
> >>
> >> Could you suggest how to handle the intel_dp_link_compute_config()
> >> when the max_bpp is returned as 0, currently
> >> it just exits the loop and returns a -EINVAL and this triggers the DSC path.
> >> While we should be completely failing the modeset and encoder_config
> >> in this case instead of trying DSC, correct?
> > The DSC path needs to handle the bpp limits correctly:
> > 1. Take the baseline limits already computed
> > 2. Further restrict them based on sink/source DSC capabilities/etc.
> > 3. Make sure the uncompressed bpp value chosen is between the min/max
> 
> I have some older patch to try similar thing [1]. We try to iterate over 
> bpc to find pipe_bpp in the limits, then try to find out compressed_bpp.
> 
> But if intel_dp_max_bpp returns 0, limits.max_bpp is set to 0, so we 
> discard this for dsc case and re-calculate the limits.max_bpp?

You shouldn't discard anything. DSC should take the already computed
limits and potentially just shrink them further based on DSC specific
constraints.

Or is there some weird case where DSC would allow lower/higher bpp
than what our uncompressed bpp limits declare?

> 
> 
> [1] https://patchwork.freedesktop.org/patch/519346/?series=111391&rev=3
> 
> >
> >> Manasi
> >>
> >> On Thu, Apr 13, 2023 at 8:23 AM Manasi Navare <navaremanasi@chromium.org> wrote:
> >>> On Tue, Apr 11, 2023 at 10:22 PM Ville Syrjälä
> >>> <ville.syrjala@linux.intel.com> wrote:
> >>>> On Tue, Apr 11, 2023 at 05:07:01PM -0700, Manasi Navare wrote:
> >>>>> On Tue, Apr 11, 2023 at 10:42 AM Ville Syrjälä
> >>>>> <ville.syrjala@linux.intel.com> wrote:
> >>>>>> On Tue, Apr 11, 2023 at 05:34:08PM +0000, Manasi Navare wrote:
> >>>>>>> In the function intel_dp_max_bpp(), currently if bpc < 0 in case of error,
> >>>>>>> we return 0 instead of returning an err code of -EINVAL.
> >>>>>>> This throws off the logic in the calling function.
> >>>>>> What logic? The caller doesn't expect to get an error.
> >>>>> If this returns a 0, we end up using limits.max_bpp = 0 and in
> >>>>> intel_dp_compute_link_config_wide(),
> >>>>> since max_bpp is 0, it exits this for loop:
> >>>>>
> >>>>> for (bpp = limits->max_bpp; bpp >= limits->min_bpp; bpp -= 2 * 3) and returns
> >>>>> -EINVAL which then wrongly goes to enable DSC even when link BW is
> >>>>> sufficient without DSC.
> >>>> And how woud max_bpp<0 prevent that?
> >>>>
> >>>> The real problem seems to be that the DSC code totally
> >>>> ignores bpp limits.
> >>> Hi Ville,
> >>>
> >>> So I see a few concerns/questions:
> >>> - Why is the Max bpp value 0 in intel_dp_max_bpp, is that a valid case
> >>> and how should our link configurations handle that case when max_bpp
> >>> is 0?
> >>> - This is happening in a bug I am looking at with HDMI PCON, @Ankit
> >>> Nautiyal  have we ever seen something similar where max_bpp for HDMi
> >>> PCON
> >>> is returned 0?
> >>> - I dont think its a problem with DSC code, but rather
> >>> intel_dp_compute_link_config() outer for loop where we vary
> >>> from max_bpp to min_bpp and see if any bpp works with available link
> >>> bw, how should we handle this when max_bpp = 0 if you are saying thats
> >>> a valid case?
> >>> - In this patch if I return -EINVAL instead of 0, then atleast the
> >>> entire encoder_config will fail and that will fail the modeset, since
> >>> it assumes max_bpp cannot be 0
> >>>
> >>> Could you please help answer above concerns and how to handle max bpp
> >>> = 0 case if that is valid? This patch is simply making that invalid
> >>> resulting into modeset failure
> >>>
> >>> Manasi
> >>>> --
> >>>> Ville Syrjälä
> >>>> Intel

-- 
Ville Syrjälä
Intel
