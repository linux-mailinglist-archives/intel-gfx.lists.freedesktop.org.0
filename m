Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BB7C6DF95B
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Apr 2023 17:07:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF8CF10E86A;
	Wed, 12 Apr 2023 15:07:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D75B10E85B
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Apr 2023 15:07:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681312052; x=1712848052;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=X5R0bu+IR3bHesiZRr/YXrhC+O1grhxDl39o/u+JtUQ=;
 b=K0ZdEkPHe0g4uPGZsSmRvSuGMHtRaLYZCvpYZsD9SZ+l2WQgIv6iwLNz
 STJZV+CFA+6ToYFq0sZKbBMdLrz3VCbJZUxi96helRrxMLuawgM2S2mvD
 SYBDUzgrMmBGywhy7eP8m7fXP31HM2GAuBqLD88q8aQt17zwCNZz/Vihr
 vKjpv2SwkqT1BvLews7CKFUV/3km6CrcIENqPc0ROhEdqaWtbR0mrv2Ct
 x5+S8htmaphFzCfz+H3MgGpS4X7zwTzBBp4OJOF/Uz1WGCLZOEIJvunki
 EM8gucO9VYts95yUbLpLgAosIFrvxG/uHaOubwphIM7d0uTKReKVxFbiD w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="328034469"
X-IronPort-AV: E=Sophos;i="5.98,339,1673942400"; d="scan'208";a="328034469"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2023 08:05:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="758279819"
X-IronPort-AV: E=Sophos;i="5.98,339,1673942400"; d="scan'208";a="758279819"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga004.fm.intel.com with SMTP; 12 Apr 2023 08:05:06 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 12 Apr 2023 18:05:05 +0300
Date: Wed, 12 Apr 2023 18:05:05 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
Message-ID: <ZDbIoa2KSespTMd5@intel.com>
References: <20230320203352.19515-6-ville.syrjala@linux.intel.com>
 <20230321135615.27338-1-ville.syrjala@linux.intel.com>
 <MWHPR11MB19351B3CC439AB4C1A9F370EB28B9@MWHPR11MB1935.namprd11.prod.outlook.com>
 <ZDTy93UCSN4TUCV1@intel.com> <ZDZhk/tizSv0pTmZ@intel.com>
 <MWHPR11MB19358BF6559163B84B3F5FD1B29B9@MWHPR11MB1935.namprd11.prod.outlook.com>
 <MWHPR11MB19351E0FB8251DBBD7DDD866B29B9@MWHPR11MB1935.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <MWHPR11MB19351E0FB8251DBBD7DDD866B29B9@MWHPR11MB1935.namprd11.prod.outlook.com>
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

On Wed, Apr 12, 2023 at 02:16:22PM +0000, Golani, Mitulkumar Ajitkumar wrote:
> HI Ville,
> 
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> > Golani, Mitulkumar Ajitkumar
> > Sent: 12 April 2023 19:45
> > To: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > Cc: intel-gfx@lists.freedesktop.org
> > Subject: Re: [Intel-gfx] [PATCH v2 5/6] drm/i915/vrr: Relocate VRR
> > enable/disable
> > 
> > Hi Ville,
> > 
> > > -----Original Message-----
> > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > Sent: 12 April 2023 13:15
> > > To: Golani, Mitulkumar Ajitkumar
> > > <mitulkumar.ajitkumar.golani@intel.com>
> > > Cc: intel-gfx@lists.freedesktop.org
> > > Subject: Re: [Intel-gfx] [PATCH v2 5/6] drm/i915/vrr: Relocate VRR
> > > enable/disable
> > >
> > > On Tue, Apr 11, 2023 at 08:41:11AM +0300, Ville Syrjälä wrote:
> > > > On Mon, Mar 27, 2023 at 08:05:49PM +0000, Golani, Mitulkumar
> > > > Ajitkumar
> > > wrote:
> > > > > Hi Ville,
> > > > >
> > > > > > -----Original Message-----
> > > > > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On
> > > > > > Behalf Of Ville Syrjala
> > > > > > Sent: 21 March 2023 19:26
> > > > > > To: intel-gfx@lists.freedesktop.org
> > > > > > Subject: [Intel-gfx] [PATCH v2 5/6] drm/i915/vrr: Relocate VRR
> > > > > > enable/disable
> > > > > >
> > > > > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > > > >
> > > > > > Move VRR enabling/disabling into a place where it also works for
> > > fastsets.
> > > > > >
> > > > > > With this we always start the transcoder up in non-VRR mode.
> > > > > > Granted  we already did that but for a very short period of time.
> > > > > > But now that we might end up doing a bit more with the
> > > > > > transcoder in non-VRR mode it seems prudent to also update the
> > > > > > active timings as the transcoder changes its operating mode.
> > > > > >
> > > > > > crtc_state->vrr.enable still tracks whether VRR is actually
> > > > > > enabled or not, but now we configure all the other VRR timing
> > > > > > registers whenever VRR is possible (whether we actually enable
> > > > > > it or not). crtc_state->vrr.flipline can now serve as our "is VRR
> > possible"
> > > bit of state.
> > > > >
> > > > > Understood the change. I was thinking if it is possible to make
> > > > > distinguish between is VRR "possible" and is VRR "enabled" by
> > > > > adding a new param ? Although changes looks good to me but using
> > > > > Flipline
> > > value as "is VRR Possible" makes it bit confusing.
> > > >
> > > > I suppose we could think about adding a knob for it. It would just
> > > > reflect the flipline enable bit state in the current scheme.
> > >
> > > After further pondering I think I'm leaning towards just adding a tiny
> > > intel_vrr_possible()/etc. helper instead of adding a separate knob for
> > > this into the crtc state. That seems like somehting we can trivially
> > > do as a followup.
> > 
> > Yes. That also sounds good.
> > 
> > Regards,
> > Mitul
> > >
> > > >
> > > > Another thing I was pondering is whether we should even care about
> > > > this in intel_dp_prepare_link_train() or if we should just set the
> > > > MSA ingore bit any time we have a VRR capable display. But I suppose
> > > > that could have some implicatations eg. for interlaces displays modes.
> > 
> > In that case to avoid implications should we add additional check for
> > vrr.enable as well ?
> > > >
> > > > --
> > > > Ville Syrjälä
> > > > Intel
> > >
> > > --
> > > Ville Syrjälä
> > > Intel
> 
> Changes LGTM.
> Thanks
>  
> Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

Thanks for the review. Series pushed.

-- 
Ville Syrjälä
Intel
