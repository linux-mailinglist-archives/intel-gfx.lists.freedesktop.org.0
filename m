Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E831154E360
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jun 2022 16:28:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A7A810E357;
	Thu, 16 Jun 2022 14:28:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7677A10E357
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jun 2022 14:28:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655389735; x=1686925735;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=AnsAdq9hY9Mz3pK75a+2GLNT5dBv0DsXruCZyurBWyE=;
 b=bGOGNEbPNupdi+hxKIltORnZADVTrDTs98SsHPHbNhh5VWNi1DV0Pyd7
 EMJt2pENgeAfwiSXhY67BMIbHpQueTZNfJW3FoC5gprArAm1eH7Ck6dqe
 PngKNrRmrT7txQj2E3nM0V1hRFsThb55k8UejLPwo7z9pg/kXNC98/Ad6
 Awplsss1Fe/vkJEU/3DPTWhrXamkKC3U8E0glr1fegcr68VxVN0sYYCUx
 /t4C+AkSwnuIaPcdkvs77pp3M7R0kE9+RYYEMAHX8YPhLDzMFFq0+YbxM
 LTsBYO8tJ9Fi6l+RFwBLs4ZSXBV3yxNYultdtEsuExrbiNDYrV9m9kcWB A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10379"; a="267947829"
X-IronPort-AV: E=Sophos;i="5.92,305,1650956400"; d="scan'208";a="267947829"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2022 07:28:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,305,1650956400"; d="scan'208";a="618899397"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by orsmga001.jf.intel.com with SMTP; 16 Jun 2022 07:28:33 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 16 Jun 2022 17:28:32 +0300
Date: Thu, 16 Jun 2022 17:28:32 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <Yqs+EAc8kMe7GK32@intel.com>
References: <20220615151445.8531-1-ville.syrjala@linux.intel.com>
 <20220615151445.8531-3-ville.syrjala@linux.intel.com>
 <87ilp0x4sv.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87ilp0x4sv.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/bios: Introduce panel_bits()
 and panel_bool()
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

On Thu, Jun 16, 2022 at 01:48:16PM +0300, Jani Nikula wrote:
> On Wed, 15 Jun 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Abstract the bit extraction from the VBT per-panel bitfields
> > slightly.
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_bios.c     | 31 +++++++++++++------
> >  drivers/gpu/drm/i915/display/intel_vbt_defs.h |  3 --
> >  2 files changed, 21 insertions(+), 13 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> > index 807184fd5618..76e86358adb9 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bios.c
> > +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> > @@ -743,6 +743,16 @@ static int get_panel_type(struct drm_i915_private *i915,
> >  	return panel_types[i].panel_type;
> >  }
> >  
> > +static unsigned int panel_bits(unsigned int value, int panel_type, int num_bits)
> > +{
> > +	return (value >> (panel_type * num_bits)) & (BIT(num_bits) - 1);
> 
> Nitpick, this might be easier to parse with GENMASK and friends, but
> *shrug*.

Pondered about it a bit myself, but decided to keep the current
form for the time being at least.

> Reviewed-by: Jani Nikula <jani.nikula@intel.com>

Ta. Series pushed.

-- 
Ville Syrjälä
Intel
