Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BB7EBB7B3
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2019 17:18:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC02D6E940;
	Mon, 23 Sep 2019 15:18:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96DEA6E940
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2019 15:18:50 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Sep 2019 08:17:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,540,1559545200"; 
 d="p7s'?scan'208";a="193123993"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga006.jf.intel.com with ESMTP; 23 Sep 2019 08:17:50 -0700
Received: from fmsmsx114.amr.corp.intel.com (10.18.116.8) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 23 Sep 2019 08:17:50 -0700
Received: from fmsmsx103.amr.corp.intel.com ([169.254.2.82]) by
 FMSMSX114.amr.corp.intel.com ([169.254.6.218]) with mapi id 14.03.0439.000;
 Mon, 23 Sep 2019 08:17:49 -0700
From: "Summers, Stuart" <stuart.summers@intel.com>
To: "lucas.de.marchi@gmail.com" <lucas.de.marchi@gmail.com>, "Landwerlin,
 Lionel G" <lionel.g.landwerlin@intel.com>, "chris@chris-wilson.co.uk"
 <chris@chris-wilson.co.uk>
Thread-Topic: [Intel-gfx] [PATCH 2/2] drm/i915/tgl: s/ss/eu fuse reading
 support
Thread-Index: AQHVaggewGBZsVhZd0GTBEuWegxWGac1y0YAgAKhMoCAAXjrAA==
Date: Mon, 23 Sep 2019 15:17:49 +0000
Message-ID: <8da3692aafb7eb0cd4e0379eb1b5025ae503fff9.camel@intel.com>
References: <20190913075137.18476-1-chris@chris-wilson.co.uk>
 <20190913075137.18476-2-chris@chris-wilson.co.uk>
 <CAKi4VA+OUArNz70Zzg6CGLuMEgzkO46EmhGkE_3sO8AO=aHVVQ@mail.gmail.com>
 <a10ec078-f335-1222-d428-bd8ea76a16c7@intel.com>
In-Reply-To: <a10ec078-f335-1222-d428-bd8ea76a16c7@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.165.21.197]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/tgl: s/ss/eu fuse reading
 support
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
Cc: "Thierry, Michel" <michel.thierry@intel.com>,
 "oscar.mateo@intel.com" <oscar.mateo@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: multipart/mixed; boundary="===============1686589923=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1686589923==
Content-Language: en-US
Content-Type: multipart/signed; micalg=sha-1;
	protocol="application/x-pkcs7-signature"; boundary="=-RxGJ583PkTZsbVGOBwt2"

--=-RxGJ583PkTZsbVGOBwt2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, 2019-09-22 at 19:48 +0300, Lionel Landwerlin wrote:
> On 21/09/2019 03:39, Lucas De Marchi wrote:
> > On Fri, Sep 13, 2019 at 12:51 AM Chris Wilson <
> > chris@chris-wilson.co.uk> wrote:
> > > From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> > >=20
> > > Gen12 has dual-subslices (DSS), which compared to gen11 subslices
> > > have
> > > some duplicated resources/paths. Although DSS behave similarly to
> > > 2
> > > subslices, instead of splitting this and presenting userspace
> > > with bits
> > > not directly representative of hardware resources, present
> > > userspace
> > > with a subslice_mask made up of DSS bits instead.
> > >=20
> > > v2: GEM_BUG_ON on mask size (Lionel)
> > >=20
> > > Bspec: 29547
> > > Bspec: 12247
> > > Cc: Kelvin Gardiner <kelvin.gardiner@intel.com>
> > > Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > > Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> > > CC: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> > > Cc: Michel Thierry <michel.thierry@intel.com> #v1
> > > Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> > > Cc: Jos=C3=A9 Roberto de Souza <jose.souza@intel.com>
> > > Signed-off-by: Daniele Ceraolo Spurio <
> > > daniele.ceraolospurio@intel.com>
> > > Signed-off-by: James Ausmus <james.ausmus@intel.com>
> > > Signed-off-by: Oscar Mateo <oscar.mateo@intel.com>
> > > Signed-off-by: Sudeep Dutt <sudeep.dutt@intel.com>
> > > Signed-off-by: Stuart Summers <stuart.summers@intel.com>
> > > Signed-off-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> > > Acked-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> > > ---
> >=20
> > After this I get the correct values for TGL:
> > -  Available Subslice Total: 2
> > -  Available Slice0 subslices: 2
> > -  Available EU Total: 16
> > -  Available EU Per Subslice: 8
> > +  Available Subslice Total: 6
> > +  Available Slice0 subslices: 6
> > +  Available EU Total: 96
> > +  Available EU Per Subslice: 16
> >=20
> > Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
> >=20
> > Lucas De Marchi
>=20
>=20
> Btw, shouldn't we print "Dualsubslice" rather than "Subslice" for
> TGL?

