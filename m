Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EBE96062C3
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Oct 2022 16:17:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3267410F037;
	Thu, 20 Oct 2022 14:17:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE1F910F037
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Oct 2022 14:17:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666275452; x=1697811452;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=OHdYaQmIZs9NDSSxXls4HNxPDsEzREKR3c3fF5N0C6E=;
 b=S79MSo3dhet8MmiN4N2pXyTrkxe8wzB7DpO3r1XJIjbvWCF2/adVbE2p
 21HF0Yw0JnHth4Y2uhXDN4DUzE+fCjNL7NEjdjeTyfU4qaHSEBUpnaoQF
 97VMsrU357q8nUJxBrsOcHTT9ue45UXQOIGGmKx18rWsAKhjMtCMxZL+x
 HhFoVLcj91ZSyGgBBhe4RZXXfbpW1gnM6MJls0SuFmxSNpJgeszy1QRe1
 PBPHusi/l95u/iQnkJyD1djAEpqSST7N+9SIhHyBLv4eOSvNLfr16VxPj
 eKvV+baQ1AjjBGXIUOs84P1wtWNn7BHz1/3FlrkNMBsltu7GLbg29Vw55 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="333286387"
X-IronPort-AV: E=Sophos;i="5.95,198,1661842800"; d="scan'208";a="333286387"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 07:17:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="804905123"
X-IronPort-AV: E=Sophos;i="5.95,198,1661842800"; d="scan'208";a="804905123"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga005.jf.intel.com with SMTP; 20 Oct 2022 07:17:29 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 20 Oct 2022 17:17:28 +0300
Date: Thu, 20 Oct 2022 17:17:28 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <Y1FYeDF7XEcYXTUe@intel.com>
References: <20221020120457.19528-1-ville.syrjala@linux.intel.com>
 <877d0uhalo.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <877d0uhalo.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 0/4] drm/i915: Clean up crtc state flag
 checks
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

On Thu, Oct 20, 2022 at 04:45:55PM +0300, Jani Nikula wrote:
> On Thu, 20 Oct 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Some cleanups for checking whether the crtc was flagged for
> > modesets/fastsets/color update.
> 
> I wish we could avoid piling more static inlines in
> intel_display_types.h, but the clarity added here is great.

I mainly put them there since the first one was already there.
Dunno if the function call overhead would really be measurable,
even though we do use these a lot. Should measure it on some
real slouch of a machine I guess.

> 
> On the series,
> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>

Thanks.

> 
> >
> > Ville Syrjälä (4):
> >   drm/i915: Introduce intel_crtc_needs_fastset()
> >   drm/i915: Remove some local 'mode_changed' bools
> >   drm/i915: Don't flag both full modeset and fastset at the same time
> >   drm/i915: Introduce intel_crtc_needs_color_update()
> >
> >  drivers/gpu/drm/i915/display/hsw_ips.c        |  8 ++--
> >  drivers/gpu/drm/i915/display/intel_crtc.c     |  3 +-
> >  drivers/gpu/drm/i915/display/intel_cursor.c   |  6 ++-
> >  drivers/gpu/drm/i915/display/intel_display.c  | 46 +++++++++----------
> >  .../drm/i915/display/intel_display_types.h    | 14 ++++++
> >  .../drm/i915/display/intel_modeset_verify.c   |  3 +-
> >  6 files changed, 46 insertions(+), 34 deletions(-)
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Ville Syrjälä
Intel
