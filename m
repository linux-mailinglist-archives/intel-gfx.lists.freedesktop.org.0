Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6306189A508
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Apr 2024 21:34:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 373AD10E4D1;
	Fri,  5 Apr 2024 19:34:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MeWsxvto";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E5B210E4D1
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Apr 2024 19:34:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712345690; x=1743881690;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Igy7Gk24VApt5AcugxrqoFtyftzogyjkPV3NamgxA1M=;
 b=MeWsxvtoxKu9s/1Dxb2wvUqfVaZQUzIsXD0MHp61hW40ik+JEeQo4AAY
 6exInsVsVD9hEQbBF47ujDY/lZrSBLn60jt7QaSOK2oIfZrrwu02euy61
 OVxCYliZ7PDXxjHkUVz8XOTv5jbaRRnMY5lREuf5GrdeLtMFyHqR22TfD
 gwAjAZmwZGosvgsWi4WNYDSfgWRtI6GZPvQApQ6yLwShzTQxwoKgxq15x
 R9eLGCMnkn+RJc2IdVEIpnX6q3VN/XIYmLGb0s/ngYAffX06DFmt9qyuV
 zBDIIQSZnSTQFQ+zJu3S68PJN4cTg49d8zAnWPqPsk4W4Ldm4LMG+ankG A==;
X-CSE-ConnectionGUID: GdmDCPEoQcmYdckN2FzujQ==
X-CSE-MsgGUID: ZmihFjRFQFCmY3mEH46k1A==
X-IronPort-AV: E=McAfee;i="6600,9927,11035"; a="7550375"
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; 
   d="scan'208";a="7550375"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 12:34:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11035"; a="827790999"
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; d="scan'208";a="827790999"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 05 Apr 2024 12:34:46 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 05 Apr 2024 22:34:46 +0300
Date: Fri, 5 Apr 2024 22:34:46 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2 02/17] drm/i915/psr: Disable PSR when bigjoiner is used
Message-ID: <ZhBSVl16DEa0aczC@intel.com>
References: <20240404213441.17637-1-ville.syrjala@linux.intel.com>
 <20240404213441.17637-3-ville.syrjala@linux.intel.com>
 <2a410df93d112ec9881419820baaf4d3ffd4ee7d.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <2a410df93d112ec9881419820baaf4d3ffd4ee7d.camel@intel.com>
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

On Fri, Apr 05, 2024 at 06:58:44AM +0000, Hogander, Jouni wrote:
> On Fri, 2024-04-05 at 00:34 +0300, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Bigjoiner seem to be causing all kinds of grief to the PSR
> > code currently. I don't believe there is any hardware issue
> > but the code simply not handling this correctly. For now
> > just disable PSR when bigjoiner is needed.
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_psr.c | 11 +++++++++++
> >  1 file changed, 11 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> > b/drivers/gpu/drm/i915/display/intel_psr.c
> > index eef62983e9db..a3ff916b53f9 100644
> > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > @@ -1584,6 +1584,17 @@ void intel_psr_compute_config(struct intel_dp
> > *intel_dp,
> >                 return;
> >         }
> >  
> > +       /*
> > +        * FIXME figure out what is wrong with PSR+bigjoiner and
> > +        * fix it. Presumably something related to the fact that
> > +        * PSR is a transcoder level feature.
> > +        */
> > +       if (crtc_state->bigjoiner_pipes) {
> > +               drm_dbg_kms(&dev_priv->drm,
> > +                           "PSR disabled due to bigjoiner\n");
> > +               return;
> > +       }
> > +
> 
> Are these problems with both PSR1 and PSR2?

I didn't look at he logs in that much detail.

It's now happening in CI because the bigjoiner force knob is
getting leaked to all kinds of tests. Eg. this might be one:
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14519/re-mtlp-1/igt@kms_busy@basic.html

-- 
Ville Syrjälä
Intel
