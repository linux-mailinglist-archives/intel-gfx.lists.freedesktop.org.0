Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9BED69618B
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Feb 2023 11:57:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40F1A10E86F;
	Tue, 14 Feb 2023 10:57:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C46C310E86F
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Feb 2023 10:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676372242; x=1707908242;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=gSmHwnKsMXzd8pwTYYP+QqgTZJzvXCRETCsxdHFLg4g=;
 b=WIsamLSTKnEbVgiWIJ1LG8FBDA3qWNVMsH1CpcH8Nmt5xEAEVLsnmg0L
 wYJ5trZd08505480z3geuPbHQgHRkwHUL/Loguu5C2MixhJWiutfHZKWU
 hDNmkY+7RLGGYk1R2YArJqTPUQh5z+5WgLqTCuZ/OBuBl1iQpPRm1s15d
 TAe/rcZWYfNSJ0I0foeVdaikTydXmkUoPkQbx3CcazOPWz3B8nX8XFWGc
 HuPsG3Ul/hrfAPqC5Vc92WZU+NHQvQToY0cojNWicSDhfXZjiggKBjcqR
 i94PemRCh5mPRxXOxvITMXvXvZE11KQR+asF7YuaxQ4omZv99TQXL8Sgs w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="393535324"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="393535324"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 02:57:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="669124744"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="669124744"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga002.jf.intel.com with SMTP; 14 Feb 2023 02:57:19 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 14 Feb 2023 12:57:18 +0200
Date: Tue, 14 Feb 2023 12:57:18 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <Y+tpDkV+/PtK0nKX@intel.com>
References: <20230213225258.2127-1-ville.syrjala@linux.intel.com>
 <20230213225258.2127-10-ville.syrjala@linux.intel.com>
 <875yc4tu3y.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <875yc4tu3y.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 09/12] drm/i915: Define transcoder timing
 register bitmasks
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

On Tue, Feb 14, 2023 at 12:32:49PM +0200, Jani Nikula wrote:
> On Tue, 14 Feb 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
> > index ef0c7f5b0ad6..8f2ebead0826 100644
> > --- a/drivers/gpu/drm/i915/display/intel_crt.c
> > +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> > @@ -698,11 +698,11 @@ intel_crt_load_detect(struct intel_crt *crt, enum pipe pipe)
> >  	save_vtotal = intel_de_read(dev_priv, TRANS_VTOTAL(cpu_transcoder));
> >  	vblank = intel_de_read(dev_priv, TRANS_VBLANK(cpu_transcoder));
> >  
> > -	vtotal = ((save_vtotal >> 16) & 0xfff) + 1;
> > -	vactive = (save_vtotal & 0x7ff) + 1;
> > +	vtotal = REG_FIELD_GET(VTOTAL_MASK, save_vtotal) + 1;
> > +	vactive = REG_FIELD_GET(VACTIVE_MASK, save_vtotal) + 1;
> >  
> > -	vblank_start = (vblank & 0xfff) + 1;
> > -	vblank_end = ((vblank >> 16) & 0xfff) + 1;
> > +	vblank_start = REG_FIELD_GET(VBLANK_START_MASK, vblank) + 1;
> > +	vblank_end = REG_FIELD_GET(VBLANK_END_MASK, vblank) + 1;
> 
> I forget how these are defined in bspec and if the field size grows
> towards later platforms... but this widens the masks. I'm guess it'll
> probably read as zero anyway, but in theory that's a functional change.

Missed the fact tht this used smaller masks here for these few.
But it should be all good as eveywhere else we've been using the
full 16bits, so the state checker should have spotted any extra
garbage in the high bits.

But I'll add a note to the commit message, just in case.

-- 
Ville Syrjälä
Intel
