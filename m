Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5106C6F16E0
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Apr 2023 13:37:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 743EF10E11B;
	Fri, 28 Apr 2023 11:36:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E05CA10E11B
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Apr 2023 11:36:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682681816; x=1714217816;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=rcDaQ3xAKqFtOQXy0hHnzVIKK1Uiig7kuoUHRyvncyE=;
 b=EbJMDCv4jzq5O8G0Mj9ksehiIxPf1IOJ7pf0k886cQ0rq8FB8qTqDW+m
 zCike6ewvv7JHHdnb8Jl5k2imQjzhwhr3SImiTRUEDs2Vqfkiqxwoe/GK
 3WLyWc0Lp8J/BOpUoMALS1fbdcPwoqzcJRq88F/S4d7+HGXaGAzk4d8SH
 1vVd5pBrU92j62agrxrEoxy1o1jYVIC6uxYTNbzk12ojPiOe9hQ3xAG72
 yB/Y/IHnM/WC2kzKwZq0+fXy/Nbcw8F1xzP5PwsX6NupyAVTfFCce7I5e
 5P4Da3hXAzW5DUNPq3TB4RqBYXWU35dG1LkhFIj/R+9aOnpODKBTKMk1l A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="434015408"
X-IronPort-AV: E=Sophos;i="5.99,234,1677571200"; d="scan'208";a="434015408"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2023 04:36:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="672147378"
X-IronPort-AV: E=Sophos;i="5.99,234,1677571200"; d="scan'208";a="672147378"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga006.jf.intel.com with SMTP; 28 Apr 2023 04:36:53 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 28 Apr 2023 14:36:52 +0300
Date: Fri, 28 Apr 2023 14:36:52 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Message-ID: <ZEuv1DAk5V7Ffswo@intel.com>
References: <20230421120307.24793-1-ville.syrjala@linux.intel.com>
 <20230421120307.24793-14-ville.syrjala@linux.intel.com>
 <176dae6934e6d79b93fbe158b8ac05ff161b76b3.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <176dae6934e6d79b93fbe158b8ac05ff161b76b3.camel@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 13/13] drm/i915/psr: Re-enable PSR1 on
 hdw/bdw
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Apr 28, 2023 at 11:19:39AM +0000, Hogander, Jouni wrote:
> On Fri, 2023-04-21 at 15:03 +0300, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > All known issues fixed now, so re-enable PSR1 on hsw/bdw.
> 
> Please note s/hdw/hsw/ in subject.
> 
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_pci.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/i915_pci.c
> > b/drivers/gpu/drm/i915/i915_pci.c
> > index 272a8ba37b64..923e24044967 100644
> > --- a/drivers/gpu/drm/i915/i915_pci.c
> > +++ b/drivers/gpu/drm/i915/i915_pci.c
> > @@ -562,6 +562,8 @@ static const struct intel_device_info vlv_info =
> > {
> >                 BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP), \
> >         .display.has_ddi = 1, \
> >         .display.has_fpga_dbg = 1, \
> > +       .display.has_psr = 1, \
> > +       .display.has_psr_hw_tracking = 1, \
> 
> Isn't this has_psr_hw_tracking about PSR2 with hw tracking mechanism in
> e.g. ICL? See Bspec: 4289. More recent platforms have manual tracking
> mechanism. In TGL there were both.

I have no idea what people meant by hw tracking in this context.
psr_force_hw_tracking_exit() is the thing that does the
CURSURFLIVE write to force PSR exit/etc. and that is used for
PSR1 and PSR2. So someone should properly document what this is
supposed to indicate, and rename either that function or this
flag to refelct reality.

> 
> >         .display.has_dp_mst = 1, \
> >         .has_rc6p = 0 /* RC6p removed-by HSW */, \
> >         HSW_PIPE_OFFSETS, \
> > @@ -665,8 +667,6 @@ static const struct intel_device_info chv_info =
> > {
> >         .has_gt_uc = 1, \
> >         .__runtime.has_hdcp = 1, \
> >         .display.has_ipc = 1, \
> > -       .display.has_psr = 1, \
> > -       .display.has_psr_hw_tracking = 1, \
> >         .display.dbuf.size = 896 - 4, /* 4 blocks for bypass path
> > allocation */ \
> >         .display.dbuf.slice_mask = BIT(DBUF_S1)
> >  
> 
> BR,
> 
> Jouni Högander

-- 
Ville Syrjälä
Intel
