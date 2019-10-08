Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 47278CFD75
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2019 17:21:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29B666E833;
	Tue,  8 Oct 2019 15:21:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A0226E833
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Oct 2019 15:21:05 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Oct 2019 08:21:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,270,1566889200"; 
 d="p7s'?scan'208";a="345062622"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga004.jf.intel.com with ESMTP; 08 Oct 2019 08:21:05 -0700
Received: from fmsmsx114.amr.corp.intel.com (10.18.116.8) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 8 Oct 2019 08:21:04 -0700
Received: from fmsmsx103.amr.corp.intel.com ([169.254.2.173]) by
 FMSMSX114.amr.corp.intel.com ([169.254.6.30]) with mapi id 14.03.0439.000;
 Tue, 8 Oct 2019 08:21:04 -0700
From: "Summers, Stuart" <stuart.summers@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "chris@chris-wilson.co.uk" <chris@chris-wilson.co.uk>
Thread-Topic: [PATCH 1/2] drm/i915: Use a modparam to restrict exposed engines
Thread-Index: AQHVeF/EbIxMg28gOkSwcAYWWjEbFadRXJKA
Date: Tue, 8 Oct 2019 15:21:03 +0000
Message-ID: <a9b0a7fce2994b9771493f3d0ccec86de2c5e185.camel@intel.com>
References: <20191001135403.2026-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191001135403.2026-1-chris@chris-wilson.co.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.165.21.197]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Use a modparam to restrict
 exposed engines
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
Content-Type: multipart/mixed; boundary="===============1490184629=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1490184629==
Content-Language: en-US
Content-Type: multipart/signed; micalg=sha-1;
	protocol="application/x-pkcs7-signature"; boundary="=-OjBfavHCpnA5SdRbSobf"

