Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EABAE422C8D
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Oct 2021 17:32:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D74636E427;
	Tue,  5 Oct 2021 15:32:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2176F6E427
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Oct 2021 15:32:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10128"; a="223176255"
X-IronPort-AV: E=Sophos;i="5.85,349,1624345200"; d="scan'208";a="223176255"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2021 08:31:59 -0700
X-IronPort-AV: E=Sophos;i="5.85,349,1624345200"; d="scan'208";a="458099979"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2021 08:31:57 -0700
Date: Tue, 5 Oct 2021 18:31:53 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org, uma.shankar@intel.com,
 animesh.manna@intel.com
Message-ID: <20211005153153.GA2847074@ideak-desk.fi.intel.com>
References: <20211005071531.2274972-1-ankit.k.nautiyal@intel.com>
 <87lf3728zx.fsf@intel.com>
 <a3b08a93-e583-8f61-ee04-a76b8800a798@intel.com>
 <87bl43221e.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87bl43221e.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Remove check for low
 voltage sku for max dp source rate
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

On Tue, Oct 05, 2021 at 01:34:21PM +0300, Jani Nikula wrote:
> 
> Cc: Imre, I think you were involved in adding the checks.

About ADL-S the spec says:

Bspec 53597:
Combo Port Maximum Speed:
OEM must use VBT to specify a maximum that is tolerated by the board design.

Combo Port HBR3 support:
May require retimer on motherboard. The OEM must use VBT to limit the link rate to HBR2 if HBR3 not supported by motherboard.

Bspec/49201:
Combo Port HBR3/6.48GHz support:
Only supported on SKUs with higher I/O voltage

I take the above meaning that only high voltage SKUs support HBR3 and
on those SKUs the OEM must limit this to HBR2 if HBR3 would require a
retimer on the board, but the board doesn't have this.

If the above isn't correct and low voltage SKUs also in fact support
HBR3 (with retimers if necessary) then this should imo clarified at
Bspec/49201. The VBT limit could be used then if present, ignoring the
low voltage SKU readout.

> BR,
> Jani.
> 
> On Tue, 05 Oct 2021, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com> wrote:
> > On 10/5/2021 1:34 PM, Jani Nikula wrote:
> >> On Tue, 05 Oct 2021, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> >>> The low voltage sku check can be ignored as OEMs need to consider that
> >>> when designing the board and then put any limits in VBT.
> >> "can" or "must"?
> >>
> >> VBT has been notoriously buggy over the years, and we need to safeguard
> >> against that. Are there any cases where having these checks are wrong?
> >
> > Hi Jani,
> >
> > Bspec page for Combo PHY PLL frequencies now says "OEM must use VBT to 
> > specify a maximum that is tolerated by the board design" for the rates 
> > above 5.4G.
> >
> > Earlier it was mentioned that rates > 5.4G were supported on SKUs with 
> > Higher I/O Voltage.
> >
> > There was an instance where on an ADL-S board, where VBT was showing as 
> > HBR3 supporting for a combo phy port,  but we were reading the IO 
> > voltage as 0.85V in is_low_voltage_sku()
> >
> > (Specifically, we were reading Register_PORT_COMP_DW3 bits 24-25 as 0) 
> > for a combo PHY port, and therefore we were limiting the BW to 5.4Gbps
> >
> > Due to this, 8k@60 mode was getting pruned on the board for that combo 
> > phy port. On removing the low_voltage_sku( ) the mode was able to be set 
> > properly.
> >
> > Incidentally, with Windows 8k@60 was also coming up on the same board on 
> > same port.
> >
> > So I had checked with HW team and GOP/VBT team if driver should consider 
> > the low voltage sku check.  As per their response we 'can' ignore the 
> > check and rely on the VBT, as OEM should limit the rate as per board 
> > design. The Bspec was also updated to reflect the same.
> >
> > So IMHO we need not limit the rate as per is_low_voltage_sku check, as 
> > this limiting of the rate through VBT is a must for the OEMs.
> >
> > I should perhaps change the wording of the commit message to convey the 
> > same.
> >
> >
> > Thanks & Regards,
> >
> > Ankit
> >
> >
> >>
> >> BR,
> >> Jani.
> >>
> >>> Same is now changed in Bspec (53720).
> >>>
> >>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> >>> ---
> >>>   drivers/gpu/drm/i915/display/intel_dp.c | 32 +++----------------------
> >>>   1 file changed, 3 insertions(+), 29 deletions(-)
> >>>
> >>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> >>> index 74a657ae131a..75c364c3c88e 100644
> >>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> >>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> >>> @@ -297,23 +297,13 @@ static int dg2_max_source_rate(struct intel_dp *intel_dp)
> >>>   	return intel_dp_is_edp(intel_dp) ? 810000 : 1350000;
> >>>   }
> >>>   
> >>> -static bool is_low_voltage_sku(struct drm_i915_private *i915, enum phy phy)
> >>> -{
> >>> -	u32 voltage;
> >>> -
> >>> -	voltage = intel_de_read(i915, ICL_PORT_COMP_DW3(phy)) & VOLTAGE_INFO_MASK;
> >>> -
> >>> -	return voltage == VOLTAGE_INFO_0_85V;
> >>> -}
> >>> -
> >>>   static int icl_max_source_rate(struct intel_dp *intel_dp)
> >>>   {
> >>>   	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> >>>   	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
> >>>   	enum phy phy = intel_port_to_phy(dev_priv, dig_port->base.port);
> >>>   
> >>> -	if (intel_phy_is_combo(dev_priv, phy) &&
> >>> -	    (is_low_voltage_sku(dev_priv, phy) || !intel_dp_is_edp(intel_dp)))
> >>> +	if (intel_phy_is_combo(dev_priv, phy) && !intel_dp_is_edp(intel_dp))
> >>>   		return 540000;
> >>>   
> >>>   	return 810000;
> >>> @@ -321,23 +311,7 @@ static int icl_max_source_rate(struct intel_dp *intel_dp)
> >>>   
> >>>   static int ehl_max_source_rate(struct intel_dp *intel_dp)
> >>>   {
> >>> -	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> >>> -	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
> >>> -	enum phy phy = intel_port_to_phy(dev_priv, dig_port->base.port);
> >>> -
> >>> -	if (intel_dp_is_edp(intel_dp) || is_low_voltage_sku(dev_priv, phy))
> >>> -		return 540000;
> >>> -
> >>> -	return 810000;
> >>> -}
> >>> -
> >>> -static int dg1_max_source_rate(struct intel_dp *intel_dp)
> >>> -{
> >>> -	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> >>> -	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> >>> -	enum phy phy = intel_port_to_phy(i915, dig_port->base.port);
> >>> -
> >>> -	if (intel_phy_is_combo(i915, phy) && is_low_voltage_sku(i915, phy))
> >>> +	if (intel_dp_is_edp(intel_dp))
> >>>   		return 540000;
> >>>   
> >>>   	return 810000;
> >>> @@ -380,7 +354,7 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
> >>>   			max_rate = dg2_max_source_rate(intel_dp);
> >>>   		else if (IS_ALDERLAKE_P(dev_priv) || IS_ALDERLAKE_S(dev_priv) ||
> >>>   			 IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv))
> >>> -			max_rate = dg1_max_source_rate(intel_dp);
> >>> +			max_rate = 810000;
> >>>   		else if (IS_JSL_EHL(dev_priv))
> >>>   			max_rate = ehl_max_source_rate(intel_dp);
> >>>   		else
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
