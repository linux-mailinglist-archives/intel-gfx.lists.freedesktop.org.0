Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D20842C4DE
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Oct 2021 17:35:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2C256E875;
	Wed, 13 Oct 2021 15:35:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F291E6E875
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Oct 2021 15:35:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10136"; a="226230162"
X-IronPort-AV: E=Sophos;i="5.85,371,1624345200"; d="scan'208";a="226230162"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2021 08:35:50 -0700
X-IronPort-AV: E=Sophos;i="5.85,371,1624345200"; d="scan'208";a="491513657"
Received: from araghuw-mobl.gar.corp.intel.com (HELO localhost)
 ([10.251.208.234])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2021 08:35:47 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Imre Deak <imre.deak@intel.com>, "Nautiyal\,
 Ankit K" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, uma.shankar@intel.com,
 animesh.manna@intel.com
In-Reply-To: <20211013151915.GA9101@ideak-desk.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211005071531.2274972-1-ankit.k.nautiyal@intel.com>
 <87lf3728zx.fsf@intel.com> <a3b08a93-e583-8f61-ee04-a76b8800a798@intel.com>
 <87bl43221e.fsf@intel.com> <20211005153153.GA2847074@ideak-desk.fi.intel.com>
 <5e73ecc6-ea08-a6f0-d708-9ff0ea12c07c@intel.com>
 <20211013151915.GA9101@ideak-desk.fi.intel.com>
Date: Wed, 13 Oct 2021 18:35:44 +0300
Message-ID: <874k9lx7hr.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Wed, 13 Oct 2021, Imre Deak <imre.deak@intel.com> wrote:
> On Thu, Oct 07, 2021 at 01:19:25PM +0530, Nautiyal, Ankit K wrote:
>>=20
>> On 10/5/2021 9:01 PM, Imre Deak wrote:
>> > On Tue, Oct 05, 2021 at 01:34:21PM +0300, Jani Nikula wrote:
>> > > Cc: Imre, I think you were involved in adding the checks.
>> > About ADL-S the spec says:
>> >=20
>> > Bspec 53597:
>> > Combo Port Maximum Speed:
>> > OEM must use VBT to specify a maximum that is tolerated by the board d=
esign.
>> >=20
>> > Combo Port HBR3 support:
>> > May require retimer on motherboard. The OEM must use VBT to limit the =
link rate to HBR2 if HBR3 not supported by motherboard.
>> >=20
>> > Bspec/49201:
>> > Combo Port HBR3/6.48GHz support:
>> > Only supported on SKUs with higher I/O voltage
>> >=20
>> > I take the above meaning that only high voltage SKUs support HBR3 and
>> > on those SKUs the OEM must limit this to HBR2 if HBR3 would require a
>> > retimer on the board, but the board doesn't have this.
>> >=20
>> > If the above isn't correct and low voltage SKUs also in fact support
>> > HBR3 (with retimers if necessary) then this should imo clarified at
>> > Bspec/49201. The VBT limit could be used then if present, ignoring the
>> > low voltage SKU readout.
>>=20
>> Thanks Imre for the inputs.
>>=20
>> As you have mentioned note : rate >5.4 G supported only on High voltage =
I/O,
>> is mentioned for platforms like ICL, JSL and Display 12 platforms.
>>=20
>> I had again asked the HW team and VBT/GOP team whether we can safely rel=
y on
>> VBT for the max rate for these platforms, without worrying about the SKU=
's
>> IO Voltage, and also requested them to update the Bspec page for the sam=
e.
>>=20
>> In response the Bspec pages 49201, 20598 are now updated with the note "=
OEM
>> must use VBT to specify a maximum that is tolerated by the board design"=
 for
>> the rates above 5.4G.
>
> Ok, thanks for this, now the spec is closer to the proposed changes. On
> some platforms it's still unclear if the default max rate in the lack of
> a VBT limit is HBR2 or HBR3. The ADL-S overview at Bspec/53597 is clear
> now wrt. this:
>
> (*) "May require retimer on motherboard. The OEM must use VBT to limit th=
e link rate
>     to HBR2 if HBR3 not supported by motherboard."
>
> ideally it should still clarify if the potential retimer requirement appl=
ies to
> both eDP and DP or only to DP.
>
> I still see the followings to adjust in the spec so that it reflects
> the patch:
>
> - ICL
>   - bspec/20584:
>     "Increased IO voltage may be required to support HBR3 for the highest=
 DisplayPort
>      and eDP resolutions."
>
>      should be changed to (*) above mentioning that HBR3 is only supporte=
d on
>      eDP.
>
>   - bspec/20598:
>     "Combo HBR3: OEM must use VBT to specify a miximum that is tolerated =
by the
>     board design."
>
>     The DP/HBR3 support on ICL should be removed.
>
>     For eDP/HBR3 on ICL the above comment should be changed to (*).
>
> - JSL
>   - bspec/32247:
>     "Increased IO voltage may be required to support HBR3 for the highest=
 DisplayPort
