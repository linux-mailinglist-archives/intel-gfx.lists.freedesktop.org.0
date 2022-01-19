Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1B34494125
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jan 2022 20:47:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8E6E10F163;
	Wed, 19 Jan 2022 19:47:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AD8B10F163
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jan 2022 19:47:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642621657; x=1674157657;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ZcYR0u4Wo15ckDEiRYM2ULQomQG0ObOItlaaRXV8/LE=;
 b=GvMofJLuUvUCcTU09LmGlNWxqb42ntXFRQjtmJap2sG/F603JqHV4laN
 BcrpWSxIK/Lq6839f84BcJBm07f0mSJe2crKrolNo0EGCNLn8rURxzOz5
 wUkokJlf6VvlFACUmhSmOVg098vBzUsVXM4JDPU59aOcF1LCZ88RirbuC
 TgtutyKU4L84/c1yVt9TnA5IIwsIDvfMVIpNjUZhSPNeFkmk3oN1JqbmE
 qYtEnZ6rZ1je6AneC/p6+1uSWQ8Zma+eYdKsj/mgt75js8WLfis9pffeh
 R/PycpC6qaJ1fkzzQCA2mkB+ozbMXd7ePVP8YCfOAQSM9nMnSmXcM0yCw g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10231"; a="242738388"
X-IronPort-AV: E=Sophos;i="5.88,300,1635231600"; d="scan'208";a="242738388"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2022 11:47:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,300,1635231600"; d="scan'208";a="561175545"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by orsmga001.jf.intel.com with SMTP; 19 Jan 2022 11:47:34 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 19 Jan 2022 21:47:33 +0200
Date: Wed, 19 Jan 2022 21:47:33 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Navare, Manasi" <manasi.d.navare@intel.com>
Message-ID: <Yehq1eK+R3kZhO6J@intel.com>
References: <20220119122150.12941-1-ville.syrjala@linux.intel.com>
 <87o847bvri.fsf@intel.com>
 <20220119190942.GA20150@labuser-Z97X-UD5H>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220119190942.GA20150@labuser-Z97X-UD5H>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Nuke dg2_ddi_pre_enable_dp()
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

On Wed, Jan 19, 2022 at 11:09:47AM -0800, Navare, Manasi wrote:
> On Wed, Jan 19, 2022 at 05:17:05PM +0200, Jani Nikula wrote:
> > On Wed, 19 Jan 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > >
> > > dg2_ddi_pre_enable_dp() has outlived its usefulness so eliminate
> > > it.
> > >
> > > The one thing that tgl_ddi_pre_enable_dp() is missing that we
> > > need is intel_ddi_config_transcoder_dp2(). So we'll bring that
> > > over.
> > >
> > > tgl_ddi_pre_enable_dp() does also have a few things that
> > > dg2_ddi_pre_enable_dp() didn't have:
> > > - icl_program_mg_dp_mode() -> nop due to intel_phy_is_tc()==false on DG2
> > > - intel_ddi_power_up_lanes() -> nop due to intel_phy_is_combo()==false on DG2
> > > - intel_ddi_mso_configure() -> only matters for MSO panels
> > >
> > > Another slight difference is that dg2_ddi_pre_enable_dp() was
> > > missing a bigjoiner check around intel_dsc_enable(), which
> > > tgl_ddi_pre_enable_dp() does have.
> 
> Thanks Ville for this patch, I was just comparing differences between dg2_pre_enable_dp and tgl_pre_enable_dp
> in regards to a bug and there is totally no need for two functions with the checks you have here.
> 
> For the bigjoiner check aroind intel_dsc_enable(), I think the function intel_dsc_dp_pps_write(encoder, crtc_state);
> also needs to be moved into that check. 
> And then this functions needs to be called from icl_ddi_bigjoiner_pre_enable() where we call intel_dsc_enable

The video DIP lives in the transcoder so we don't want to write it
twice.

-- 
Ville Syrjälä
Intel
