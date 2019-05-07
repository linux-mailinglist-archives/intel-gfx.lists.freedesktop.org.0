Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B79C16D0B
	for <lists+intel-gfx@lfdr.de>; Tue,  7 May 2019 23:19:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B04B66E846;
	Tue,  7 May 2019 21:19:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3FCD6E846
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 May 2019 21:19:28 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 May 2019 14:19:28 -0700
X-ExtLoop1: 1
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga006.jf.intel.com with ESMTP; 07 May 2019 14:19:27 -0700
Received: from fmsmsx111.amr.corp.intel.com (10.18.116.5) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Tue, 7 May 2019 14:19:27 -0700
Received: from fmsmsx106.amr.corp.intel.com ([169.254.5.95]) by
 fmsmsx111.amr.corp.intel.com ([169.254.12.101]) with mapi id 14.03.0415.000;
 Tue, 7 May 2019 14:19:26 -0700
From: "Summers, Stuart" <stuart.summers@intel.com>
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 5/5] drm/i915: Expand subslice mask
Thread-Index: AQHVBQc427Kl5tb8mEGlwOuD1VIJS6Zgl7+AgAAHugCAAADlAA==
Date: Tue, 7 May 2019 21:19:26 +0000
Message-ID: <1a1d0a335cdfbbe7f76f155259ce2bc4c82adfb7.camel@intel.com>
References: <20190503213020.25628-1-stuart.summers@intel.com>
 <20190503213020.25628-6-stuart.summers@intel.com>
 <ea334454-c3af-0deb-b5a2-a744549a7249@intel.com>
 <2fac0fe1df309711846000cfdfbe9019df16bd19.camel@intel.com>
 <00b20669-e4a9-e3eb-5756-49c79a45451c@intel.com>
In-Reply-To: <00b20669-e4a9-e3eb-5756-49c79a45451c@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.54.134.159]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915: Expand subslice mask
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
Content-Type: multipart/mixed; boundary="===============0103126845=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0103126845==
Content-Language: en-US
Content-Type: multipart/signed; micalg=sha-1;
	protocol="application/x-pkcs7-signature"; boundary="=-gm0zX7WWUjSRjr4B5T4O"

