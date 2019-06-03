Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 00E9E32D90
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jun 2019 12:09:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19EBE891E3;
	Mon,  3 Jun 2019 10:09:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17786891E3
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Jun 2019 10:09:46 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jun 2019 03:09:45 -0700
X-ExtLoop1: 1
Received: from irsmsx154.ger.corp.intel.com ([163.33.192.96])
 by orsmga002.jf.intel.com with ESMTP; 03 Jun 2019 03:09:44 -0700
Received: from irsmsx112.ger.corp.intel.com (10.108.20.5) by
 IRSMSX154.ger.corp.intel.com (163.33.192.96) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Mon, 3 Jun 2019 11:09:31 +0100
Received: from irsmsx105.ger.corp.intel.com ([169.254.7.155]) by
 irsmsx112.ger.corp.intel.com ([169.254.1.197]) with mapi id 14.03.0415.000;
 Mon, 3 Jun 2019 11:09:31 +0100
From: "Vasilev, Oleg" <oleg.vasilev@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3] drm/i915: add i2c symlink under hdmi
 connector
Thread-Index: AQHVDx2xri/MCJfg1kiJHFg+G9KoPaaJud2A
Date: Mon, 3 Jun 2019 10:09:30 +0000
Message-ID: <86e71fd8943d4d4036a312cb431679ae4e863922.camel@intel.com>
References: <20190520150642.3477-1-oleg.vasilev@intel.com>
In-Reply-To: <20190520150642.3477-1-oleg.vasilev@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.66.161]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915: add i2c symlink under hdmi
 connector
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
Cc: "Nikula,
 Jani" <jani.nikula@intel.com>
Content-Type: multipart/mixed; boundary="===============1064841179=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1064841179==
Content-Language: en-US
Content-Type: multipart/signed; micalg=sha-1;
	protocol="application/x-pkcs7-signature"; boundary="=-FniaJ6eckadlXRn0NFSc"

--=-FniaJ6eckadlXRn0NFSc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Can this be reviewed, please?