>      resolutions."
>
>     should be removed/changed to (*).
>
>   - bspec/20598:
>     "OEM must use VBT to specify a miximum that is tolerated by the
>     board design."
>
>     should be changed to (*).
>
> - TGL:
>   - bspec/49201:
>     "Combo HBR3: OEM must use VBT to specify a miximum that is tolerated
>     by the board design."
>
>     The DP/HBR3 support should be removed, for eDP/HBR3 the above should
>     be changed to (*).
>
> - RKL:
>   - bspec/49201, 49204:
>     Remove the RKL tag, since there is a separate page for RKL.
>
>   - bspec/49202:
>     "Combo HBR3: Only supported on SKUs with higher I/O voltage"
>
>     should be changed to (*).
>
> - ADLS:
>   - bspec/49201, 49204:
>     The ADLS tag should be removed, since there is a separate page for AD=
LS.
>
>   - bspec/53720:
>     "Combo HBR3: OEM must use VBT to specify a miximum that is tolerated =
by the
>     board design."
>
>     should be changed to (*).
>
> - DG1:
>   - bspec/49205:
>     "Combo HBR3: Only supported on SKUs with higher I/O voltage"
>
>     should be changed to (*) above.
>
> - DG2:
>   - bspec/53657:
>     For Combo HBR3 (*) should be added.
>
>   - bspec/54034:
>     For Combo HBR3 (*) should be added.
>
> - ADLP:
>   - bspec/49185:
>     "Combo DP/HBR3: OEM must use VBT to specify a miximum that is tolerat=
ed by
>     the board design. An external re-timer may be needed."
>
>     should be changed to (*).
>
>
> Also could you add a debug print with the voltage configuration of combo
> PHYs somewhere in intel_combo_phy.c?
>
>> From what I understand, we can depend upon the VBT's rate, and if there =
are
>> some low voltage I/O SKUs that do not support HBR3 rate, it should be
>> limited by the VBT.
>>=20
>> Thanks & Regards,
>>=20
>> Ankit
>>=20
>> > > BR,
>> > > Jani.
>> > >=20
>> > > On Tue, 05 Oct 2021, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com=
> wrote:
>> > > > On 10/5/2021 1:34 PM, Jani Nikula wrote:
>> > > > > On Tue, 05 Oct 2021, Ankit Nautiyal <ankit.k.nautiyal@intel.com>=
 wrote:
>> > > > > > The low voltage sku check can be ignored as OEMs need to consi=
der that
>> > > > > > when designing the board and then put any limits in VBT.
>> > > > > "can" or "must"?
>> > > > >=20
>> > > > > VBT has been notoriously buggy over the years, and we need to sa=
feguard
>> > > > > against that. Are there any cases where having these checks are =
wrong?
>> > > > Hi Jani,
>> > > >=20
>> > > > Bspec page for Combo PHY PLL frequencies now says "OEM must use VB=
T to
>> > > > specify a maximum that is tolerated by the board design" for the r=
ates
>> > > > above 5.4G.
>> > > >=20
>> > > > Earlier it was mentioned that rates > 5.4G were supported on SKUs =
with
>> > > > Higher I/O Voltage.
>> > > >=20
>> > > > There was an instance where on an ADL-S board, where VBT was showi=
ng as
>> > > > HBR3 supporting for a combo phy port,=C2=A0 but we were reading th=
e IO
>> > > > voltage as 0.85V in is_low_voltage_sku()
>> > > >=20
>> > > > (Specifically, we were reading Register_PORT_COMP_DW3 bits 24-25 a=
s 0)
>> > > > for a combo PHY port, and therefore we were limiting the BW to 5.4=
Gbps

Btw why was this? Is it the wrong register, wrong thing to do, what?

BR,
Jani.


