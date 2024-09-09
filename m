Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BDB8971C1D
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2024 16:09:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1145510E5A2;
	Mon,  9 Sep 2024 14:09:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DedZAMAO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 291AA10E5A5
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Sep 2024 14:09:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725890942; x=1757426942;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=HxLtVEIAMc4mlHS6AsAUxZkUHMPKXKSVSl5B6FDP7ag=;
 b=DedZAMAOj77GVQKigV0LzsSMPrq+HpaqbH3lQRXVQwWvH4delzLvIDHX
 u4B7UIhGVz66sbqRiDJQXjrYIzbz6BP4LVw/6AqU+l6r3bG0PXuuVUftL
 byW0OFVVBFG+MQtX1L1ymwyuLnXp/Qvr1R65MrE0Bf54P3r/W4JQ5XUoq
 8lzqAqfggDJ99VI9MlpwzQf8NSst+ZNFg8bEtRswd22PshzE/ze2UHh35
 wHQCnAWTH0UeUK2esPWDZgpTKC5ehgFXDLef0u69Z0C3srTWzTTrEteYI
 HHDTnpLSersDdKgSYOqQfiLH50KvqrGOsUgwpd4faS/uOY8sea7U29NYA g==;
X-CSE-ConnectionGUID: QMUn8QXMQY6SZ5baPXPcfg==
X-CSE-MsgGUID: 3QPRGUoXRumPb+izXSkj1g==
X-IronPort-AV: E=McAfee;i="6700,10204,11190"; a="24137037"
X-IronPort-AV: E=Sophos;i="6.10,214,1719903600"; d="scan'208";a="24137037"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 07:09:02 -0700
X-CSE-ConnectionGUID: RKlwORJVSieB1FZxH6MTbg==
X-CSE-MsgGUID: 5H82clUKQE2ABa9Nqaol3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,214,1719903600"; d="scan'208";a="66741550"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 09 Sep 2024 07:09:00 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 09 Sep 2024 17:08:58 +0300
Date: Mon, 9 Sep 2024 17:08:58 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Garg, Nemesa" <nemesa.garg@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 2/2] drm/i915/display: Call panel_fitting from pipe_config
Message-ID: <Zt8BeoxfpnmhB5fn@intel.com>
References: <20240805062538.1844291-3-nemesa.garg@intel.com>
 <20240808045407.2365733-1-nemesa.garg@intel.com>
 <87cymc272n.fsf@intel.com>
 <IA1PR11MB64675961872D4D12CD82D4B1E3992@IA1PR11MB6467.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <IA1PR11MB64675961872D4D12CD82D4B1E3992@IA1PR11MB6467.namprd11.prod.outlook.com>
X-Patchwork-Hint: comment
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Sep 09, 2024 at 06:21:49AM +0000, Garg, Nemesa wrote:
> 
> 
> > -----Original Message-----
> > From: Jani Nikula <jani.nikula@linux.intel.com>
> > Sent: Tuesday, August 13, 2024 1:22 PM
> > To: Garg, Nemesa <nemesa.garg@intel.com>; intel-gfx@lists.freedesktop.org;
> > Ville Syrjala <ville.syrjala@linux.intel.com>
> > Cc: Garg, Nemesa <nemesa.garg@intel.com>
> > Subject: Re: [PATCH 2/2] drm/i915/display: Call panel_fitting from pipe_config
> > 
> > On Thu, 08 Aug 2024, Nemesa Garg <nemesa.garg@intel.com> wrote:
> > > In panel fitter/pipe scaler scenario the pch_pfit configuration
> > > currently takes place before accounting for pipe_src width for joiner.
> > > This causes issue when pch_pfit and joiner get enabled together.
> > >
> > > Introduce a new boolean flag need_joiner which is set during dp
> > > compute_config in joiner case and later is used to compute
> > > panel_fitting in pipe_config. Modify pch_panel_fitting to handle
> > > joiner pipes by adjusting crtc_hdisplay accordingly.
> > 
> > So I still don't like the fact that intel_panel_fitting() is called in different ways for
> > different connectors, controlled by a flag in crtc state.
> > 
> > That said, I couldn't come up with a better idea either, apart from moving *all*
> > panel fitting intel_modeset_pipe_config().
> > 
> > Cc: Ville, in case he has some ideas for this. Please hold off on merging until we
> > get some input from him.
> > 
> > Hi Ville,
> Can you please suggest how should I proceed further on this patch.

I think we want to move the whole thing to happen after we've computed
final pipe_src and pipe_mode (which can then be used intead of
adjusted_mode in the pfit calculaitons).

The one annoying part of this is that we probably can only do it for the
ilk+ pfit ("pch"), but the old gmch pfit probably has to stay where it
is now because it may have to adjust the actual transcoder timings for
the purposes of adding borders.

Also I don't think we should really need any extra flags in the crtc
state. The pfit code should be able to figure it all out on its own.

-- 
Ville Syrjälä
Intel
