Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08F0764C725
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Dec 2022 11:32:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96D3310E3A5;
	Wed, 14 Dec 2022 10:31:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3A4810E3A5
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Dec 2022 10:31:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671013895; x=1702549895;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=huQCmpg3XnJsmh/qEw7HKhy/I3Elb8Qly2L/x98Xgk8=;
 b=mf0pCup8Qm302WSlhMTVNokQyEcuKsumF7ssTIRqv908nZQ2a4jGovVG
 NrrTZF6ogmPt8DihQi8nrR6eO1v3i9knw+mNlS6pbAjvaD1Y3a315uK8c
 uGhtquZqi0vOUsi57Qm53AERmtGjP+GeLDyWwjvUxvkSvf0UBQYS+ZFVZ
 Sa5RiUucFDU50r5xqTVVgmj5t+tRoOcC79Riszz1aZzeML8OwnPwj+Ghu
 EFE0HPkDpQK3mvBbzam7uxo2+v96VMBRWAk+t7YOLCZgnOKIKd/m9DNtb
 AhMKomGcdFw8G71PcwEaPhCd78mVwqLHP6w+58e2ZaUS3j5dsNn0T8xB8 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="345436704"
X-IronPort-AV: E=Sophos;i="5.96,244,1665471600"; d="scan'208";a="345436704"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2022 02:31:34 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="712462193"
X-IronPort-AV: E=Sophos;i="5.96,244,1665471600"; d="scan'208";a="712462193"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2022 02:31:33 -0800
Date: Wed, 14 Dec 2022 12:31:24 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
Message-ID: <Y5ml/OHxUUU/GzzA@intel.com>
References: <20221124103623.13974-1-stanislav.lisovskiy@intel.com>
 <20221124103623.13974-2-stanislav.lisovskiy@intel.com>
 <CY4PR1101MB2166A66996BCE28F1B6B70C1F8129@CY4PR1101MB2166.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CY4PR1101MB2166A66996BCE28F1B6B70C1F8129@CY4PR1101MB2166.namprd11.prod.outlook.com>
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915: Implement workaround for
 CDCLK PLL disable/enable
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Nov 29, 2022 at 09:19:40PM +0200, Srivatsa, Anusha wrote:
> 
> 
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> > Stanislav Lisovskiy
> > Sent: Thursday, November 24, 2022 2:36 AM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: Nikula, Jani <jani.nikula@intel.com>
> > Subject: [Intel-gfx] [PATCH 1/1] drm/i915: Implement workaround for CDCLK
> > PLL disable/enable
> > 
> > It was reported that we might get a hung and loss of register access in some
> > cases when CDCLK PLL is disabled and then enabled, while squashing is
> > enabled.
> > As a workaround it was proposed by HW team that SW should disable
> > squashing when CDCLK PLL is being reenabled.
> > 
> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cdclk.c | 14 ++++++++++++--
> >  1 file changed, 12 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > index 0c107a38f9d0..e338f288c9ac 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > @@ -1801,6 +1801,13 @@ static bool
> > cdclk_compute_crawl_and_squash_midpoint(struct drm_i915_private *i91
> >  	return true;
> >  }
> > 
> > +static bool pll_enable_wa_needed(struct drm_i915_private *dev_priv) {
> > +	return ((IS_DG2(dev_priv) || IS_METEORLAKE(dev_priv))
> > +		&& dev_priv->display.cdclk.hw.vco > 0
> > +		&& HAS_CDCLK_SQUASH(dev_priv));
> Redundant check. If it is MTL or DG2, then it will have HAS_CDCLK_SQUASH set to true always. Shouldn't vco be 0 instead of > 0. The commit message says the hang can be observed when moving from 0 to > 0 vco. 
> 
> Anusha

Idea was that we probably should bind more to the feature rather than platform, I agree checking both "IS_DG2" and if
platform has squashing is redundant, because then we would have to add each new platform manually, so I would leave
HAS_CDCLK_SQUASH and then at some point just cut off using some INTEL_GEN or other check all the new platforms where
this is fixed in HW.

Regarding vco, the icl_cdclk_pll_update func works as follows:

if (i915->display.cdclk.hw.vco != 0 &&
    i915->display.cdclk.hw.vco != vco)
    icl_cdclk_pll_disable(i915);

if (i915->display.cdclk.hw.vco != vco)
    icl_cdclk_pll_enable(i915, vco);

1) if vco changes from zero value(i915->display.cdclk.hw.vco) to non-zero value(vco), that means
   currently squashing is anyway disabled(if vco == 0, cdclk is set to "bypass" and squash waveform
   is 0), so the W/A is not needed.

2) if vco changes from non-zero value in i915->display.cdclk.hw.vco to zero value(vco), we are not 
   going to call icl_cdclk_pll_enable anyway so W/A is also not needed.

3) if vco changes from some non-zero value in i915->display.cdclk.hw.vco to other non-zero value(vco),
   which can happen if CDCLK changes, then icl_cdclk_pll_disable(hw vco!=0 and vco!=0) and then 
   icl_cdclk_pll_enable would be called(hw vco is still not equal to vco)
   So that disabling enabling in between is what we are interested and where we should make sure
   squashing is disabled.
   BTW I have another question - is this code even correct? Shouldn't we avoid disabling/enabling PLL if we have
   squashing/crawling? As I understood the whole point of having swuashing/crawling is avoiding swithing the PLL
   on and off.


Stan


> > +}
> > +
> >  static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
> >  			   const struct intel_cdclk_config *cdclk_config,
> >  			   enum pipe pipe)
> > @@ -1815,9 +1822,12 @@ static void _bxt_set_cdclk(struct
> > drm_i915_private *dev_priv,
> >  	    !cdclk_pll_is_unknown(dev_priv->display.cdclk.hw.vco)) {
> >  		if (dev_priv->display.cdclk.hw.vco != vco)
> >  			adlp_cdclk_pll_crawl(dev_priv, vco);
> > -	} else if (DISPLAY_VER(dev_priv) >= 11)
> > +	} else if (DISPLAY_VER(dev_priv) >= 11) {
> > +		if (pll_enable_wa_needed(dev_priv))
> > +			dg2_cdclk_squash_program(dev_priv, 0);
> > +
> >  		icl_cdclk_pll_update(dev_priv, vco);
> > -	else
> > +	} else
> >  		bxt_cdclk_pll_update(dev_priv, vco);
> > 
> >  	waveform = cdclk_squash_waveform(dev_priv, cdclk);
> > --
> > 2.37.3
> 