>> > > >=20
>> > > > Due to this, 8k@60 mode was getting pruned on the board for that c=
ombo
>> > > > phy port. On removing the low_voltage_sku( ) the mode was able to =
be set
>> > > > properly.
>> > > >=20
>> > > > Incidentally, with Windows 8k@60 was also coming up on the same bo=
ard on
>> > > > same port.
>> > > >=20
>> > > > So I had checked with HW team and GOP/VBT team if driver should co=
nsider
>> > > > the low voltage sku check.=C2=A0 As per their response we 'can' ig=
nore the
>> > > > check and rely on the VBT, as OEM should limit the rate as per boa=
rd
>> > > > design. The Bspec was also updated to reflect the same.
>> > > >=20
>> > > > So IMHO we need not limit the rate as per is_low_voltage_sku check=
, as
>> > > > this limiting of the rate through VBT is a must for the OEMs.
>> > > >=20
>> > > > I should perhaps change the wording of the commit message to conve=
y the
>> > > > same.
>> > > >=20
>> > > >=20
>> > > > Thanks & Regards,
>> > > >=20
>> > > > Ankit
>> > > >=20
>> > > >=20
>> > > > > BR,
>> > > > > Jani.
>> > > > >=20
>> > > > > > Same is now changed in Bspec (53720).
>> > > > > >=20
>> > > > > > Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> > > > > > ---
>> > > > > >    drivers/gpu/drm/i915/display/intel_dp.c | 32 +++-----------=
-----------
>> > > > > >    1 file changed, 3 insertions(+), 29 deletions(-)
>> > > > > >=20
>> > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers=
/gpu/drm/i915/display/intel_dp.c
>> > > > > > index 74a657ae131a..75c364c3c88e 100644
>> > > > > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> > > > > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> > > > > > @@ -297,23 +297,13 @@ static int dg2_max_source_rate(struct in=
tel_dp *intel_dp)
>> > > > > >    	return intel_dp_is_edp(intel_dp) ? 810000 : 1350000;
>> > > > > >    }
>> > > > > > -static bool is_low_voltage_sku(struct drm_i915_private *i915,=
 enum phy phy)
>> > > > > > -{
>> > > > > > -	u32 voltage;
>> > > > > > -
>> > > > > > -	voltage =3D intel_de_read(i915, ICL_PORT_COMP_DW3(phy)) & VO=
LTAGE_INFO_MASK;
>> > > > > > -
>> > > > > > -	return voltage =3D=3D VOLTAGE_INFO_0_85V;
>> > > > > > -}
>> > > > > > -
>> > > > > >    static int icl_max_source_rate(struct intel_dp *intel_dp)
>> > > > > >    {
>> > > > > >    	struct intel_digital_port *dig_port =3D dp_to_dig_port(int=
el_dp);
>> > > > > >    	struct drm_i915_private *dev_priv =3D to_i915(dig_port->ba=
se.base.dev);
>> > > > > >    	enum phy phy =3D intel_port_to_phy(dev_priv, dig_port->bas=
e.port);
>> > > > > > -	if (intel_phy_is_combo(dev_priv, phy) &&
>> > > > > > -	    (is_low_voltage_sku(dev_priv, phy) || !intel_dp_is_edp(i=
ntel_dp)))
>> > > > > > +	if (intel_phy_is_combo(dev_priv, phy) && !intel_dp_is_edp(in=
tel_dp))
>> > > > > >    		return 540000;
>> > > > > >    	return 810000;
>> > > > > > @@ -321,23 +311,7 @@ static int icl_max_source_rate(struct int=
el_dp *intel_dp)
>> > > > > >    static int ehl_max_source_rate(struct intel_dp *intel_dp)
>> > > > > >    {
>> > > > > > -	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel=
_dp);
>> > > > > > -	struct drm_i915_private *dev_priv =3D to_i915(dig_port->base=
.base.dev);
>> > > > > > -	enum phy phy =3D intel_port_to_phy(dev_priv, dig_port->base.=
port);
>> > > > > > -
>> > > > > > -	if (intel_dp_is_edp(intel_dp) || is_low_voltage_sku(dev_priv=
, phy))
>> > > > > > -		return 540000;
>> > > > > > -
>> > > > > > -	return 810000;
>> > > > > > -}
>> > > > > > -
>> > > > > > -static int dg1_max_source_rate(struct intel_dp *intel_dp)
>> > > > > > -{
>> > > > > > -	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel=
_dp);
>> > > > > > -	struct drm_i915_private *i915 =3D to_i915(dig_port->base.bas=
e.dev);
>> > > > > > -	enum phy phy =3D intel_port_to_phy(i915, dig_port->base.port=
);
>> > > > > > -
>> > > > > > -	if (intel_phy_is_combo(i915, phy) && is_low_voltage_sku(i915=
, phy))
>> > > > > > +	if (intel_dp_is_edp(intel_dp))
>> > > > > >    		return 540000;
>> > > > > >    	return 810000;
>> > > > > > @@ -380,7 +354,7 @@ intel_dp_set_source_rates(struct intel_dp =
*intel_dp)
>> > > > > >    			max_rate =3D dg2_max_source_rate(intel_dp);
>> > > > > >    		else if (IS_ALDERLAKE_P(dev_priv) || IS_ALDERLAKE_S(dev_p=
riv) ||
>> > > > > >    			 IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv))
>> > > > > > -			max_rate =3D dg1_max_source_rate(intel_dp);
>> > > > > > +			max_rate =3D 810000;
>> > > > > >    		else if (IS_JSL_EHL(dev_priv))
>> > > > > >    			max_rate =3D ehl_max_source_rate(intel_dp);
>> > > > > >    		else
>> > > --=20
>> > > Jani Nikula, Intel Open Source Graphics Center

--=20
Jani Nikula, Intel Open Source Graphics Center
