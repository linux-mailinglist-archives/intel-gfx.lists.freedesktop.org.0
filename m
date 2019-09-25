Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D49B9BE8AD
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2019 01:03:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 851756EE34;
	Wed, 25 Sep 2019 23:03:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B920E6EE34
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2019 23:03:32 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Sep 2019 16:03:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,549,1559545200"; 
 d="p7s'?scan'208";a="364479179"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by orsmga005.jf.intel.com with ESMTP; 25 Sep 2019 16:03:30 -0700
Received: from fmsmsx154.amr.corp.intel.com (10.18.116.70) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 25 Sep 2019 16:03:21 -0700
Received: from fmsmsx103.amr.corp.intel.com ([169.254.2.82]) by
 FMSMSX154.amr.corp.intel.com ([169.254.6.48]) with mapi id 14.03.0439.000;
 Wed, 25 Sep 2019 16:03:20 -0700
From: "Summers, Stuart" <stuart.summers@intel.com>
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/huc: fix version parsing from CSS
 header
Thread-Index: AQHVc++wLqqMbcBmGUmpNu+0oBR2aKc9eE0A
Date: Wed, 25 Sep 2019 23:03:20 +0000
Message-ID: <68bc14da224c1e6d4d47ac6f75d79ee9bd09a645.camel@intel.com>
References: <20190925222121.4000-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20190925222121.4000-1-daniele.ceraolospurio@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.165.21.197]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/huc: fix version parsing from CSS
 header
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
Content-Type: multipart/mixed; boundary="===============1622496561=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1622496561==
Content-Language: en-US
Content-Type: multipart/signed; micalg=sha-1;
	protocol="application/x-pkcs7-signature"; boundary="=-9xaZXiw2bowdKzQAzzqO"

--=-9xaZXiw2bowdKzQAzzqO
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2019-09-25 at 15:21 -0700, Daniele Ceraolo Spurio wrote:
> The HuC FW has silently switched to encoding the version the same way
> as
> the GuC FW does, i.e. major.minor.patch instead of just major.minor.
> All
> the current blobs follow the new scheme, but since minor and patch
> are
> both zero there is no difference in the end results and we happily
> load
> them. New binaries, however, will have non-zero values in there, so
> we
> need to make sure to parse them correctly.
>=20
> Signed-off-by: Daniele Ceraolo Spurio <
> daniele.ceraolospurio@intel.com>

I don't have insight into the HuC change, so just taking your word
here. The code below looks sane and is an obvious improvement.

It might be interesting to get a look from someone a little closer to
this for a HuC perspective. With that disclaimer:
Reviewed-by: Stuart Summers <stuart.summers@intel.com>

> Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
> Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c     | 23 ++++------------
> ----
>  drivers/gpu/drm/i915/gt/uc/intel_uc_fw_abi.h |  8 +++----
>  2 files changed, 7 insertions(+), 24 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> index ea9a807abd4f..bb878119f06c 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> @@ -339,25 +339,10 @@ int intel_uc_fw_fetch(struct intel_uc_fw
> *uc_fw, struct drm_i915_private *i915)
>  	}
> =20
>  	/* Get version numbers from the CSS header */
> -	switch (uc_fw->type) {
> -	case INTEL_UC_FW_TYPE_GUC:
> -		uc_fw->major_ver_found =3D
> FIELD_GET(CSS_SW_VERSION_GUC_MAJOR,
> -						   css->sw_version);
> -		uc_fw->minor_ver_found =3D
> FIELD_GET(CSS_SW_VERSION_GUC_MINOR,
> -						   css->sw_version);
> -		break;
> -
> -	case INTEL_UC_FW_TYPE_HUC:
> -		uc_fw->major_ver_found =3D
> FIELD_GET(CSS_SW_VERSION_HUC_MAJOR,
> -						   css->sw_version);
> -		uc_fw->minor_ver_found =3D
> FIELD_GET(CSS_SW_VERSION_HUC_MINOR,
> -						   css->sw_version);
> -		break;
> -
> -	default:
> -		MISSING_CASE(uc_fw->type);
> -		break;
> -	}
> +	uc_fw->major_ver_found =3D FIELD_GET(CSS_SW_VERSION_UC_MAJOR,
> +					   css->sw_version);
> +	uc_fw->minor_ver_found =3D FIELD_GET(CSS_SW_VERSION_UC_MINOR,
> +					   css->sw_version);
> =20
>  	if (uc_fw->major_ver_found !=3D uc_fw->major_ver_wanted ||
>  	    uc_fw->minor_ver_found < uc_fw->minor_ver_wanted) {
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw_abi.h
> b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw_abi.h
> index ae58e8a8c53b..f8f6c91a0df6 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw_abi.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw_abi.h
> @@ -69,11 +69,9 @@ struct uc_css_header {
>  	char username[8];
>  	char buildnumber[12];
>  	u32 sw_version;
> -#define CSS_SW_VERSION_GUC_MAJOR	(0xFF << 16)
> -#define CSS_SW_VERSION_GUC_MINOR	(0xFF << 8)
> -#define CSS_SW_VERSION_GUC_PATCH	(0xFF << 0)
> -#define CSS_SW_VERSION_HUC_MAJOR	(0xFFFF << 16)
> -#define CSS_SW_VERSION_HUC_MINOR	(0xFFFF << 0)
> +#define CSS_SW_VERSION_UC_MAJOR		(0xFF << 16)
> +#define CSS_SW_VERSION_UC_MINOR		(0xFF << 8)
> +#define CSS_SW_VERSION_UC_PATCH		(0xFF << 0)
>  	u32 reserved[14];
>  	u32 header_info;
>  } __packed;

--=-9xaZXiw2bowdKzQAzzqO
Content-Type: application/x-pkcs7-signature; name="smime.p7s"
Content-Disposition: attachment; filename="smime.p7s"
Content-Transfer-Encoding: base64

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
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
CQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0xOTA5MjUyMzAzMTZaMCMGCSqGSIb3DQEJ
BDEWBBR7mJdMTbq02McBJ+OAL2VdtWzWzDANBgkqhkiG9w0BAQEFAASCAQCUmatRZ8Ur3QVWZfB5
lVcOoCe1ZJVf8R2qeccJ7c9lUUZqJ1EiQZNZkj1NnzvlUCOv5RQcdkAkZjXJikjZqh1jk5fdJZI9
0K25T4a0H+iZS1s2TxIqv3pC33+mzFPejrNc6wSBfnOmgA3qy/VloLAXYVPQtiD5qUf/TviqSfhx
pfDTvwVt/Bg8zwJ1w58dqS41Bg3Dvv/4lm2AQy6Ur4eHlfUk3hFvxy0H+mGWJMpvAwoRh0xA8OSD
htZ+rSdZv/LKtzeffEpUS6aow3nBfKHlTWU69ejBym8srQOcOB+Nh+KWwc5bAS6SoOLbU/ttrD2G
D0MUoqFmBBPGofXMRbDQAAAAAAAA


--=-9xaZXiw2bowdKzQAzzqO--

--===============1622496561==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============1622496561==--