The idea here is that from the userspace perspective, there is still
only one unit which can be utilized in hardware.

Thanks,
Stuart

>=20
>=20
> -Lionel
>=20
>=20
> > >   drivers/gpu/drm/i915/gt/intel_sseu.h     |  9 +--
> > >   drivers/gpu/drm/i915/i915_debugfs.c      |  3 +-
> > >   drivers/gpu/drm/i915/i915_reg.h          |  2 +
> > >   drivers/gpu/drm/i915/intel_device_info.c | 83
> > > ++++++++++++++++++------
> > >   include/uapi/drm/i915_drm.h              |  6 +-
> > >   5 files changed, 72 insertions(+), 31 deletions(-)
> > >=20
> > > diff --git a/drivers/gpu/drm/i915/gt/intel_sseu.h
> > > b/drivers/gpu/drm/i915/gt/intel_sseu.h
> > > index 4070f6ff1db6..d1d225204f09 100644
> > > --- a/drivers/gpu/drm/i915/gt/intel_sseu.h
> > > +++ b/drivers/gpu/drm/i915/gt/intel_sseu.h
> > > @@ -18,12 +18,13 @@ struct drm_i915_private;
> > >   #define GEN_MAX_SUBSLICES      (8) /* ICL upper bound */
> > >   #define GEN_SSEU_STRIDE(max_entries) DIV_ROUND_UP(max_entries,
> > > BITS_PER_BYTE)
> > >   #define GEN_MAX_SUBSLICE_STRIDE
> > > GEN_SSEU_STRIDE(GEN_MAX_SUBSLICES)
> > > -#define GEN_MAX_EUS            (10) /* HSW upper bound */
> > > +#define GEN_MAX_EUS            (16) /* TGL upper bound */
> > >   #define GEN_MAX_EU_STRIDE GEN_SSEU_STRIDE(GEN_MAX_EUS)
> > >=20
> > >   struct sseu_dev_info {
> > >          u8 slice_mask;
> > >          u8 subslice_mask[GEN_MAX_SLICES *
> > > GEN_MAX_SUBSLICE_STRIDE];
> > > +       u8 eu_mask[GEN_MAX_SLICES * GEN_MAX_SUBSLICES *
> > > GEN_MAX_EU_STRIDE];
> > >          u16 eu_total;
> > >          u8 eu_per_subslice;
> > >          u8 min_eu_in_pool;
> > > @@ -40,12 +41,6 @@ struct sseu_dev_info {
> > >=20
> > >          u8 ss_stride;
> > >          u8 eu_stride;
> > > -
> > > -       /* We don't have more than 8 eus per subslice at the
> > > moment and as we
> > > -        * store eus enabled using bits, no need to multiply by
> > > eus per
> > > -        * subslice.
> > > -        */
> > > -       u8 eu_mask[GEN_MAX_SLICES * GEN_MAX_SUBSLICES];
> > >   };
> > >=20
> > >   /*
> > > diff --git a/drivers/gpu/drm/i915/i915_debugfs.c
> > > b/drivers/gpu/drm/i915/i915_debugfs.c
> > > index 43db50095257..b5b449a88cf1 100644
> > > --- a/drivers/gpu/drm/i915/i915_debugfs.c
> > > +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> > > @@ -3823,7 +3823,8 @@ static void gen10_sseu_device_status(struct
> > > drm_i915_private *dev_priv,
> > >                  for (ss =3D 0; ss < info->sseu.max_subslices;
> > > ss++) {
> > >                          unsigned int eu_cnt;
> > >=20
> > > -                       if (!(s_reg[s] &
> > > (GEN9_PGCTL_SS_ACK(ss))))
> > > +                       if (info->sseu.has_subslice_pg &&
> > > +                           !(s_reg[s] &
> > > (GEN9_PGCTL_SS_ACK(ss))))
> > >                                  /* skip disabled subslice */
> > >                                  continue;
> > >=20
> > > diff --git a/drivers/gpu/drm/i915/i915_reg.h
> > > b/drivers/gpu/drm/i915/i915_reg.h
> > > index bf37ecebc82f..47847135a11f 100644
> > > --- a/drivers/gpu/drm/i915/i915_reg.h
> > > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > > @@ -2956,6 +2956,8 @@ static inline bool
> > > i915_mmio_reg_valid(i915_reg_t reg)
> > >=20
> > >   #define GEN11_GT_SUBSLICE_DISABLE _MMIO(0x913C)
> > >=20
> > > +#define GEN12_GT_DSS_ENABLE _MMIO(0x913C)
> > > +
> > >   #define GEN6_BSD_SLEEP_PSMI_CONTROL    _MMIO(0x12050)
> > >   #define   GEN6_BSD_SLEEP_MSG_DISABLE   (1 << 0)
> > >   #define   GEN6_BSD_SLEEP_FLUSH_DISABLE (1 << 2)
> > > diff --git a/drivers/gpu/drm/i915/intel_device_info.c
> > > b/drivers/gpu/drm/i915/intel_device_info.c
> > > index 50b05a5de53b..b91a960b037f 100644
> > > --- a/drivers/gpu/drm/i915/intel_device_info.c
> > > +++ b/drivers/gpu/drm/i915/intel_device_info.c
> > > @@ -182,13 +182,69 @@ static u16 compute_eu_total(const struct
> > > sseu_dev_info *sseu)
> > >          return total;
> > >   }
> > >=20
> > > +static void gen11_compute_sseu_info(struct sseu_dev_info *sseu,
> > > +                                   u8 s_en, u32 ss_en, u16
> > > eu_en)
> > > +{
> > > +       int s, ss;
> > > +
> > > +       /* ss_en represents entire subslice mask across all
> > > slices */
> > > +       GEM_BUG_ON(sseu->max_slices * sseu->max_subslices >
> > > +                  sizeof(ss_en) * BITS_PER_BYTE);
> > > +
> > > +       for (s =3D 0; s < sseu->max_slices; s++) {
> > > +               if ((s_en & BIT(s)) =3D=3D 0)
> > > +                       continue;
> > > +
> > > +               sseu->slice_mask |=3D BIT(s);
> > > +
> > > +               intel_sseu_set_subslices(sseu, s, ss_en);
> > > +
> > > +               for (ss =3D 0; ss < sseu->max_subslices; ss++)
> > > +                       if (intel_sseu_has_subslice(sseu, s, ss))
> > > +                               sseu_set_eus(sseu, s, ss, eu_en);
> > > +       }
> > > +       sseu->eu_per_subslice =3D hweight16(eu_en);
> > > +       sseu->eu_total =3D compute_eu_total(sseu);
> > > +}
> > > +
> > > +static void gen12_sseu_info_init(struct drm_i915_private
> > > *dev_priv)
> > > +{
> > > +       struct sseu_dev_info *sseu =3D &RUNTIME_INFO(dev_priv)-
> > > >sseu;
> > > +       u8 s_en;
> > > +       u32 dss_en;
> > > +       u16 eu_en =3D 0;
> > > +       u8 eu_en_fuse;
> > > +       int eu;
> > > +
> > > +       /*
> > > +        * Gen12 has Dual-Subslices, which behave similarly to 2
> > > gen11 SS.
> > > +        * Instead of splitting these, provide userspace with an
> > > array
> > > +        * of DSS to more closely represent the hardware
> > > resource.
> > > +        */
> > > +       intel_sseu_set_info(sseu, 1, 6, 16);
> > > +
> > > +       s_en =3D I915_READ(GEN11_GT_SLICE_ENABLE) &
> > > GEN11_GT_S_ENA_MASK;
> > > +
> > > +       dss_en =3D I915_READ(GEN12_GT_DSS_ENABLE);
> > > +
> > > +       /* one bit per pair of EUs */
> > > +       eu_en_fuse =3D ~(I915_READ(GEN11_EU_DISABLE) &
> > > GEN11_EU_DIS_MASK);
> > > +       for (eu =3D 0; eu < sseu->max_eus_per_subslice / 2; eu++)
> > > +               if (eu_en_fuse & BIT(eu))
> > > +                       eu_en |=3D BIT(eu * 2) | BIT(eu * 2 + 1);
> > > +
> > > +       gen11_compute_sseu_info(sseu, s_en, dss_en, eu_en);
> > > +
> > > +       /* TGL only supports slice-level power gating */
> > > +       sseu->has_slice_pg =3D 1;
> > > +}
> > > +
> > >   static void gen11_sseu_info_init(struct drm_i915_private
> > > *dev_priv)
> > >   {
> > >          struct sseu_dev_info *sseu =3D &RUNTIME_INFO(dev_priv)-
> > > >sseu;
> > >          u8 s_en;
> > > -       u32 ss_en, ss_en_mask;
> > > +       u32 ss_en;
> > >          u8 eu_en;
> > > -       int s;
> > >=20
> > >          if (IS_ELKHARTLAKE(dev_priv))
> > >                  intel_sseu_set_info(sseu, 1, 4, 8);
> > > @@ -197,26 +253,9 @@ static void gen11_sseu_info_init(struct
> > > drm_i915_private *dev_priv)
> > >=20
> > >          s_en =3D I915_READ(GEN11_GT_SLICE_ENABLE) &
> > > GEN11_GT_S_ENA_MASK;
> > >          ss_en =3D ~I915_READ(GEN11_GT_SUBSLICE_DISABLE);
> > > -       ss_en_mask =3D BIT(sseu->max_subslices) - 1;
> > >          eu_en =3D ~(I915_READ(GEN11_EU_DISABLE) &
> > > GEN11_EU_DIS_MASK);
> > >=20
> > > -       for (s =3D 0; s < sseu->max_slices; s++) {
> > > -               if (s_en & BIT(s)) {
> > > -                       int ss_idx =3D sseu->max_subslices * s;
> > > -                       int ss;
> > > -
> > > -                       sseu->slice_mask |=3D BIT(s);
> > > -
> > > -                       intel_sseu_set_subslices(sseu, s, (ss_en
> > > >> ss_idx) &
> > > -                                                         ss_en_m
> > > ask);
> > > -
> > > -                       for (ss =3D 0; ss < sseu->max_subslices;
> > > ss++)
> > > -                               if (intel_sseu_has_subslice(sseu,
> > > s, ss))
> > > -                                       sseu_set_eus(sseu, s, ss,
> > > eu_en);
> > > -               }
> > > -       }
> > > -       sseu->eu_per_subslice =3D hweight8(eu_en);
> > > -       sseu->eu_total =3D compute_eu_total(sseu);
> > > +       gen11_compute_sseu_info(sseu, s_en, ss_en, eu_en);
> > >=20
> > >          /* ICL has no power gating restrictions. */
> > >          sseu->has_slice_pg =3D 1;
> > > @@ -959,8 +998,10 @@ void intel_device_info_runtime_init(struct
> > > drm_i915_private *dev_priv)
> > >                  gen9_sseu_info_init(dev_priv);
> > >          else if (IS_GEN(dev_priv, 10))
> > >                  gen10_sseu_info_init(dev_priv);
> > > -       else if (INTEL_GEN(dev_priv) >=3D 11)
> > > +       else if (IS_GEN(dev_priv, 11))
> > >                  gen11_sseu_info_init(dev_priv);
> > > +       else if (INTEL_GEN(dev_priv) >=3D 12)
> > > +               gen12_sseu_info_init(dev_priv);
> > >=20
> > >          if (IS_GEN(dev_priv, 6) && intel_vtd_active()) {
> > >                  DRM_INFO("Disabling ppGTT for VT-d support\n");
> > > diff --git a/include/uapi/drm/i915_drm.h
> > > b/include/uapi/drm/i915_drm.h
> > > index 469dc512cca3..30c542144016 100644
> > > --- a/include/uapi/drm/i915_drm.h
> > > +++ b/include/uapi/drm/i915_drm.h
> > > @@ -2033,8 +2033,10 @@ struct drm_i915_query {
> > >    *           (data[X / 8] >> (X % 8)) & 1
> > >    *
> > >    * - the subslice mask for each slice with one bit per subslice
> > > telling
> > > - *   whether a subslice is available. The availability of
> > > subslice Y in slice
> > > - *   X can be queried with the following formula :
> > > + *   whether a subslice is available. Gen12 has dual-subslices,
> > > which are
> > > + *   similar to two gen11 subslices. For gen12, this array
> > > represents dual-
> > > + *   subslices. The availability of subslice Y in slice X can be
> > > queried
> > > + *   with the following formula :
> > >    *
> > >    *           (data[subslice_offset +
> > >    *                 X * subslice_stride +
> > > --
> > > 2.23.0
> > >=20
> > > _______________________________________________
> > > Intel-gfx mailing list
> > > Intel-gfx@lists.freedesktop.org
> > > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> >=20
> >=20
>=20
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--=-RxGJ583PkTZsbVGOBwt2
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
CQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0xOTA5MjMxNTE3NDZaMCMGCSqGSIb3DQEJ
BDEWBBSGaXvD4q/zRcnIFxRX/T1q1YTw6jANBgkqhkiG9w0BAQEFAASCAQCUr/CH/3ZxazIKbWDh
o4/PCIlgGVjXSu9SxwqLkXuGsluMVU9jHNorqk6ibGWKT5IfKkow2JZbJ7hp8dBuE9T2HEbnHrX7
aNdnVS7s61o6BdCwmtj0cdeUA28k2G98DE6ZbRClcxwSQtptqsRjABgvDRRPpnyDLGQBqpwanmoF
b8/W68bwq8F7fMaTD6Mvq/rI8wuSmpiXX0szZeQFkJAd8wkmf8v2vYW2nO9tMmguFrYQbhwjET0t
jrFclySk6FxnL0gWp3ZyVvHehEbPMPo2UzWKCs9Z5fCXg9CA9iZlYtlnNVqPTlGKBEj3X+49KoCo
6ua1FUMCF7q2579jjk82AAAAAAAA


--=-RxGJ583PkTZsbVGOBwt2--

--===============1686589923==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============1686589923==--
