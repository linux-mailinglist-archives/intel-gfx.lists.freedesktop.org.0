Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A84C5B32F0
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Sep 2022 11:10:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AE8310EC33;
	Fri,  9 Sep 2022 09:10:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A80FA10EC33
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Sep 2022 09:10:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662714615; x=1694250615;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=2hHAgFpCmi7oJe1LcVghd799yogIzuqjr4GHGFVw63g=;
 b=LI3redkmgr6bzOLZgE8NAVKtypQQGJjCHoK+Rva87B+XtbpGgxONG1Yd
 9iqChrRzQFYzLNOdUUblbfUHc+NwZGRbdBWfo5eKeWCb0vzKdRgCO6zOb
 3E61VpWv9425o7JxeB3fHykpmjx/b/q57v8ING0ZReGEBOZknEW7xqvrW
 8NsvEangKOsI/nWRJ3q4yeMnCDUwbIearpFucIOa4rX2wqk2OgmvxT6jf
 fSWen52cmHqUAGD9zQ0/QSzbSdUxtHcnaZarQYYJXiyMivkReb3ceGCSw
 Ce56O0DLn/6pO7FeLads7Aae76fp8ZSNJxeBF5z/OGTDHmoFTuZOv5JuH g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10464"; a="298772076"
X-IronPort-AV: E=Sophos;i="5.93,302,1654585200"; d="scan'208";a="298772076"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2022 02:10:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,302,1654585200"; d="scan'208";a="677087147"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga008.fm.intel.com with SMTP; 09 Sep 2022 02:10:12 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 09 Sep 2022 12:10:11 +0300
Date: Fri, 9 Sep 2022 12:10:11 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <YxsC82chjuMgyu6r@intel.com>
References: <20220908191646.20239-1-ville.syrjala@linux.intel.com>
 <20220908191646.20239-2-ville.syrjala@linux.intel.com>
 <87pmg56jhg.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87pmg56jhg.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Split intel_read_wm_latency()
 into per-platform versions
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

On Fri, Sep 09, 2022 at 11:27:07AM +0300, Jani Nikula wrote:
> On Thu, 08 Sep 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > No reaon to have this humongous if ladder in intel_read_wm_latency().
> 
> *reason
> 
> > Just split it into nicer per-platforms functions.
> >
> > Also do the s/dev_priv/i915/ while touching all of this code.
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/intel_pm.c | 201 +++++++++++++++++---------------
> >  1 file changed, 110 insertions(+), 91 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> > index 210c1f78cc90..096c311ed29f 100644
> > --- a/drivers/gpu/drm/i915/intel_pm.c
> > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > @@ -2905,97 +2905,107 @@ adjust_wm_latency(struct drm_i915_private *i915,
> >  		wm[0] += 1;
> >  }
> >  
> > -static void intel_read_wm_latency(struct drm_i915_private *dev_priv,
> > -				  u16 wm[])
> > +static void mtl_read_wm_latency(struct drm_i915_private *i915, u16 wm[])
> 
> Bikeshed, I'd make that u16 *wm, but the same thing I guess.

I'd prefer to know that it's an array rather than a pointer.

> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>

Thanks.

