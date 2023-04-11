Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9A4A6DD1E9
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Apr 2023 07:41:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4997E10E4AE;
	Tue, 11 Apr 2023 05:41:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3340B10E4AE
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Apr 2023 05:41:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681191676; x=1712727676;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=wRl087y1oth1BoUIK4miPTBOn2BWcLrpSf9fMuJK/ow=;
 b=Z95o8g3f+nfyDvrdR5qfczkZ9Lz/M67/VZ4ZDGfZqkIqxsaHRRfxNhQW
 oULjrELW3i/kTa47igjcp2hF746ZXOCLbR9rRQDCVjz0kAgWFjtO6dWTF
 rlmSgCHyIOs6sPXAsCKwGwSdEtxEaJVNbs1ZKY0Go/S5tulH7JMTEtLE6
 pr1VsH/hbA7mVvEbVpcgc9zrHQ4hqGafYgW5JEGH7ewf/STRd/14ffRF1
 b4ueomrg4oWqIQHCufGMR4m3wk2SMHsnAiZuSdtOC1y0SD9HXvx5lNvGM
 wQPv2ocJBALhao4mHGV04q4s/y9gF9XEOiexbNnR22w8VPg4bVK9Byviy g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10676"; a="341018797"
X-IronPort-AV: E=Sophos;i="5.98,335,1673942400"; d="scan'208";a="341018797"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2023 22:41:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10676"; a="718842605"
X-IronPort-AV: E=Sophos;i="5.98,335,1673942400"; d="scan'208";a="718842605"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga008.jf.intel.com with SMTP; 10 Apr 2023 22:41:12 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 Apr 2023 08:41:11 +0300
Date: Tue, 11 Apr 2023 08:41:11 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
Message-ID: <ZDTy93UCSN4TUCV1@intel.com>
References: <20230320203352.19515-6-ville.syrjala@linux.intel.com>
 <20230321135615.27338-1-ville.syrjala@linux.intel.com>
 <MWHPR11MB19351B3CC439AB4C1A9F370EB28B9@MWHPR11MB1935.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <MWHPR11MB19351B3CC439AB4C1A9F370EB28B9@MWHPR11MB1935.namprd11.prod.outlook.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 5/6] drm/i915/vrr: Relocate VRR
 enable/disable
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

On Mon, Mar 27, 2023 at 08:05:49PM +0000, Golani, Mitulkumar Ajitkumar wrote:
> Hi Ville,
> 
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ville
> > Syrjala
> > Sent: 21 March 2023 19:26
> > To: intel-gfx@lists.freedesktop.org
> > Subject: [Intel-gfx] [PATCH v2 5/6] drm/i915/vrr: Relocate VRR enable/disable
> > 
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Move VRR enabling/disabling into a place where it also works for fastsets.
> > 
> > With this we always start the transcoder up in non-VRR mode.
> > Granted  we already did that but for a very short period of time. But now
> > that we might end up doing a bit more with the transcoder in non-VRR mode
> > it seems prudent to also update the active timings as the transcoder changes
> > its operating mode.
> > 
> > crtc_state->vrr.enable still tracks whether VRR is actually enabled or not, but
> > now we configure all the other VRR timing registers whenever VRR is possible
> > (whether we actually enable it or not). crtc_state->vrr.flipline can now serve
> > as our "is VRR possible" bit of state.
> 
> Understood the change. I was thinking if it is possible to make distinguish between
> is VRR "possible" and is VRR "enabled" by adding a new param ? Although changes looks
> good to me but using Flipline value as "is VRR Possible" makes it bit confusing.

I suppose we could think about adding a knob for it. It would just
reflect the flipline enable bit state in the current scheme.

Another thing I was pondering is whether we should even care about
this in intel_dp_prepare_link_train() or if we should just set the
MSA ingore bit any time we have a VRR capable display. But I suppose
that could have some implicatations eg. for interlaces displays modes.

-- 
Ville Syrjälä
Intel
