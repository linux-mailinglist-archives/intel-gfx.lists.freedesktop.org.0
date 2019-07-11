Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE7B866214
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2019 01:15:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38FB46E293;
	Thu, 11 Jul 2019 23:15:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E9D36E293
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 23:15:44 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jul 2019 16:15:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,480,1557212400"; 
 d="p7s'?scan'208";a="156968773"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga007.jf.intel.com with ESMTP; 11 Jul 2019 16:15:43 -0700
Received: from fmsmsx106.amr.corp.intel.com ([169.254.5.248]) by
 FMSMSX103.amr.corp.intel.com ([169.254.2.17]) with mapi id 14.03.0439.000;
 Thu, 11 Jul 2019 16:15:43 -0700
From: "Summers, Stuart" <stuart.summers@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v3 1/1] drm/i915: Add modular FIA
Thread-Index: AQHVOCtuHOk+Sar8TUGOl9G5YilqMabGghyA
Date: Thu, 11 Jul 2019 23:15:42 +0000
Message-ID: <8508f5d2ebc23b5a6a67af51bd9aa9f7cc8cb976.camel@intel.com>
References: <20190711205827.12849-1-lucas.demarchi@intel.com>
 <20190711205827.12849-2-lucas.demarchi@intel.com>
In-Reply-To: <20190711205827.12849-2-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.54.134.159]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 1/1] drm/i915: Add modular FIA
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Content-Type: multipart/mixed; boundary="===============2074659164=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============2074659164==
Content-Language: en-US
Content-Type: multipart/signed; micalg=sha-1;
	protocol="application/x-pkcs7-signature"; boundary="=-EFpnIfmha2qyz2Tnj3Ia"