--=-OjBfavHCpnA5SdRbSobf
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2019-10-01 at 14:54 +0100, Chris Wilson wrote:
> Allow the user to restrict the available set of engines via a module
> parameter.
>=20
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Stuart Summers <stuart.summers@intel.com>
> Cc: Andi Shyti <andi.shyti@intel.com>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Martin Peres <martin.peres@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_engine_cs.c | 35 ++++++++++++++++-----
> --
>  drivers/gpu/drm/i915/i915_gem.c           |  5 ++++
>  drivers/gpu/drm/i915/i915_params.c        |  4 +++
>  drivers/gpu/drm/i915/i915_params.h        |  1 +
>  4 files changed, 35 insertions(+), 10 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> index 80fd072ac719..690da64ec256 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -389,6 +389,29 @@ void intel_engines_cleanup(struct
> drm_i915_private *i915)
>  	}
>  }
> =20
> +static bool engine_available(struct drm_i915_private *i915, int id)
> +{
> +	/* uAPI -- modparam bits must be consistent between kernels */
> +	static const unsigned int param_bit[] =3D {
> +		[RCS0]  =3D BIT(0),
> +		[VCS0]  =3D BIT(1),
> +		[BCS0]  =3D BIT(2),
> +		[VECS0] =3D BIT(3),
> +		[VCS1]  =3D BIT(4),
> +		[VCS2]  =3D BIT(5),
> +		[VCS3]  =3D BIT(6),
> +		[VECS1] =3D BIT(7),
> +	};

To be a little controversial here... I don't see how this is better
than just matching to our currently available engines for the platform.
The user will still need to look in the code to determine what engines
are available. I understand this restricts us to a static module
parameter across kernel revisions, but at the same time, this will add
a maintenance burden for an unsafe feature, something not used
regularly. And it seems like this will be easy to get stale over time.

> +
> +	if (!HAS_ENGINE(i915, id))
> +		return false;
> +
> +	if (!(i915_modparams.engines & param_bit[id]))
> +		return false;
> +
> +	return true;
> +}
> +
>  /**
>   * intel_engines_init_mmio() - allocate and prepare the Engine
> Command Streamers
>   * @i915: the i915 device
> @@ -397,7 +420,6 @@ void intel_engines_cleanup(struct
> drm_i915_private *i915)
>   */
>  int intel_engines_init_mmio(struct drm_i915_private *i915)
>  {
> -	struct intel_device_info *device_info =3D
> mkwrite_device_info(i915);
>  	const unsigned int engine_mask =3D INTEL_INFO(i915)->engine_mask;
>  	unsigned int mask =3D 0;
>  	unsigned int i;
> @@ -411,7 +433,7 @@ int intel_engines_init_mmio(struct
> drm_i915_private *i915)
>  		return -ENODEV;
> =20
>  	for (i =3D 0; i < ARRAY_SIZE(intel_engines); i++) {
> -		if (!HAS_ENGINE(i915, i))
> +		if (!engine_available(i915, i))
>  			continue;
> =20
>  		err =3D intel_engine_setup(&i915->gt, i);
> @@ -421,14 +443,7 @@ int intel_engines_init_mmio(struct
> drm_i915_private *i915)
>  		mask |=3D BIT(i);
>  	}
> =20
> -	/*
> -	 * Catch failures to update intel_engines table when the new
> engines
> -	 * are added to the driver by a warning and disabling the
> forgotten
> -	 * engines.
> -	 */
> -	if (WARN_ON(mask !=3D engine_mask))
> -		device_info->engine_mask =3D mask;
> -
> +	mkwrite_device_info(i915)->engine_mask =3D mask;
>  	RUNTIME_INFO(i915)->num_engines =3D hweight32(mask);
> =20
>  	intel_gt_check_and_clear_faults(&i915->gt);
> diff --git a/drivers/gpu/drm/i915/i915_gem.c
> b/drivers/gpu/drm/i915/i915_gem.c
> index 3d3fda4cae99..bb25731466a9 100644
> --- a/drivers/gpu/drm/i915/i915_gem.c
> +++ b/drivers/gpu/drm/i915/i915_gem.c
> @@ -1308,6 +1308,11 @@ int i915_gem_init(struct drm_i915_private
> *dev_priv)
>  {
>  	int ret;
> =20
> +	if (!RUNTIME_INFO(dev_priv)->num_engines) {
> +		intel_gt_set_wedged_on_init(&dev_priv->gt);
> +		return 0;
> +	}

Wait, why do we want to force a wedge if no engines are present? This
seems like an intentional limitation if we get to this point, so it
doesn't seem necessary to me to force this.

> +
>  	/* We need to fallback to 4K pages if host doesn't support huge
> gtt. */
>  	if (intel_vgpu_active(dev_priv) &&
> !intel_vgpu_has_huge_gtt(dev_priv))
>  		mkwrite_device_info(dev_priv)->page_sizes =3D
> diff --git a/drivers/gpu/drm/i915/i915_params.c
> b/drivers/gpu/drm/i915/i915_params.c
> index 296452f9efe4..27813bd79aa8 100644
> --- a/drivers/gpu/drm/i915/i915_params.c
> +++ b/drivers/gpu/drm/i915/i915_params.c
> @@ -44,6 +44,10 @@ i915_param_named(modeset, int, 0400,
>  	"Use kernel modesetting [KMS] (0=3Ddisable, "
>  	"1=3Don, -1=3Dforce vga console preference [default])");
> =20
> +i915_param_named(engines, uint, 0400,
> +	"Only expose selected command streamers [GPU engines]
> (0=3Ddisable GPU, "
> +	"-1/0xffffffff enable all [default]). Each bit corresponds to a
> different phyiscal engine: 0=3DRCS0, 1=3DVCS0, 2=3DBCS0, 3=3DVECS0, 4=3DV=
CS1,
> 5=3DVCS2, 6=3DVCS3, 7=3DVECS1");

Shouldn't this be unsafe?

Thanks,
Stuart

> +
>  i915_param_named_unsafe(enable_dc, int, 0400,
>  	"Enable power-saving display C-states. "
>  	"(-1=3Dauto [default]; 0=3Ddisable; 1=3Dup to DC5; 2=3Dup to DC6)");
> diff --git a/drivers/gpu/drm/i915/i915_params.h
> b/drivers/gpu/drm/i915/i915_params.h
> index d29ade3b7de6..f876db78a59a 100644
> --- a/drivers/gpu/drm/i915/i915_params.h
> +++ b/drivers/gpu/drm/i915/i915_params.h
> @@ -45,6 +45,7 @@ struct drm_printer;
>  #define I915_PARAMS_FOR_EACH(param) \
>  	param(char *, vbt_firmware, NULL) \
>  	param(int, modeset, -1) \
> +	param(unsigned int, engines, -1) \
>  	param(int, lvds_channel_mode, 0) \
>  	param(int, panel_use_ssc, -1) \
>  	param(int, vbt_sdvo_panel_type, -1) \

--=-OjBfavHCpnA5SdRbSobf
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
CQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0xOTEwMDgxNTIwNTlaMCMGCSqGSIb3DQEJ
BDEWBBQeX1hFKgWT3YE5Bh7Wq6k+4C8y2jANBgkqhkiG9w0BAQEFAASCAQBCKReOdO+VV9APeUEJ
Zu9B9txA6oWwlOwjZusdohcLvRLOpsMyD1FMo+y80MBPXvfz5XM6uAVJGpeiPPjGVryTqUAtqjD7
xTPjh+X/hxUuacSkDsdzEdWHa11zDeVbjTx3uk8lFns9NzksRO2zFsLKQS9vVOAT2435+ecAoLB6
QJdB8FJ+S/1i/JuxB2rzVa1oOYRwT42igIJA4cK1NyQ+3GwiB+V2BwhBOZx6DbLAOiG7Aq42t+5M
TgdG0P8Vno2CjpuGniNt5sCAdR+vyY4Sugu8IL/PNVh2ZpV+561yViMcLvVGmRI60b4gJ1ssloiF
bCRcg31ZbPsgndu1MCrCAAAAAAAA


--=-OjBfavHCpnA5SdRbSobf--

--===============1490184629==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============1490184629==--
