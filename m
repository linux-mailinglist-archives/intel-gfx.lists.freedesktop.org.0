Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09ABF71CF1
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jul 2019 18:30:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52B286E2F8;
	Tue, 23 Jul 2019 16:30:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06ABD6E2F8
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jul 2019 16:30:32 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jul 2019 09:30:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,299,1559545200"; 
 d="p7s'?scan'208";a="172003511"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga003.jf.intel.com with ESMTP; 23 Jul 2019 09:30:31 -0700
Received: from fmsmsx116.amr.corp.intel.com (10.18.116.20) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 23 Jul 2019 09:30:31 -0700
Received: from fmsmsx103.amr.corp.intel.com ([169.254.2.66]) by
 fmsmsx116.amr.corp.intel.com ([169.254.2.161]) with mapi id 14.03.0439.000;
 Tue, 23 Jul 2019 09:30:31 -0700
From: "Summers, Stuart" <stuart.summers@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [PATCH 20/22] drm/i915: Move MOCS setup to intel_mocs.c
Thread-Index: AQHVOReu5G5FBQ3PekWO2RwD7JSoeKbY6wiA
Date: Tue, 23 Jul 2019 16:30:30 +0000
Message-ID: <212312f010e2d67b267ba178e82f1f52fa54340d.camel@intel.com>
References: <20190713010940.17711-1-lucas.demarchi@intel.com>
 <20190713010940.17711-21-lucas.demarchi@intel.com>
In-Reply-To: <20190713010940.17711-21-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.54.134.159]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 20/22] drm/i915: Move MOCS setup to
 intel_mocs.c
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
Content-Type: multipart/mixed; boundary="===============1951829343=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1951829343==
Content-Language: en-US
Content-Type: multipart/signed; micalg=sha-1;
	protocol="application/x-pkcs7-signature"; boundary="=-fM4fUgoTj6DA3mg4NaHL"

--=-fM4fUgoTj6DA3mg4NaHL
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2019-07-12 at 18:09 -0700, Lucas De Marchi wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>=20
> Hide the details of MOCS setup from i915_gem by moving both current
> calls
> into one in intel_mocs_init.
>=20
> Cc: Stuart Summers <stuart.summers@intel.com>
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Reviewed-by: Stuart Summers <stuart.summers@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_mocs.c | 15 +++++++++++----
>  drivers/gpu/drm/i915/gt/intel_mocs.h |  3 +--
>  drivers/gpu/drm/i915/i915_gem.c      |  3 +--
>  3 files changed, 13 insertions(+), 8 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c
> b/drivers/gpu/drm/i915/gt/intel_mocs.c
> index 365d8ff11f23..5cd18768b5df 100644
> --- a/drivers/gpu/drm/i915/gt/intel_mocs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
> @@ -399,14 +399,13 @@ void intel_mocs_init_engine(struct
> intel_engine_cs *engine)
>   *
>   * This function initializes the MOCS global registers.
>   */
> -void intel_mocs_init_global(struct intel_gt *gt)
> +static void intel_mocs_init_global(struct intel_gt *gt)
>  {
>  	struct intel_uncore *uncore =3D gt->uncore;
>  	struct drm_i915_mocs_table table;
>  	unsigned int index;
> =20
> -	if (!HAS_GLOBAL_MOCS_REGISTERS(gt->i915))
> -		return;
> +	GEM_BUG_ON(!HAS_GLOBAL_MOCS_REGISTERS(gt->i915));
> =20
>  	if (!get_mocs_settings(gt, &table))
>  		return;
> @@ -575,7 +574,7 @@ static int emit_mocs_l3cc_table(struct
> i915_request *rq,
>   *
>   * Return: Nothing.
>   */
> -void intel_mocs_init_l3cc_table(struct intel_gt *gt)
> +static void intel_mocs_init_l3cc_table(struct intel_gt *gt)
>  {
>  	struct intel_uncore *uncore =3D gt->uncore;
>  	struct drm_i915_mocs_table table;
> @@ -653,3 +652,11 @@ int intel_rcs_context_init_mocs(struct
> i915_request *rq)
> =20
>  	return 0;
>  }
> +
> +void intel_mocs_init(struct intel_gt *gt)
> +{
> +	intel_mocs_init_l3cc_table(gt);
> +
> +	if (HAS_GLOBAL_MOCS_REGISTERS(gt->i915))
> +		intel_mocs_init_global(gt);
> +}
> diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.h
> b/drivers/gpu/drm/i915/gt/intel_mocs.h
> index aa3a2df07c82..2c5cbf213819 100644
> --- a/drivers/gpu/drm/i915/gt/intel_mocs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_mocs.h
> @@ -55,8 +55,7 @@ struct intel_engine_cs;
>  struct intel_gt;
> =20
>  int intel_rcs_context_init_mocs(struct i915_request *rq);
> -void intel_mocs_init_l3cc_table(struct intel_gt *gt);
> -void intel_mocs_init_global(struct intel_gt *gt);
> +void intel_mocs_init(struct intel_gt *gt);
>  void intel_mocs_init_engine(struct intel_engine_cs *engine);
> =20
>  #endif
> diff --git a/drivers/gpu/drm/i915/i915_gem.c
> b/drivers/gpu/drm/i915/i915_gem.c
> index d23e156f6659..7980ee9bf8a8 100644
> --- a/drivers/gpu/drm/i915/i915_gem.c
> +++ b/drivers/gpu/drm/i915/i915_gem.c
> @@ -1254,8 +1254,7 @@ int i915_gem_init_hw(struct drm_i915_private
> *i915)
>  		goto out;
>  	}
> =20
> -	intel_mocs_init_global(gt);
> -	intel_mocs_init_l3cc_table(gt);
> +	intel_mocs_init(gt);
> =20
>  	intel_engines_set_scheduler_caps(i915);
> =20

--=-fM4fUgoTj6DA3mg4NaHL
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
CQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0xOTA3MjMxNjMwMjdaMCMGCSqGSIb3DQEJ
BDEWBBRbhIKcnYjpiQVSrYsi38mI8sXJ/DANBgkqhkiG9w0BAQEFAASCAQCQAqU34qHybc3Hr61N
PYRfVxRpm55ekUoQlk1H9kdAqC0D8HmPmgNICfYu9yGCcY2R5tiRwqmcdqp6Mx/WALLhLoc5mMvG
4Ns9arOpQapVAw5gVQEz6gidX5KVNyquTo24sKOygI7CEjXnDwR+xaGjDEJOox2OIBK8lXnbtt+/
rbI32oLaTBJtg2MQDHtbovvtrfFYiyHfjTPDyLsHM9GIX/u5oK0GbXGJIuuKEvO/6f1mOwKmeP7H
+6Dx59DIqEmVy57GMw7GwNZIkVnMYsrPui27T47Y4QaYRqjwQD9OYYIJsBfd85wSer/8m+wPEQxc
yy3gzto2tu5SFpPNyviYAAAAAAAA


--=-fM4fUgoTj6DA3mg4NaHL--

--===============1951829343==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============1951829343==--