> 
> 
> >  {
> > -	struct intel_uncore *uncore = &dev_priv->uncore;
> > -	int max_level = ilk_wm_max_level(dev_priv);
> > -
> > -	if (DISPLAY_VER(dev_priv) >= 14) {
> > -		u32 val;
> > -
> > -		val = intel_uncore_read(uncore, MTL_LATENCY_LP0_LP1);
> > -		wm[0] = REG_FIELD_GET(MTL_LATENCY_LEVEL_EVEN_MASK, val);
> > -		wm[1] = REG_FIELD_GET(MTL_LATENCY_LEVEL_ODD_MASK, val);
> > -		val = intel_uncore_read(uncore, MTL_LATENCY_LP2_LP3);
> > -		wm[2] = REG_FIELD_GET(MTL_LATENCY_LEVEL_EVEN_MASK, val);
> > -		wm[3] = REG_FIELD_GET(MTL_LATENCY_LEVEL_ODD_MASK, val);
> > -		val = intel_uncore_read(uncore, MTL_LATENCY_LP4_LP5);
> > -		wm[4] = REG_FIELD_GET(MTL_LATENCY_LEVEL_EVEN_MASK, val);
> > -		wm[5] = REG_FIELD_GET(MTL_LATENCY_LEVEL_ODD_MASK, val);
> > -
> > -		adjust_wm_latency(dev_priv, wm, max_level, 6);
> > -	} else if (DISPLAY_VER(dev_priv) >= 9) {
> > -		int read_latency = DISPLAY_VER(dev_priv) >= 12 ? 3 : 2;
> > -		int mult = IS_DG2(dev_priv) ? 2 : 1;
> > -		u32 val;
> > -		int ret;
> > -
> > -		/* read the first set of memory latencies[0:3] */
> > -		val = 0; /* data0 to be programmed to 0 for first set */
> > -		ret = snb_pcode_read(&dev_priv->uncore, GEN9_PCODE_READ_MEM_LATENCY,
> > -				     &val, NULL);
> > -
> > -		if (ret) {
> > -			drm_err(&dev_priv->drm,
> > -				"SKL Mailbox read error = %d\n", ret);
> > -			return;
> > -		}
> > -
> > -		wm[0] = (val & GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
> > -		wm[1] = ((val >> GEN9_MEM_LATENCY_LEVEL_1_5_SHIFT) &
> > -				GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
> > -		wm[2] = ((val >> GEN9_MEM_LATENCY_LEVEL_2_6_SHIFT) &
> > -				GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
> > -		wm[3] = ((val >> GEN9_MEM_LATENCY_LEVEL_3_7_SHIFT) &
> > -				GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
> > -
> > -		/* read the second set of memory latencies[4:7] */
> > -		val = 1; /* data0 to be programmed to 1 for second set */
> > -		ret = snb_pcode_read(&dev_priv->uncore, GEN9_PCODE_READ_MEM_LATENCY,
> > -				     &val, NULL);
> > -		if (ret) {
> > -			drm_err(&dev_priv->drm,
> > -				"SKL Mailbox read error = %d\n", ret);
> > -			return;
> > -		}
> > -
> > -		wm[4] = (val & GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
> > -		wm[5] = ((val >> GEN9_MEM_LATENCY_LEVEL_1_5_SHIFT) &
> > -				GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
> > -		wm[6] = ((val >> GEN9_MEM_LATENCY_LEVEL_2_6_SHIFT) &
> > -				GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
> > -		wm[7] = ((val >> GEN9_MEM_LATENCY_LEVEL_3_7_SHIFT) &
> > -				GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
> > -
> > -		adjust_wm_latency(dev_priv, wm, max_level, read_latency);
> > -	} else if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) {
> > -		u64 sskpd = intel_uncore_read64(uncore, MCH_SSKPD);
> > -
> > -		wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
> > -		if (wm[0] == 0)
> > -			wm[0] = REG_FIELD_GET64(SSKPD_OLD_WM0_MASK_HSW, sskpd);
> > -		wm[1] = REG_FIELD_GET64(SSKPD_WM1_MASK_HSW, sskpd);
> > -		wm[2] = REG_FIELD_GET64(SSKPD_WM2_MASK_HSW, sskpd);
> > -		wm[3] = REG_FIELD_GET64(SSKPD_WM3_MASK_HSW, sskpd);
> > -		wm[4] = REG_FIELD_GET64(SSKPD_WM4_MASK_HSW, sskpd);
> > -	} else if (DISPLAY_VER(dev_priv) >= 6) {
> > -		u32 sskpd = intel_uncore_read(uncore, MCH_SSKPD);
> > -
> > -		wm[0] = REG_FIELD_GET(SSKPD_WM0_MASK_SNB, sskpd);
> > -		wm[1] = REG_FIELD_GET(SSKPD_WM1_MASK_SNB, sskpd);
> > -		wm[2] = REG_FIELD_GET(SSKPD_WM2_MASK_SNB, sskpd);
> > -		wm[3] = REG_FIELD_GET(SSKPD_WM3_MASK_SNB, sskpd);
> > -	} else if (DISPLAY_VER(dev_priv) >= 5) {
> > -		u32 mltr = intel_uncore_read(uncore, MLTR_ILK);
> > -
> > -		/* ILK primary LP0 latency is 700 ns */
> > -		wm[0] = 7;
> > -		wm[1] = REG_FIELD_GET(MLTR_WM1_MASK, mltr);
> > -		wm[2] = REG_FIELD_GET(MLTR_WM2_MASK, mltr);
> > -	} else {
> > -		MISSING_CASE(INTEL_DEVID(dev_priv));
> > +	struct intel_uncore *uncore = &i915->uncore;
> > +	int max_level = ilk_wm_max_level(i915);
> > +	u32 val;
> > +
> > +	val = intel_uncore_read(uncore, MTL_LATENCY_LP0_LP1);
> > +	wm[0] = REG_FIELD_GET(MTL_LATENCY_LEVEL_EVEN_MASK, val);
> > +	wm[1] = REG_FIELD_GET(MTL_LATENCY_LEVEL_ODD_MASK, val);
> > +
> > +	val = intel_uncore_read(uncore, MTL_LATENCY_LP2_LP3);
> > +	wm[2] = REG_FIELD_GET(MTL_LATENCY_LEVEL_EVEN_MASK, val);
> > +	wm[3] = REG_FIELD_GET(MTL_LATENCY_LEVEL_ODD_MASK, val);
> > +
> > +	val = intel_uncore_read(uncore, MTL_LATENCY_LP4_LP5);
> > +	wm[4] = REG_FIELD_GET(MTL_LATENCY_LEVEL_EVEN_MASK, val);
> > +	wm[5] = REG_FIELD_GET(MTL_LATENCY_LEVEL_ODD_MASK, val);
> > +
> > +	adjust_wm_latency(i915, wm, max_level, 6);
> > +}
> > +
> > +static void skl_read_wm_latency(struct drm_i915_private *i915, u16 wm[])
> > +{
> > +	int max_level = ilk_wm_max_level(i915);
> > +	int read_latency = DISPLAY_VER(i915) >= 12 ? 3 : 2;
> > +	int mult = IS_DG2(i915) ? 2 : 1;
> > +	u32 val;
> > +	int ret;
> > +
> > +	/* read the first set of memory latencies[0:3] */
> > +	val = 0; /* data0 to be programmed to 0 for first set */
> > +	ret = snb_pcode_read(&i915->uncore, GEN9_PCODE_READ_MEM_LATENCY, &val, NULL);
> > +	if (ret) {
> > +		drm_err(&i915->drm, "SKL Mailbox read error = %d\n", ret);
> > +		return;
> > +	}
> > +
> > +	wm[0] = (val & GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
> > +	wm[1] = ((val >> GEN9_MEM_LATENCY_LEVEL_1_5_SHIFT) &
> > +		 GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
> > +	wm[2] = ((val >> GEN9_MEM_LATENCY_LEVEL_2_6_SHIFT) &
> > +		 GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
> > +	wm[3] = ((val >> GEN9_MEM_LATENCY_LEVEL_3_7_SHIFT) &
> > +		 GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
> > +
> > +	/* read the second set of memory latencies[4:7] */
> > +	val = 1; /* data0 to be programmed to 1 for second set */
> > +	ret = snb_pcode_read(&i915->uncore, GEN9_PCODE_READ_MEM_LATENCY, &val, NULL);
> > +	if (ret) {
> > +		drm_err(&i915->drm, "SKL Mailbox read error = %d\n", ret);
> > +		return;
> >  	}
> > +
> > +	wm[4] = (val & GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
> > +	wm[5] = ((val >> GEN9_MEM_LATENCY_LEVEL_1_5_SHIFT) &
> > +		 GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
> > +	wm[6] = ((val >> GEN9_MEM_LATENCY_LEVEL_2_6_SHIFT) &
> > +		 GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
> > +	wm[7] = ((val >> GEN9_MEM_LATENCY_LEVEL_3_7_SHIFT) &
> > +		 GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
> > +
> > +	adjust_wm_latency(i915, wm, max_level, read_latency);
> > +}
> > +
> > +static void hsw_read_wm_latency(struct drm_i915_private *i915, u16 wm[])
> > +{
> > +	u64 sskpd;
> > +
> > +	sskpd = intel_uncore_read64(&i915->uncore, MCH_SSKPD);
> > +
> > +	wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
> > +	if (wm[0] == 0)
> > +		wm[0] = REG_FIELD_GET64(SSKPD_OLD_WM0_MASK_HSW, sskpd);
> > +	wm[1] = REG_FIELD_GET64(SSKPD_WM1_MASK_HSW, sskpd);
> > +	wm[2] = REG_FIELD_GET64(SSKPD_WM2_MASK_HSW, sskpd);
> > +	wm[3] = REG_FIELD_GET64(SSKPD_WM3_MASK_HSW, sskpd);
> > +	wm[4] = REG_FIELD_GET64(SSKPD_WM4_MASK_HSW, sskpd);
> > +}
> > +
> > +static void snb_read_wm_latency(struct drm_i915_private *i915, u16 wm[])
> > +{
> > +	u32 sskpd;
> > +
> > +	sskpd = intel_uncore_read(&i915->uncore, MCH_SSKPD);
> > +
> > +	wm[0] = REG_FIELD_GET(SSKPD_WM0_MASK_SNB, sskpd);
> > +	wm[1] = REG_FIELD_GET(SSKPD_WM1_MASK_SNB, sskpd);
> > +	wm[2] = REG_FIELD_GET(SSKPD_WM2_MASK_SNB, sskpd);
> > +	wm[3] = REG_FIELD_GET(SSKPD_WM3_MASK_SNB, sskpd);
> > +}
> > +
> > +static void ilk_read_wm_latency(struct drm_i915_private *i915, u16 wm[])
> > +{
> > +	u32 mltr;
> > +
> > +	mltr = intel_uncore_read(&i915->uncore, MLTR_ILK);
> > +
> > +	/* ILK primary LP0 latency is 700 ns */
> > +	wm[0] = 7;
> > +	wm[1] = REG_FIELD_GET(MLTR_WM1_MASK, mltr);
> > +	wm[2] = REG_FIELD_GET(MLTR_WM2_MASK, mltr);
> >  }
> >  
> >  static void intel_fixup_spr_wm_latency(struct drm_i915_private *dev_priv,
> > @@ -3128,7 +3138,12 @@ static void snb_wm_lp3_irq_quirk(struct drm_i915_private *dev_priv)
> >  
> >  static void ilk_setup_wm_latency(struct drm_i915_private *dev_priv)
> >  {
> > -	intel_read_wm_latency(dev_priv, dev_priv->display.wm.pri_latency);
> > +	if (IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
> > +		hsw_read_wm_latency(dev_priv, dev_priv->display.wm.pri_latency);
> > +	else if (DISPLAY_VER(dev_priv) >= 6)
> > +		snb_read_wm_latency(dev_priv, dev_priv->display.wm.pri_latency);
> > +	else
> > +		ilk_read_wm_latency(dev_priv, dev_priv->display.wm.pri_latency);
> >  
> >  	memcpy(dev_priv->display.wm.spr_latency, dev_priv->display.wm.pri_latency,
> >  	       sizeof(dev_priv->display.wm.pri_latency));
> > @@ -3150,7 +3165,11 @@ static void ilk_setup_wm_latency(struct drm_i915_private *dev_priv)
> >  
> >  static void skl_setup_wm_latency(struct drm_i915_private *dev_priv)
> >  {
> > -	intel_read_wm_latency(dev_priv, dev_priv->display.wm.skl_latency);
> > +	if (DISPLAY_VER(dev_priv) >= 14)
> > +		mtl_read_wm_latency(dev_priv, dev_priv->display.wm.skl_latency);
> > +	else
> > +		skl_read_wm_latency(dev_priv, dev_priv->display.wm.skl_latency);
> > +
> >  	intel_print_wm_latency(dev_priv, "Gen9 Plane", dev_priv->display.wm.skl_latency);
> >  }
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Ville Syrjälä
Intel