--=-gm0zX7WWUjSRjr4B5T4O
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2019-05-07 at 14:16 -0700, Daniele Ceraolo Spurio wrote:
> <snip>
>=20
> > >=20
> > > > --- a/drivers/gpu/drm/i915/intel_device_info.c
> > > > +++ b/drivers/gpu/drm/i915/intel_device_info.c
> > > > @@ -84,17 +84,46 @@ void intel_device_info_dump_flags(const
> > > > struct
> > > > intel_device_info *info,
> > > >    #undef PRINT_FLAG
> > > >    }
> > > >   =20
> > > > +#define SS_STR_MAX_SIZE (GEN_MAX_SUBSLICE_STRIDE * 2 + 1)
> > > > +
> > > > +static char *
> > > > +subslice_per_slice_str(char *buf, u8 size, const struct
> > > > sseu_dev_info *sseu,
> > > > +		       u8 slice)
> > > > +{
> > > > +	int i;
> > > > +	u8 ss_offset =3D slice * sseu->ss_stride;
> > > > +
> > > > +	GEM_BUG_ON(slice >=3D sseu->max_slices);
> > > > +
> > > > +	/* Two ASCII character hex plus null terminator */
> > > > +	GEM_BUG_ON(size < sseu->ss_stride * 2 + 1);
> > > > +
> > > > +	memset(buf, 0, size);
> > > > +
> > > > +	/*
> > > > +	 * Print subslice information in reverse order to match
> > > > +	 * userspace expectations.
> > > > +	 */
> > > > +	for (i =3D 0; i < sseu->ss_stride; i++)
> > > > +		sprintf(&buf[i * 2], "%02x",
> > > > +			sseu->subslice_mask[ss_offset + sseu-
> > > > >ss_stride
> > > > -
> > > > +					    (i + 1)]);
> > > > +
> > > > +	return buf;
> > > > +}
> > > > +
> > > >    static void sseu_dump(const struct sseu_dev_info *sseu,
> > > > struct
> > > > drm_printer *p)
> > > >    {
> > > >    	int s;
> > > > +	char buf[SS_STR_MAX_SIZE];
> > > >   =20
> > > >    	drm_printf(p, "slice total: %u, mask=3D%04x\n",
> > > >    		   hweight8(sseu->slice_mask), sseu-
> > > > >slice_mask);
> > > >    	drm_printf(p, "subslice total: %u\n",
> > > > intel_sseu_subslice_total(sseu));
> > > >    	for (s =3D 0; s < sseu->max_slices; s++) {
> > > > -		drm_printf(p, "slice%d: %u subslices,
> > > > mask=3D%04x\n",
> > > > +		drm_printf(p, "slice%d: %u subslices,
> > > > mask=3D%s\n",
> > > >    			   s,
> > > > intel_sseu_subslices_per_slice(sseu, s),
> > > > -			   sseu->subslice_mask[s]);
> > > > +			   subslice_per_slice_str(buf,
> > > > ARRAY_SIZE(buf),
> > > > sseu, s));
> > >=20
> > > Now that we have intel_sseu_get_subslices() can't we just print
> > > the
> > > return from that instead of using the buffer?
> >=20
> > I personally would prefer we keep the stringify function as it
> > gives a
> > little more flexibility. Do you have a strong preference to move to
> > a
> > direct printk formatted string?
> >=20
>=20
> I do not, it just seemed like duplication since you're not really
> using=20
> any extra formatting or other flexibility in filling the buffer.
> This=20
> isn't a lot of code, so maybe we can switch to just using the u32
> for=20
> now and add this back if/when we do require the flexibility?

Makes sense and thanks for the feedback. I'll revert back to the printk
format.

>=20
> > >=20
> > >=20
> > > >    	}
> > > >    	drm_printf(p, "EU total: %u\n", sseu->eu_total);
> > > >    	drm_printf(p, "EU per subslice: %u\n", sseu-
> > > > >eu_per_subslice);
> > >=20
> > > <snip>
> > >=20
> > > > @@ -555,6 +570,7 @@ static void haswell_sseu_info_init(struct
> > > > drm_i915_private *dev_priv)
> > > >    	struct sseu_dev_info *sseu =3D &RUNTIME_INFO(dev_priv)-
> > > > >sseu;
> > > >    	u32 fuse1;
> > > >    	int s, ss;
> > > > +	u32 subslice_mask;
> > > >   =20
> > > >    	/*
> > > >    	 * There isn't a register to tell us how many
> > > > slices/subslices.
> > > > We
> > > > @@ -566,22 +582,18 @@ static void haswell_sseu_info_init(struct
> > > > drm_i915_private *dev_priv)
> > > >    		/* fall through */
> > > >    	case 1:
> > > >    		sseu->slice_mask =3D BIT(0);
> > > > -		sseu->subslice_mask[0] =3D BIT(0);
> > > > +		subslice_mask =3D BIT(0);
> > > >    		break;
> > > >    	case 2:
> > > >    		sseu->slice_mask =3D BIT(0);
> > > > -		sseu->subslice_mask[0] =3D BIT(0) | BIT(1);
> > > > +		subslice_mask =3D BIT(0) | BIT(1);
> > > >    		break;
> > > >    	case 3:
> > > >    		sseu->slice_mask =3D BIT(0) | BIT(1);
> > > > -		sseu->subslice_mask[0] =3D BIT(0) | BIT(1);
> > > > -		sseu->subslice_mask[1] =3D BIT(0) | BIT(1);
> > > > +		subslice_mask =3D BIT(0) | BIT(1);
> > > >    		break;
> > > >    	}
> > > >   =20
> > > > -	sseu->max_slices =3D hweight8(sseu->slice_mask);
> > > > -	sseu->max_subslices =3D hweight8(sseu->subslice_mask[0]);
> > > > -
> > > >    	fuse1 =3D I915_READ(HSW_PAVP_FUSE1);
> > > >    	switch ((fuse1 & HSW_F1_EU_DIS_MASK) >>
> > > > HSW_F1_EU_DIS_SHIFT) {
> > > >    	default:
> > > > @@ -598,9 +610,14 @@ static void haswell_sseu_info_init(struct
> > > > drm_i915_private *dev_priv)
> > > >    		sseu->eu_per_subslice =3D 6;
> > > >    		break;
> > > >    	}
> > > > -	sseu->max_eus_per_subslice =3D sseu->eu_per_subslice;
> > > > +
> > > > +	intel_sseu_set_info(sseu, hweight8(sseu->slice_mask),
> > > > +			    hweight8(subslice_mask),
> > > > +			    sseu->eu_per_subslice);
> > >=20
> > > I'd still prefer this to use a local variable so that we always
> > > only
> > > set
> > > sseu->eu_per_subslice from within intel_sseu_set_info.
> >=20
> > So the reason I kept this is in intel_sseu_set_info we are really
> > just
> > setting the max_eus_per_subslice, not the eu_per_subslice. Are you
> > saying you'd also like to move the code that sets eu_per_subslice
> > in
> > each generation's handler to local variables and/or just passed
> > directly as an argument to intel_sseu_set_info?
>=20
> My bad, I confused eu_per_subslice and max_eus_per_subslice as the
> same=20
> variable. Just ignore this comment :)

No problem, thanks!

-Stuart

>=20
> Daniele
>=20
> >=20
> > I.e. should we use intel_sseu_set_info to set most or all of the
> > members of the intel_sseu structure? Or is it OK to keep the
> > current
> > implementation of only using this to set default maximums per
> > platform?
> >=20
> > -Stuart
> >=20
> > >=20
> > > Daniele
> > >=20
> > > >   =20
> > > >    	for (s =3D 0; s < sseu->max_slices; s++) {
> > > > +		intel_sseu_set_subslices(sseu, s,
> > > > subslice_mask);
> > > > +
> > > >    		for (ss =3D 0; ss < sseu->max_subslices; ss++) {
> > > >    			intel_sseu_set_eus(sseu, s, ss,
> > > >    					   (1UL << sseu-
> > > > > eu_per_subslice) - 1);

--=-gm0zX7WWUjSRjr4B5T4O
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
CQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0xOTA1MDcyMTE5MjNaMCMGCSqGSIb3DQEJ
BDEWBBRWGNRv/XXaCj/QuMEbdQesnz4ueTANBgkqhkiG9w0BAQEFAASCAQBFut9pAvAnNe1umiHx
l2Gxo6fA5K6J+btkN9K9j+0dvPc2+JrLrwAkrBJJ82hMCBG52dmOzyEJB45SnC2YyDfLa4ooaokE
hSeYhHHQ521xTIKY/XsB+0hnQfoX1I4Y5yl7S0OPsPuDVWzQ+9UB+FXHHoWkzlQNtBTKWvaB7eJV
JBZDq3d9Zfotnnjsf8K/oe3kTEkhI4x54rk+TEGejp6lko+mDIiK/olwCOhgMaKSgEGTmyybOcUL
wNbQC33FzIIq9ao+wK+774zxfyKDKHVnJFjhDhP5lJN4PnEdqPJvciHHsCf+KyIatEWiuiNsdo9g
ofQD87SgH6ih+2nMtQVBAAAAAAAA


--=-gm0zX7WWUjSRjr4B5T4O--

--===============0103126845==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============0103126845==--