On Mon, 2019-05-20 at 18:06 +0300, Oleg Vasilev wrote:
> Currently, the i2c adapter is available only under DP connectors.
>=20
> Add i2c symlink under hdmi connector pointing to i2c adapter in order
> to
> make this behaviour consistent.
>=20
> The initial motivation was to make igt i2c subtest
> patch [1] work on all connectors.
>=20
> [1]: https://patchwork.freedesktop.org/series/60357/
>=20
> v2:
> - Moved symlink remove to unregister (Ville)
> - Clarified commit message (Jani)
> - Changed WARN to DRM_ERROR (Jani)
> - Minor codestyle changes proposed by Jani
>=20
> v3: added blank line
>=20
> Cc: Arkadiusz Hiler <arkadiusz.hiler@intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Oleg Vasilev <oleg.vasilev@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_hdmi.c | 41
> ++++++++++++++++++++++++++++++-
>  1 file changed, 40 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/intel_hdmi.c
> b/drivers/gpu/drm/i915/intel_hdmi.c
> index 2a4086cf2692..a51d1408db7f 100644
> --- a/drivers/gpu/drm/i915/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/intel_hdmi.c
> @@ -2658,6 +2658,36 @@ static void chv_hdmi_pre_enable(struct
> intel_encoder *encoder,
>  	chv_phy_release_cl2_override(encoder);
>  }
> =20
> +static struct i2c_adapter *
> +intel_hdmi_get_i2c_adapter(struct drm_connector *connector)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(connector->dev);
> +	struct intel_hdmi *intel_hdmi =3D intel_attached_hdmi(connector);
> +
> +	return intel_gmbus_get_adapter(dev_priv, intel_hdmi->ddc_bus);
> +}
> +
> +static void intel_hdmi_create_i2c_symlink(struct drm_connector
> *connector)
> +{
> +	struct i2c_adapter *adapter =3D
> intel_hdmi_get_i2c_adapter(connector);
> +	struct kobject *i2c_kobj =3D &adapter->dev.kobj;
> +	struct kobject *connector_kobj =3D &connector->kdev->kobj;
> +	int ret;
> +
> +	ret =3D sysfs_create_link(connector_kobj, i2c_kobj, i2c_kobj-
> >name);
> +	if (ret)
> +		DRM_ERROR("Failed to create i2c symlink (%d)\n", ret);
> +}
> +
> +static void intel_hdmi_remove_i2c_symlink(struct drm_connector
> *connector)
> +{
> +	struct i2c_adapter *adapter =3D
> intel_hdmi_get_i2c_adapter(connector);
> +	struct kobject *i2c_kobj =3D &adapter->dev.kobj;
> +	struct kobject *connector_kobj =3D &connector->kdev->kobj;
> +
> +	sysfs_remove_link(connector_kobj, i2c_kobj->name);
> +}
> +
>  static int
>  intel_hdmi_connector_register(struct drm_connector *connector)
>  {
> @@ -2669,6 +2699,8 @@ intel_hdmi_connector_register(struct
> drm_connector *connector)
> =20
>  	i915_debugfs_connector_add(connector);
> =20
> +	intel_hdmi_create_i2c_symlink(connector);
> +
>  	return ret;
>  }
> =20
> @@ -2680,6 +2712,13 @@ static void intel_hdmi_destroy(struct
> drm_connector *connector)
>  	intel_connector_destroy(connector);
>  }
> =20
> +static void intel_hdmi_connector_unregister(struct drm_connector
> *connector)
> +{
> +	intel_hdmi_remove_i2c_symlink(connector);
> +
> +	intel_connector_unregister(connector);
> +}
> +
>  static const struct drm_connector_funcs intel_hdmi_connector_funcs =3D
> {
>  	.detect =3D intel_hdmi_detect,
>  	.force =3D intel_hdmi_force,
> @@ -2687,7 +2726,7 @@ static const struct drm_connector_funcs
> intel_hdmi_connector_funcs =3D {
>  	.atomic_get_property =3D
> intel_digital_connector_atomic_get_property,
>  	.atomic_set_property =3D
> intel_digital_connector_atomic_set_property,
>  	.late_register =3D intel_hdmi_connector_register,
> -	.early_unregister =3D intel_connector_unregister,
> +	.early_unregister =3D intel_hdmi_connector_unregister,
>  	.destroy =3D intel_hdmi_destroy,
>  	.atomic_destroy_state =3D
> drm_atomic_helper_connector_destroy_state,
>  	.atomic_duplicate_state =3D
> intel_digital_connector_duplicate_state,

--=-FniaJ6eckadlXRn0NFSc
Content-Type: application/x-pkcs7-signature; name="smime.p7s"
Content-Disposition: attachment; filename="smime.p7s"
Content-Transfer-Encoding: base64

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
DdWSiLBgHgGaO0ThuDGV4bz316/+F4Vy7z9hcMbMJs41eGz9tueMREgDNywNIAdzWQIDAQABo4IC
LjCCAiowHQYDVR0OBBYEFP8BYPvxsk8Ryh4Tt/ZBT5qIg2TiMB8GA1UdIwQYMBaAFB5pKrTcKP5H
GE4hCz+8rBEv8Jj1MGUGA1UdHwReMFwwWqBYoFaGVGh0dHA6Ly93d3cuaW50ZWwuY29tL3JlcG9z
aXRvcnkvQ1JML0ludGVsJTIwRXh0ZXJuYWwlMjBCYXNpYyUyMElzc3VpbmclMjBDQSUyMDRBLmNy
bDCBngYIKwYBBQUHAQEEgZEwgY4waQYIKwYBBQUHMAKGXWh0dHA6Ly93d3cuaW50ZWwuY29tL3Jl
cG9zaXRvcnkvY2VydGlmaWNhdGVzL0ludGVsJTIwRXh0ZXJuYWwlMjBCYXNpYyUyMElzc3Vpbmcl
MjBDQSUyMDRBLmNydDAhBggrBgEFBQcwAYYVaHR0cDovL29jc3AuaW50ZWwuY29tMAsGA1UdDwQE
AwIHgDA8BgkrBgEEAYI3FQcELzAtBiUrBgEEAYI3FQiGw4x1hJnlUYP9gSiFjp9TgpHACWeB3r05
lfBDAgFkAgELMB8GA1UdJQQYMBYGCCsGAQUFBwMEBgorBgEEAYI3CgMMMCkGCSsGAQQBgjcVCgQc
MBowCgYIKwYBBQUHAwQwDAYKKwYBBAGCNwoDDDBJBgNVHREEQjBAoCYGCisGAQQBgjcUAgOgGAwW
b2xlZy52YXNpbGV2QGludGVsLmNvbYEWb2xlZy52YXNpbGV2QGludGVsLmNvbTANBgkqhkiG9w0B
AQUFAAOCAQEAffmCWGLFQzB82/D5fYYzYJ3/8uSfKWA4UPCKcqETG1Zb0vl2FPoCjNID1Bw2HNS7
TxYcXvrVDul3vdCQfQhKonJi4ioJJXPPAQBDKKPkVoL9f/maehuXJYjFNsGmHNYADJL+4bDRJJcq
wIQlFVGXvPJFuTSj9HjJAiwH4zehhiEuTTbDhbaaLVrDsEVKCFMj0nvxN4AsYfoBXbscUVLrZs8n
ZIht2nPvz2NlWwxWgl/7+T42CcriuoeLOPWjmaMncOnXaIR/XNpzvCd6N8Xurg9NhzZaCUwLPAX1
fyAyMXRsdpgqKqVNd+jLBGt87zB3FQQOh73i8+vBMqm1BfEoojGCAhcwggITAgEBMIGQMHkxCzAJ
BgNVBAYTAlVTMQswCQYDVQQIEwJDQTEUMBIGA1UEBxMLU2FudGEgQ2xhcmExGjAYBgNVBAoTEUlu
dGVsIENvcnBvcmF0aW9uMSswKQYDVQQDEyJJbnRlbCBFeHRlcm5hbCBCYXNpYyBJc3N1aW5nIENB
IDRBAhMzAADRf+xxDzfl4feqAAAAANF/MAkGBSsOAwIaBQCgXTAYBgkqhkiG9w0BCQMxCwYJKoZI
hvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0xOTA2MDMxMDA5MjlaMCMGCSqGSIb3DQEJBDEWBBTKCU/m
LPZPyEa9O7L+mYLp3GCDNjANBgkqhkiG9w0BAQEFAASCAQAnkzJnJeLts7ZrQsRE6Iu5hXZ7nRAR
UUrK8/ZKis3uDMywFr26GRVWNuzLqdaRktpJSiNuJa0Hhuz2HQMUp79x83dLiGyPIJOSzbnrVTfx
sUABi3p8eipaZplSjwxH2+GPIxJACSIW38cUz7jLJrBqv6Ub2ll/MsvgKCe2hnbgcwKDATWKsN+V
DkmwIDGvE5s/NEBSCt/ac7nR78gTBIls748fBPKaJ+6cEmWLx/699/wHInnJTgFH/3hdADFmbpUE
7KJtwDic0oKOW3BcEgPiVVYX0HLZgPcG3dB94UmsOBZxaplSQ1Jyz0MK8cx0LJXroCtgvz5v6tvH
HwHjzJGOAAAAAAAA


--=-FniaJ6eckadlXRn0NFSc--

--===============1064841179==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============1064841179==--
