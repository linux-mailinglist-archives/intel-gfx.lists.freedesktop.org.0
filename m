Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 981CB6CDB81
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 16:06:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF32610EAFF;
	Wed, 29 Mar 2023 14:06:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D0D110EAFF
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 14:06:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680098766; x=1711634766;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=9OI8LPNhqWKesY0ezbobncAbk1LNpGfutWF7Yez3coY=;
 b=IfUe6PmSD9OyQ24BDLpYcqPX5euyJuaqLUXXTdcdpPIPniJUC5Jpx4bJ
 ovM0zs3DfLsB+qOEDu5ZUrfbcXr1tJpzKpsPi3fPZau2La9FG5Ya1AEfD
 LOttYAoNtO7F0CkvV2LNE31DCaJV19JdK3g0mJqW8pusuH9DIR5aqdpla
 tJWut+qu1U2fZZnBvMHkvxiAivfLLLvp5bMSUMe/eG5tnUQuf9W43bwfT
 UxA0K/Cu/uHHAwBoyR3sshvgBd/oXW757wSEjalUOmAOm8w3T72XPnuLJ
 B2npCgK+er/o9l3lruDffleFShztot7qIwM8dkqsVXzG0k/+zHWcOearv g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="321277911"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="321277911"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 07:05:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="714625937"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="714625937"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga008.jf.intel.com with SMTP; 29 Mar 2023 07:05:40 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 29 Mar 2023 17:05:39 +0300
Date: Wed, 29 Mar 2023 17:05:39 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Message-ID: <ZCRFswFqin8ot767@intel.com>
References: <20230329084449.717954-1-ankit.k.nautiyal@intel.com>
 <20230329084449.717954-3-ankit.k.nautiyal@intel.com>
 <ZCQLhkwNGRnZkD4k@intel.com>
 <f62f54f4-b42f-dc23-2ae9-2be450854bb1@intel.com>
 <ZCQYkQHDnPLX0Ee2@intel.com>
 <32039884-4045-478a-e03b-09afba2b15a3@intel.com>
 <ZCQiijNDxTqT98bw@intel.com> <ZCRArK2LURNnjLbx@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZCRArK2LURNnjLbx@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/dp: Use current cdclk for DSC
 Bigjoiner BW check
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

On Wed, Mar 29, 2023 at 04:44:12PM +0300, Lisovskiy, Stanislav wrote:
> On Wed, Mar 29, 2023 at 02:35:38PM +0300, Ville Syrjälä wrote:
> > On Wed, Mar 29, 2023 at 05:00:55PM +0530, Nautiyal, Ankit K wrote:
> > > 
> > > On 3/29/2023 4:23 PM, Ville Syrjälä wrote:
> > > > On Wed, Mar 29, 2023 at 04:06:21PM +0530, Nautiyal, Ankit K wrote:
> > > >> On 3/29/2023 3:27 PM, Ville Syrjälä wrote:
> > > >>> On Wed, Mar 29, 2023 at 02:14:49PM +0530, Ankit Nautiyal wrote:
> > > >>>> As per Bspec, Big Joiner BW check is:
> > > >>>> Output bpp <= PPC * CDCLK frequency * Big joiner interface bits /
> > > >>>> Pixel clock
> > > >>>>
> > > >>>> Currently we always use max_cdclk in the check for both modevalid
> > > >>>> and compute config steps.
> > > >>>>
> > > >>>> During modevalid use max_cdclk_freq for the check.
> > > >>>> During compute config step use current cdclk for the check.
> > > >>> Nak. cdclk is computed much later based on what is actually needed.
> > > >>> The cdclk freq you are using here is essentially a random number.
> > > >> Oh I didn't realise that, perhaps I was lucky when I tested this.
> > > >>
> > > >> So this check where CDCLK is mentioned, actually expects max_cdclk_freq?
> > > >>
> 
> We use max_cdclk_freq basically as a "hack" to estimate what could be the max
> amount of the CDCLK, because for the reasons, Ville mentioned, we can't use
> CDCLK directly here, because it hasn't been yet calculated.
> 
> However we anyway know CDCLK will be aligned accordingly to pixel rate.
> 
> > > >> If it doesnt then, we might have a compressed_bpp value, that might be
> > > >> violating the big joiner bw check.
> > > >>
> > > >> Should this be handled while computing cdclk?
> > > > Yes. I suggest adding something like intel_vdsc_min_cdclk() that
> > > > handles all of it.
> > > 
> > > 
> > > I can try that out.
> 
> It is all again about that same chicken&egg problem. 
> Our paradigm is that CDCLK is the last thing that we calculate, however that
> check instructs us to choose the output bpp which obeys
> 
> Output bpp <= PPC * CDCLK frequency * Big joiner interface bits / pixel clock
> 
> rule.
> 
> If we choose to adjust CDCLK accordingly, we loose an option to actually change
> the ourpur bpp to save the power, because theoretically we could avoid increasing
> CDCLK to match that rule, by decreasing the output bpp..
> 
> So this kinda leads us to possibly waste more power.

The main questions in selecting the bpp are what kind of
quality is achievable and/or acceptable. The rest (link
rate/cdclk/etc.) are all derived based on that. Doing it
the other way around would essentially result in 
non-deterministic behaviour.

Currently the only way to affect the quality criteria
is the max_bpc property which isn't really properly defined
when it comes to compression. Also it just specifies the
max, not the the min (or what the user would consider
acceptable).

Every now and then I muse about introducing some kind
of abstract "power vs. quality/performance" knob that would
give the driver better hints as to which the user values more.
With something like that we could try to reduce the quality
in places to achieve better power savings.

-- 
Ville Syrjälä
Intel