--=-EFpnIfmha2qyz2Tnj3Ia
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2019-07-11 at 13:58 -0700, Lucas De Marchi wrote:
> From: Anusha Srivatsa <anusha.srivatsa@intel.com>
>=20
> Some platforms may have Modular FIA. If Modular FIA is used in the
> SOC,
> then Display Driver will access the additional instances of
> FIA based on pre-assigned offset in GTTMADDR space.
>=20
> Each Modular FIA instance has its own IOSF Sideband Port ID
> and it houses only 2 Type-C Port. In SOC that has more than
> two Type-C Ports, there are multiple instances of Modular FIA.
> Gunit will need to use different destination ID when it access
> different pair of Type-C Port.
>=20
> The DFLEXDPSP register has Modular FIA bit starting on Tiger
> Lake.  If
> Modular FIA is used in the SOC, this register bit exists in all the
> instances of Modular FIA. IOM FW is required to program only the MF
> bit
> in first FIA instance that houses the Type-C Port 0 and Port 1, for
> Display Driver to read from.
>=20
> v2 (Lucas):
>   - Move all accesses to FIA to be contained in intel_tc.c, along
> with
>     display_fia that is now called tc_phy_fia
>   - Save the fia instance number on intel_digital_port, so we don't
> have
>     to query if modular FIA is used on every access
> v3 (Lucas): Make function static
> v4 (Lucas): Move enum phy_fia to the header and use it in
>    intel_digital_port (suggested by Ville)
>=20
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> Acked-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.h |  6 +++
>  drivers/gpu/drm/i915/display/intel_tc.c      | 43 ++++++++++++++++
> ----
>  drivers/gpu/drm/i915/i915_reg.h              | 13 ++++--
>  drivers/gpu/drm/i915/intel_device_info.h     |  1 +
>  drivers/gpu/drm/i915/intel_drv.h             |  1 +
>  5 files changed, 52 insertions(+), 12 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h
> b/drivers/gpu/drm/i915/display/intel_display.h
> index 8a4a57ef82a2..8b048976f7b4 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -243,6 +243,12 @@ enum phy {
> =20
>  #define phy_name(a) ((a) + 'A')
> =20
> +enum phy_fia {
> +	FIA1,
> +	FIA2,
> +	FIA3,
> +};
> +
>  #define for_each_pipe(__dev_priv, __p) \
>  	for ((__p) =3D 0; (__p) < INTEL_INFO(__dev_priv)->num_pipes;
> (__p)++)
> =20
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c
> b/drivers/gpu/drm/i915/display/intel_tc.c
> index f44ee4bfe7c8..9400da4f7916 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> @@ -22,6 +22,24 @@ static const char *tc_port_mode_name(enum
> tc_port_mode mode)
>  	return names[mode];
>  }
> =20
> +static bool has_modular_fia(struct drm_i915_private *i915)
> +{
> +	if (!INTEL_INFO(i915)->display.has_modular_fia)
> +		return false;
> +
> +	return intel_uncore_read(&i915->uncore,
> +				 PORT_TX_DFLEXDPSP(FIA1)) &
> MODULAR_FIA_MASK;
> +}
> +
> +static enum phy_fia tc_port_to_fia(struct drm_i915_private *i915,
> +				   enum tc_port tc_port)
> +{
> +	if (!has_modular_fia(i915))
> +		return FIA1;
> +
> +	return tc_port / 2;

I realize this is described in the commit message, but would be nice to
have a brief comment describing why we need this conversion.

> +}
> +
>  u32 intel_tc_port_get_lane_mask(struct intel_digital_port *dig_port)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(dig_port-
> >base.base.dev);
> @@ -29,7 +47,8 @@ u32 intel_tc_port_get_lane_mask(struct
> intel_digital_port *dig_port)
>  	struct intel_uncore *uncore =3D &i915->uncore;
>  	u32 lane_mask;
> =20
> -	lane_mask =3D intel_uncore_read(uncore, PORT_TX_DFLEXDPSP);
> +	lane_mask =3D intel_uncore_read(uncore,
> +				      PORT_TX_DFLEXDPSP(dig_port-
> >tc_phy_fia));
> =20
>  	WARN_ON(lane_mask =3D=3D 0xffffffff);
> =20
> @@ -78,7 +97,8 @@ void intel_tc_port_set_fia_lane_count(struct
> intel_digital_port *dig_port,
> =20
>  	WARN_ON(lane_reversal && dig_port->tc_mode !=3D TC_PORT_LEGACY);
> =20
> -	val =3D intel_uncore_read(uncore, PORT_TX_DFLEXDPMLE1);
> +	val =3D intel_uncore_read(uncore,
> +				PORT_TX_DFLEXDPMLE1(dig_port-
> >tc_phy_fia));
>  	val &=3D ~DFLEXDPMLE1_DPMLETC_MASK(tc_port);
> =20
>  	switch (required_lanes) {
> @@ -97,7 +117,8 @@ void intel_tc_port_set_fia_lane_count(struct
> intel_digital_port *dig_port,
>  		MISSING_CASE(required_lanes);
>  	}
> =20
> -	intel_uncore_write(uncore, PORT_TX_DFLEXDPMLE1, val);
> +	intel_uncore_write(uncore,
> +			   PORT_TX_DFLEXDPMLE1(dig_port->tc_phy_fia),
> val);
>  }
> =20
>  static void tc_port_fixup_legacy_flag(struct intel_digital_port
> *dig_port,
> @@ -129,7 +150,8 @@ static u32 tc_port_live_status_mask(struct
> intel_digital_port *dig_port)
>  	u32 mask =3D 0;
>  	u32 val;
> =20
> -	val =3D intel_uncore_rea
> d(uncore, PORT_TX_DFLEXDPSP);
> +	val =3D intel_uncore_read(uncore,
> +				PORT_TX_DFLEXDPSP(dig_port-
> >tc_phy_fia));
> =20
>  	if (val =3D=3D 0xffffffff) {
>  		DRM_DEBUG_KMS("Port %s: PHY in TCCOLD, nothing
> connected\n",
> @@ -159,7 +181,8 @@ static bool icl_tc_phy_status_complete(struct
> intel_digital_port *dig_port)
>  	struct intel_uncore *uncore =3D &i915->uncore;
>  	u32 val;
> =20
> -	val =3D intel_uncore_read(uncore, PORT_TX_DFLEXDPPMS);
> +	val =3D intel_uncore_read(uncore,
> +				PORT_TX_DFLEXDPPMS(dig_port-
> >tc_phy_fia));
>  	if (val =3D=3D 0xffffffff) {
>  		DRM_DEBUG_KMS("Port %s: PHY in TCCOLD, assuming not
> complete\n",
>  			      dig_port->tc_port_name);
> @@ -177,7 +200,8 @@ static bool icl_tc_phy_set_safe_mode(struct
> intel_digital_port *dig_port,
>  	struct intel_uncore *uncore =3D &i915->uncore;
>  	u32 val;
> =20
> -	val =3D intel_uncore_read(uncore, PORT_TX_DFLEXDPCSSS);
> +	val =3D intel_uncore_read(uncore,
> +				PORT_TX_DFLEXDPCSSS(dig_port-
> >tc_phy_fia));
>  	if (val =3D=3D 0xffffffff) {
>  		DRM_DEBUG_KMS("Port %s: PHY in TCCOLD, can't set safe-
> mode to %s\n",
>  			      dig_port->tc_port_name,
> @@ -190,7 +214,8 @@ static bool icl_tc_phy_set_safe_mode(struct
> intel_digital_port *dig_port,
>  	if (!enable)
>  		val |=3D DP_PHY_MODE_STATUS_NOT_SAFE(tc_port);
> =20
> -	intel_uncore_write(uncore, PORT_TX_DFLEXDPCSSS, val);
> +	intel_uncore_write(uncore,
> +			   PORT_TX_DFLEXDPCSSS(dig_port->tc_phy_fia),
> val);
> =20
>  	if (enable && wait_for(!icl_tc_phy_status_complete(dig_port),
> 10))
>  		DRM_DEBUG_KMS("Port %s: PHY complete clear timed
> out\n",
> @@ -206,7 +231,8 @@ static bool icl_tc_phy_is_in_safe_mode(struct
> intel_digital_port *dig_port)
>  	struct intel_uncore *uncore =3D &i915->uncore;
>  	u32 val;
> =20
> -	val =3D intel_uncore_read(uncore, PORT_TX_DFLEXDPCSSS);
> +	val =3D intel_uncore_read(uncore,
> +				PORT_TX_DFLEXDPCSSS(dig_port-
> >tc_phy_fia));
>  	if (val =3D=3D 0xffffffff) {
>  		DRM_DEBUG_KMS("Port %s: PHY in TCCOLD, assume safe
> mode\n",
>  			      dig_port->tc_port_name);
> @@ -503,4 +529,5 @@ void intel_tc_port_init(struct intel_digital_port
> *dig_port, bool is_legacy)
>  	mutex_init(&dig_port->tc_lock);
>  	dig_port->tc_legacy_port =3D is_legacy;
>  	dig_port->tc_link_refcount =3D 0;
> +	dig_port->tc_phy_fia =3D tc_port_to_fia(i915, tc_port);
>  }
> diff --git a/drivers/gpu/drm/i915/i915_reg.h
> b/drivers/gpu/drm/i915/i915_reg.h
> index 95b9ca1fda2e..d0510022013c 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2203,9 +2203,13 @@ enum i915_power_well_id {
>  #define   DW6_OLDO_DYN_PWR_DOWN_EN	(1 << 28)
> =20
>  #define FIA1_BASE			0x163000
> +#define FIA2_BASE			0x16E000
> +#define FIA3_BASE			0x16F000
> +#define _FIA(fia)			_PICK((fia), FIA1_BASE,
> FIA2_BASE, FIA3_BASE)
> +#define _MMIO_FIA(fia, off)		_MMIO(_FIA(fia) + (off))
> =20
>  /* ICL PHY DFLEX registers */
> -#define PORT_TX_DFLEXDPMLE1		_MMIO(FIA1_BASE + 0x008C0)
> +#define PORT_TX_DFLEXDPMLE1(fia)	_MMIO_FIA((fia),  0x008C0)
>  #define   DFLEXDPMLE1_DPMLETC_MASK(tc_port)	(0xf << (4 *
> (tc_port)))
>  #define   DFLEXDPMLE1_DPMLETC_ML0(tc_port)	(1 << (4 * (tc_port)))
>  #define   DFLEXDPMLE1_DPMLETC_ML1_0(tc_port)	(3 << (4 * (tc_port)))
> @@ -11484,17 +11488,18 @@ enum skl_power_gate {
>  						_ICL_DSC1_RC_BUF_THRESH
> _1_UDW_PB, \
>  						_ICL_DSC1_RC_BUF_THRESH
> _1_UDW_PC)
> =20
> -#define PORT_TX_DFLEXDPSP			_MMIO(FIA1_BASE +
> 0x008A0)
> +#define PORT_TX_DFLEXDPSP(fia)			_MMIO_FIA((fia)
> , 0x008A0)
> +#define   MODULAR_FIA_MASK			(1 << 4)
>  #define   TC_LIVE_STATE_TBT(tc_port)		(1 << ((tc_port) * 8 +
> 6))
>  #define   TC_LIVE_STATE_TC(tc_port)		(1 << ((tc_port) * 8 +
> 5))
>  #define   DP_LANE_ASSIGNMENT_SHIFT(tc_port)	((tc_port) * 8)
>  #define   DP_LANE_ASSIGNMENT_MASK(tc_port)	(0xf << ((tc_port) *
> 8))
>  #define   DP_LANE_ASSIGNMENT(tc_port, x)	((x) << ((tc_port) *
> 8))
> =20
> -#define PORT_TX_DFLEXDPPMS				_MMIO(FIA1_BASE
> + 0x00890)
> +#define PORT_TX_DFLEXDPPMS(fia)			_MMIO_FIA((fia)
> , 0x00890)
>  #define   DP_PHY_MODE_STATUS_COMPLETED(tc_port)		(1 <<
> (tc_port))
> =20
> -#define PORT_TX_DFLEXDPCSSS			_MMIO(FIA1_BASE +
> 0x00894)
> +#define PORT_TX_DFLEXDPCSSS(fia)		_MMIO_FIA((fia),
> 0x00894)
>  #define   DP_PHY_MODE_STATUS_NOT_SAFE(tc_port)		(1 <<
> (tc_port))
> =20
>  #endif /* _I915_REG_H_ */
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h
> b/drivers/gpu/drm/i915/intel_device_info.h
> index ddafc819bf30..e9dc86ed517b 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -136,6 +136,7 @@ enum intel_ppgtt_type {
>  	func(has_gmch); \
>  	func(has_hotplug); \
>  	func(has_ipc); \
> +	func(has_modular_fia); \

If we have a register to tell us whether the platform supports this,
why do we need this feature flag?

Thanks,
Stuart

>  	func(has_overlay); \
>  	func(has_psr); \
>  	func(overlay_needs_physical); \
> diff --git a/drivers/gpu/drm/i915/intel_drv.h
> b/drivers/gpu/drm/i915/intel_drv.h
> index 770f9f6aad84..e8ecbd55476e 100644
> --- a/drivers/gpu/drm/i915/intel_drv.h
> +++ b/drivers/gpu/drm/i915/intel_drv.h
> @@ -1245,6 +1245,7 @@ struct intel_digital_port {
>  	bool tc_legacy_port:1;
>  	char tc_port_name[8];
>  	enum tc_port_mode tc_mode;
> +	enum phy_fia tc_phy_fia;
> =20
>  	void (*write_infoframe)(struct intel_encoder *encoder,
>  				const struct intel_crtc_state
> *crtc_state,

--=-EFpnIfmha2qyz2Tnj3Ia
Content-Type: application/x-pkcs7-signature; name="smime.p7s"
Content-Disposition: attachment; filename="smime.p7s"
Content-Transfer-Encoding: base64

MIAGCSqGSIb3DQEHAqCAMIACAQExCzAJBgUrDgMCGgUAMIAGCSqGSIb3DQEHAQAAoIIKcTCCBOsw
ggPToAMCAQICEDabxALowUBS+21KC0JI8fcwDQYJKoZIhvcNAQEFBQAwbzELMAkGA1UEBhMCU0Ux
FDASBgNVBAoTC0FkZFRydXN0IEFCMSYwJAYDVQQLEx1BZGRUcnVzdCBFeHRlcm5hbCBUVFAgTmV0
d29yazEiMCAGA1UEAxMZQWRkVHJ1c3QgRXh0ZXJuYWwgQ0EgUm9vdDAeFw0xMzEyMTEwMDAwMDBa
Fw0yMDA1MzAxMDQ4MzhaMHkxCzAJBgNVBAYTAlVTMQswCQYDVQQIEwJDQTEUMBIGA1UEBxMLU2Fu
dGEgQ2xhcmExGjAYBgNVBAoTEUludGVsIENvcnBvcmF0aW9uMSswKQYDVQQDEyJJbnRlbCBFeHRl
cm5hbCBCYXNpYyBJc3N1aW5nIENBIDRCMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA
yzuW/y/g0bznz8BD48M94luFzqHaqY9yGN9H/W0J7hOVBpl0rTQJ6kZ7z7hyDb9kf2UW4ZU25alC
i+q5m6NwHg+z9pcN7bQ84SSBueaYF7cXlAg7z3XyZbzSEYP7raeuWRf5fYvYzq8/uI7VNR8o/43w
PtDP10YDdO/0J5xrHxnC/9/aU+wTFSVsPqxsd7C58mnu7G4VRJ0n9PG4SfmYNC0h/5fLWuOWhxAv
6MuiK7MmvTPHLMclULgJqVSqG1MbBs0FbzoRHne4Cx0w6rtzPTrzo+bTRqhruaU18lQkzBk6OnyJ
UthtaDQIlfyGy2IlZ5F6QEyjItbdKcHHdjBX8wIDAQABo4IBdzCCAXMwHwYDVR0jBBgwFoAUrb2Y
ejS0Jvf6xCZU7wO94CTLVBowHQYDVR0OBBYEFNpBI5xaj3GvV4M+INPjZdsMywvbMA4GA1UdDwEB
/wQEAwIBhjASBgNVHRMBAf8ECDAGAQH/AgEAMDYGA1UdJQQvMC0GCCsGAQUFBwMEBgorBgEEAYI3
CgMEBgorBgEEAYI3CgMMBgkrBgEEAYI3FQUwFwYDVR0gBBAwDjAMBgoqhkiG+E0BBQFpMEkGA1Ud
HwRCMEAwPqA8oDqGOGh0dHA6Ly9jcmwudHJ1c3QtcHJvdmlkZXIuY29tL0FkZFRydXN0RXh0ZXJu
YWxDQVJvb3QuY3JsMDoGCCsGAQUFBwEBBC4wLDAqBggrBgEFBQcwAYYeaHR0cDovL29jc3AudHJ1
c3QtcHJvdmlkZXIuY29tMDUGA1UdHgQuMCygKjALgQlpbnRlbC5jb20wG6AZBgorBgEEAYI3FAID
oAsMCWludGVsLmNvbTANBgkqhkiG9w0BAQUFAAOCAQEAp9XGgH85hk/3IuN8F4nrFd24MAoau7Uq
M/of09XtyYg2dV0TIPqtxPZw4813r78WwsGIbvtO8VQ18dNktIxaq6+ym2zebqDh0z6Bvo63jKE/
HMj8oNV3ovnuo+7rGpCppcda4iVBG2CetB3WXbUVr82EzECN+wxmC4H9Rup+gn+t+qeBTaXulQfV
TYOvZ0eZPO+DyC2pVv5q5+xHljyUsVqpzsw89utuO8ZYaMsQGBRuFGOncRLEOhCtehy5B5aCI571
i4dDAv9LPODrEzm3PBfrNhlp8C0skak15VXWFzNuHd00AsxXxWSUT4TG8RiAH61Ua5GXsP1BIZwl
4WjK8DCCBX4wggRmoAMCAQICEzMAAHThOHejBjRRsRQAAAAAdOEwDQYJKoZIhvcNAQEFBQAweTEL
MAkGA1UEBhMCVVMxCzAJBgNVBAgTAkNBMRQwEgYDVQQHEwtTYW50YSBDbGFyYTEaMBgGA1UEChMR
SW50ZWwgQ29ycG9yYXRpb24xKzApBgNVBAMTIkludGVsIEV4dGVybmFsIEJhc2ljIElzc3Vpbmcg
Q0EgNEIwHhcNMTkwMTIzMTcxMTA0WhcNMjAwMTE4MTcxMTA0WjBDMRgwFgYDVQQDEw9TdW1tZXJz
LCBTdHVhcnQxJzAlBgkqhkiG9w0BCQEWGHN0dWFydC5zdW1tZXJzQGludGVsLmNvbTCCASIwDQYJ
KoZIhvcNAQEBBQADggEPADCCAQoCggEBAL7LpY79h4eyLdxekwAblnyPAHSCaXvVTUmnPKxWXs9g
VCcf7gjGg8qg/HLCwvgGKGqtVkn2EaCKd85rqklaTp07JciV6a77qodO0yOgyz96hRVuSFAIP0UQ
TXP+PuVIfYuqNSSgh2x2HzJy2DzpG12ZMldy6r2zAa6ypWevjFp5+3/mscAVNAmSHnyj838uukd/
YwrFtEG2j5l/EoijzGMRFUD0tS5eD2y0WmRfmc4xkv1Qjr8AN3ogZr4arGr+rF2F4aakLmoDUCZk
PwuHX1mRETAlwqXCZa6ba8eraUCltlCb/ZiEk9UFRVLjbLNPh9IYOi+sWkS6n5CovLKAqhMCAwEA
AaOCAjMwggIvMB0GA1UdDgQWBBSgeYqvLV4nBaCUzAXLr0TeMJYR5zAfBgNVHSMEGDAWgBTaQSOc
Wo9xr1eDPiDT42XbDMsL2zBlBgNVHR8EXjBcMFqgWKBWhlRodHRwOi8vd3d3LmludGVsLmNvbS9y
ZXBvc2l0b3J5L0NSTC9JbnRlbCUyMEV4dGVybmFsJTIwQmFzaWMlMjBJc3N1aW5nJTIwQ0ElMjA0
Qi5jcmwwgZ8GCCsGAQUFBwEBBIGSMIGPMCIGCCsGAQUFBzABhhZodHRwOi8vb2NzcC5pbnRlbC5j
b20vMGkGCCsGAQUFBzAChl1odHRwOi8vd3d3LmludGVsLmNvbS9yZXBvc2l0b3J5L2NlcnRpZmlj
YXRlcy9JbnRlbCUyMEV4dGVybmFsJTIwQmFzaWMlMjBJc3N1aW5nJTIwQ0ElMjA0Qi5jcnQwCwYD
VR0PBAQDAgeAMDwGCSsGAQQBgjcVBwQvMC0GJSsGAQQBgjcVCIbDjHWEmeVRg/2BKIWOn1OCkcAJ
Z4HevTmV8EMCAWQCAQkwHwYDVR0lBBgwFgYIKwYBBQUHAwQGCisGAQQBgjcKAwwwKQYJKwYBBAGC
NxUKBBwwGjAKBggrBgEFBQcDBDAMBgorBgEEAYI3CgMMME0GA1UdEQRGMESgKAYKKwYBBAGCNxQC
A6AaDBhzdHVhcnQuc3VtbWVyc0BpbnRlbC5jb22BGHN0dWFydC5zdW1tZXJzQGludGVsLmNvbTAN
BgkqhkiG9w0BAQUFAAOCAQEAfyIC7rzSi6S8O+sdH384K8zyeMRJnl6vR7whl9PuEat+BkKpoxHn
jQ0SFyF/cyI4lH/n938Pm3/Ctq0Z5GTldX6hhxxcLAR0qbk6AQU0Cq2nYMlZfX4FUz3FRsazbjTW
1qObcvPRUAVScaa7SRGdensvbNV++pN1XqEdc++szxo58UzPaEgDlHIe2sEIVXnFkHnJv0ikRHG3
urcA1bdj7Rac7dJBeQOQMdZEGmrWWmmbJzvk3OmoK9tKN7wcErQSdlqyYOMLesPfa7YNyLFYEJQd
CC/N7V8U9yFZx8akWREb8lJYDl9KypirEsufleiew26CWrwcbmdlldDCFS6/HDGCAhcwggITAgEB
MIGQMHkxCzAJBgNVBAYTAlVTMQswCQYDVQQIEwJDQTEUMBIGA1UEBxMLU2FudGEgQ2xhcmExGjAY
BgNVBAoTEUludGVsIENvcnBvcmF0aW9uMSswKQYDVQQDEyJJbnRlbCBFeHRlcm5hbCBCYXNpYyBJ
c3N1aW5nIENBIDRCAhMzAAB04Th3owY0UbEUAAAAAHThMAkGBSsOAwIaBQCgXTAYBgkqhkiG9w0B
CQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0xOTA3MTEyMzE1MzlaMCMGCSqGSIb3DQEJ
BDEWBBSByFg5ioaoSDRqmKACfIEnXEEeoTANBgkqhkiG9w0BAQEFAASCAQCXFQVVRADg0NqeTgGu
hgkeLulr/vBiOyDIS4dNuWYCTcZLZCnxjCZV/Fv4cZMtakIqr1iy1wAOT6dBVv3VY6rr0DzKTH8n
LYfD/3IgMIPn4SoTKV0sFBnAr1NAFKONyAMV+fUKWA5BXP32wYxNK3jDC4md3/BeUsAEfVEJ4lHB
KRxoBg+vANrT9ALV4y2zClRbv8VRXK5Pom9J9jJhiWgadfXsoQZ/WCt+nqgg8gICrHYy63iAa7sx
8SkHWYW8JaRzRItCEG3N17dwttMjN0jjYsZqK4ZVOMIOjwBWAuxKgKQeSYRRyxoTFPehz1kc6z3F
WVFeR1S9V+Y0ztwC0icvAAAAAAAA


--=-EFpnIfmha2qyz2Tnj3Ia--

--===============2074659164==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============2074659164==--
