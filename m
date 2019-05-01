Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 59BDE10D52
	for <lists+intel-gfx@lfdr.de>; Wed,  1 May 2019 21:40:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27C1189065;
	Wed,  1 May 2019 19:40:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4682889065
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 May 2019 19:40:39 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 May 2019 12:40:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,418,1549958400"; 
 d="p7s'?scan'208";a="166674184"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by fmsmga002.fm.intel.com with ESMTP; 01 May 2019 12:40:38 -0700
Received: from fmsmsx151.amr.corp.intel.com (10.18.125.4) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Wed, 1 May 2019 12:40:38 -0700
Received: from fmsmsx106.amr.corp.intel.com ([169.254.5.95]) by
 FMSMSX151.amr.corp.intel.com ([169.254.7.99]) with mapi id 14.03.0415.000;
 Wed, 1 May 2019 12:40:38 -0700
From: "Summers, Stuart" <stuart.summers@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "tvrtko.ursulin@linux.intel.com" <tvrtko.ursulin@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 6/6] drm/i915: Expand subslice mask
Thread-Index: AQHVADN3mqw3OsQuuEWaGUsAgIqUg6ZXCp+AgAAB5QCAABPqAA==
Date: Wed, 1 May 2019 19:40:37 +0000
Message-ID: <42093b46935dc1968b34445aefbdfd9ed1b25e54.camel@intel.com>
References: <20190501153450.30494-1-stuart.summers@intel.com>
 <20190501153450.30494-7-stuart.summers@intel.com>
 <fc2860f6-4393-8116-65ce-7de4ff4ae398@linux.intel.com>
 <fb533050-8b93-283f-4b19-de4d64ba5054@linux.intel.com>
In-Reply-To: <fb533050-8b93-283f-4b19-de4d64ba5054@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.54.134.159]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 6/6] drm/i915: Expand subslice mask
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
Content-Type: multipart/mixed; boundary="===============0516840655=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0516840655==
Content-Language: en-US
Content-Type: multipart/signed; micalg=sha-1;
	protocol="application/x-pkcs7-signature"; boundary="=-CsEGtw3vvY5OI46PHyj+"

--=-CsEGtw3vvY5OI46PHyj+
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2019-05-01 at 19:29 +0100, Tvrtko Ursulin wrote:
> On 01/05/2019 19:22, Tvrtko Ursulin wrote:
>=20
> [snip]
>=20
> > > +#define SS_STR_MAX_SIZE (GEN_MAX_SUBSLICE_STRIDE * 2)
> > > +
> > > +static u8 *
> > > +subslice_per_slice_str(u8 *buf, const struct sseu_dev_info
> > > *sseu, u8=20
> > > slice)
> > > +{
> > > +    int i;
> > > +    u8 ss_offset =3D slice * sseu->ss_stride;
> > > +
> > > +    GEM_BUG_ON(slice >=3D sseu->max_slices);
> > > +
> > > +    memset(buf, 0, SS_STR_MAX_SIZE);
> >=20
> > I suggest a more hardened approach of caller passing in the buffer
> > size,=20
> > since it is their buffer.

Not a bad idea. I had the define to make this explicit and handle the
future cases, but probably right it's better to isolate this. I'll make
the change in the next series update.

>=20
> Having said this..
>=20
> > > +
> > > +    /*
> > > +     * Print subslice information in reverse order to match
> > > +     * userspace expectations.
> > > +     */
> > > +    for (i =3D 0; i < sseu->ss_stride; i++)
> > > +        sprintf(&buf[i * 2], "%02x",
> > > +            sseu->subslice_mask[ss_offset + sseu->ss_stride -
> > > +                        (i + 1)]);
>=20
> ...sprintf also needs to check against overflowing the buffer.=20
> (Relationship between loop boundary (ss_stride) and buffer size is a
> bit=20
> decoupled.)

I'll add the check, makes sense.

>=20
> And buffer should probably be char *.

No problem. I'll make this change. Thanks for the feedback!

- Stuart

>=20
> Regards,
>=20
> Tvrtko
>=20
> > > +
> > > +    return buf;
> > > +}
> > > +
> > >   static void sseu_dump(const struct sseu_dev_info *sseu, struct=20
> > > drm_printer *p)
> > >   {
> > >       int s;
> > > +    u8 buf[SS_STR_MAX_SIZE];
> > >       drm_printf(p, "slice total: %u, mask=3D%04x\n",
> > >              hweight8(sseu->slice_mask), sseu->slice_mask);
> > >       drm_printf(p, "subslice total: %u\n",=20
> > > intel_sseu_subslice_total(sseu));
> > >       for (s =3D 0; s < sseu->max_slices; s++) {
> > > -        drm_printf(p, "slice%d: %u subslices, mask=3D%04x\n",
> > > +        drm_printf(p, "slice%d: %u subslices, mask=3D%s\n",
> > >                  s, intel_sseu_subslices_per_slice(sseu, s),
> > > -               sseu->subslice_mask[s]);
> > > +               subslice_per_slice_str(buf, sseu, s));
> > >       }
> > >       drm_printf(p, "EU total: %u\n", sseu->eu_total);
> > >       drm_printf(p, "EU per subslice: %u\n", sseu-
> > > >eu_per_subslice);
> > > @@ -118,6 +143,7 @@ void intel_device_info_dump_topology(const
> > > struct=20
> > > sseu_dev_info *sseu,
> > >                        struct drm_printer *p)
> > >   {
> > >       int s, ss;
> > > +    u8 buf[SS_STR_MAX_SIZE];
> > >       if (sseu->max_slices =3D=3D 0) {
> > >           drm_printf(p, "Unavailable\n");
> > > @@ -125,9 +151,9 @@ void intel_device_info_dump_topology(const
> > > struct=20
> > > sseu_dev_info *sseu,
> > >       }
> > >       for (s =3D 0; s < sseu->max_slices; s++) {
> > > -        drm_printf(p, "slice%d: %u subslice(s) (0x%hhx):\n",
> > > +        drm_printf(p, "slice%d: %u subslice(s) (0x%s):\n",
> > >                  s, intel_sseu_subslices_per_slice(sseu, s),
> > > -               sseu->subslice_mask[s]);
> > > +               subslice_per_slice_str(buf, sseu, s));
> > >           for (ss =3D 0; ss < sseu->max_subslices; ss++) {
> > >               u16 enabled_eus =3D intel_sseu_get_eus(sseu, s, ss);
> > > @@ -156,15 +182,10 @@ static void gen11_sseu_info_init(struct=20
> > > drm_i915_private *dev_priv)
> > >       u8 eu_en;
> > >       int s;
> > > -    if (IS_ELKHARTLAKE(dev_priv)) {
> > > -        sseu->max_slices =3D 1;
> > > -        sseu->max_subslices =3D 4;
> > > -        sseu->max_eus_per_subslice =3D 8;
> > > -    } else {
> > > -        sseu->max_slices =3D 1;
> > > -        sseu->max_subslices =3D 8;
> > > -        sseu->max_eus_per_subslice =3D 8;
> > > -    }
> > > +    if (IS_ELKHARTLAKE(dev_priv))
> > > +        intel_sseu_set_info(sseu, 1, 4, 8);
> > > +    else
> > > +        intel_sseu_set_info(sseu, 1, 8, 8);
> > >       s_en =3D I915_READ(GEN11_GT_SLICE_ENABLE) &
> > > GEN11_GT_S_ENA_MASK;
> > >       ss_en =3D ~I915_READ(GEN11_GT_SUBSLICE_DISABLE);
> > > @@ -177,9 +198,11 @@ static void gen11_sseu_info_init(struct=20
> > > drm_i915_private *dev_priv)
> > >               int ss;
> > >               sseu->slice_mask |=3D BIT(s);
> > > -            sseu->subslice_mask[s] =3D (ss_en >> ss_idx) &
> > > ss_en_mask;
> > > +            sseu->subslice_mask[s * sseu->ss_stride] =3D
> > > +                (ss_en >> ss_idx) & ss_en_mask;
> > >               for (ss =3D 0; ss < sseu->max_subslices; ss++) {
> > > -                if (sseu->subslice_mask[s] & BIT(ss))
> > > +                if (sseu->subslice_mask[s * sseu->ss_stride] &
> > > +                    BIT(ss))
> > >                       intel_sseu_set_eus(sseu, s, ss, eu_en);
> > >               }
> > >           }
> > > @@ -201,23 +224,10 @@ static void gen10_sseu_info_init(struct=20
> > > drm_i915_private *dev_priv)
> > >       const int eu_mask =3D 0xff;
> > >       u32 subslice_mask, eu_en;
> > > +    intel_sseu_set_info(sseu, 6, 4, 8);
> > > +
> > >       sseu->slice_mask =3D (fuse2 & GEN10_F2_S_ENA_MASK) >>
> > >                   GEN10_F2_S_ENA_SHIFT;
> > > -    sseu->max_slices =3D 6;
> > > -    sseu->max_subslices =3D 4;
> > > -    sseu->max_eus_per_subslice =3D 8;
> > > -
> > > -    subslice_mask =3D (1 << 4) - 1;
> > > -    subslice_mask &=3D ~((fuse2 & GEN10_F2_SS_DIS_MASK) >>
> > > -               GEN10_F2_SS_DIS_SHIFT);
> > > -
> > > -    /*
> > > -     * Slice0 can have up to 3 subslices, but there are only 2
> > > in
> > > -     * slice1/2.
> > > -     */
> > > -    sseu->subslice_mask[0] =3D subslice_mask;
> > > -    for (s =3D 1; s < sseu->max_slices; s++)
> > > -        sseu->subslice_mask[s] =3D subslice_mask & 0x3;
> > >       /* Slice0 */
> > >       eu_en =3D ~I915_READ(GEN8_EU_DISABLE0);
> > > @@ -242,14 +252,22 @@ static void gen10_sseu_info_init(struct=20
> > > drm_i915_private *dev_priv)
> > >       eu_en =3D ~I915_READ(GEN10_EU_DISABLE3);
> > >       intel_sseu_set_eus(sseu, 5, 1, eu_en & eu_mask);
> > > -    /* Do a second pass where we mark the subslices disabled if
> > > all=20
> > > their
> > > -     * eus are off.
> > > -     */
> > > +    subslice_mask =3D (1 << 4) - 1;
> > > +    subslice_mask &=3D ~((fuse2 & GEN10_F2_SS_DIS_MASK) >>
> > > +               GEN10_F2_SS_DIS_SHIFT);
> > > +
> > >       for (s =3D 0; s < sseu->max_slices; s++) {
> > >           for (ss =3D 0; ss < sseu->max_subslices; ss++) {
> > >               if (intel_sseu_get_eus(sseu, s, ss) =3D=3D 0)
> > > -                sseu->subslice_mask[s] &=3D ~BIT(ss);
> > > +                subslice_mask &=3D ~BIT(ss);
> > >           }
> > > +
> > > +        /*
> > > +         * Slice0 can have up to 3 subslices, but there are only
> > > 2 in
> > > +         * slice1/2.
> > > +         */
> > > +        intel_sseu_set_subslices(sseu, s, s =3D=3D 0 ? subslice_mask
> > > :
> > > +                               subslice_mask & 0x3);
> > >       }
> > >       sseu->eu_total =3D compute_eu_total(sseu);
> > > @@ -275,13 +293,12 @@ static void
> > > cherryview_sseu_info_init(struct=20
> > > drm_i915_private *dev_priv)
> > >   {
> > >       struct sseu_dev_info *sseu =3D &RUNTIME_INFO(dev_priv)->sseu;
> > >       u32 fuse;
> > > +    u8 subslice_mask;
> > >       fuse =3D I915_READ(CHV_FUSE_GT);
> > >       sseu->slice_mask =3D BIT(0);
> > > -    sseu->max_slices =3D 1;
> > > -    sseu->max_subslices =3D 2;
> > > -    sseu->max_eus_per_subslice =3D 8;
> > > +    intel_sseu_set_info(sseu, 1, 2, 8);
> > >       if (!(fuse & CHV_FGT_DISABLE_SS0)) {
> > >           u8 disabled_mask =3D
> > > @@ -290,7 +307,7 @@ static void cherryview_sseu_info_init(struct=20
> > > drm_i915_private *dev_priv)
> > >               (((fuse & CHV_FGT_EU_DIS_SS0_R1_MASK) >>
> > >                 CHV_FGT_EU_DIS_SS0_R1_SHIFT) << 4);
> > > -        sseu->subslice_mask[0] |=3D BIT(0);
> > > +        subslice_mask |=3D BIT(0);
> > >           intel_sseu_set_eus(sseu, 0, 0, ~disabled_mask);
> > >       }
> > > @@ -301,10 +318,12 @@ static void
> > > cherryview_sseu_info_init(struct=20
> > > drm_i915_private *dev_priv)
> > >               (((fuse & CHV_FGT_EU_DIS_SS1_R1_MASK) >>
> > >                 CHV_FGT_EU_DIS_SS1_R1_SHIFT) << 4);
> > > -        sseu->subslice_mask[0] |=3D BIT(1);
> > > +        subslice_mask |=3D BIT(1);
> > >           intel_sseu_set_eus(sseu, 0, 1, ~disabled_mask);
> > >       }
> > > +    intel_sseu_set_subslices(sseu, 0, subslice_mask);
> > > +
> > >       sseu->eu_total =3D compute_eu_total(sseu);
> > >       /*
> > > @@ -312,7 +331,8 @@ static void cherryview_sseu_info_init(struct=20
> > > drm_i915_private *dev_priv)
> > >        * across subslices.
> > >       */
> > >       sseu->eu_per_subslice =3D intel_sseu_subslice_total(sseu) ?
> > > -                sseu->eu_total / intel_sseu_subslice_total(sseu)
> > > :
> > > +                sseu->eu_total /
> > > +                    intel_sseu_subslice_total(sseu) :
> > >                   0;
> > >       /*
> > >        * CHV supports subslice power gating on devices with more
> > > than
> > > @@ -336,9 +356,8 @@ static void gen9_sseu_info_init(struct=20
> > > drm_i915_private *dev_priv)
> > >       sseu->slice_mask =3D (fuse2 & GEN8_F2_S_ENA_MASK) >>=20
> > > GEN8_F2_S_ENA_SHIFT;
> > >       /* BXT has a single slice and at most 3 subslices. */
> > > -    sseu->max_slices =3D IS_GEN9_LP(dev_priv) ? 1 : 3;
> > > -    sseu->max_subslices =3D IS_GEN9_LP(dev_priv) ? 3 : 4;
> > > -    sseu->max_eus_per_subslice =3D 8;
> > > +    intel_sseu_set_info(sseu, IS_GEN9_LP(dev_priv) ? 1 : 3,
> > > +                IS_GEN9_LP(dev_priv) ? 3 : 4, 8);
> > >       /*
> > >        * The subslice disable field is global, i.e. it applies
> > > @@ -357,14 +376,16 @@ static void gen9_sseu_info_init(struct=20
> > > drm_i915_private *dev_priv)
> > >               /* skip disabled slice */
> > >               continue;
> > > -        sseu->subslice_mask[s] =3D subslice_mask;
> > > +        intel_sseu_set_subslices(sseu, s, subslice_mask);
> > >           eu_disable =3D I915_READ(GEN9_EU_DISABLE(s));
> > >           for (ss =3D 0; ss < sseu->max_subslices; ss++) {
> > >               int eu_per_ss;
> > >               u8 eu_disabled_mask;
> > > +            u8 ss_idx =3D s * sseu->ss_stride + ss /
> > > BITS_PER_BYTE;
> > > -            if (!(sseu->subslice_mask[s] & BIT(ss)))
> > > +            if (!(sseu->subslice_mask[ss_idx] &
> > > +                  BIT(ss % BITS_PER_BYTE)))
> > >                   /* skip disabled subslice */
> > >                   continue;
> > > @@ -437,9 +458,7 @@ static void broadwell_sseu_info_init(struct=20
> > > drm_i915_private *dev_priv)
> > >       fuse2 =3D I915_READ(GEN8_FUSE2);
> > >       sseu->slice_mask =3D (fuse2 & GEN8_F2_S_ENA_MASK) >>=20
> > > GEN8_F2_S_ENA_SHIFT;
> > > -    sseu->max_slices =3D 3;
> > > -    sseu->max_subslices =3D 3;
> > > -    sseu->max_eus_per_subslice =3D 8;
> > > +    intel_sseu_set_info(sseu, 3, 3, 8);
> > >       /*
> > >        * The subslice disable field is global, i.e. it applies
> > > @@ -466,18 +485,21 @@ static void
> > > broadwell_sseu_info_init(struct=20
> > > drm_i915_private *dev_priv)
> > >               /* skip disabled slice */
> > >               continue;
> > > -        sseu->subslice_mask[s] =3D subslice_mask;
> > > +        intel_sseu_set_subslices(sseu, s, subslice_mask);
> > >           for (ss =3D 0; ss < sseu->max_subslices; ss++) {
> > >               u8 eu_disabled_mask;
> > > +            u8 ss_idx =3D s * sseu->ss_stride + ss /
> > > BITS_PER_BYTE;
> > >               u32 n_disabled;
> > > -            if (!(sseu->subslice_mask[s] & BIT(ss)))
> > > +            if (!(sseu->subslice_mask[ss_idx] &
> > > +                  BIT(ss % BITS_PER_BYTE)))
> > >                   /* skip disabled subslice */
> > >                   continue;
> > >               eu_disabled_mask =3D
> > > -                eu_disable[s] >> (ss * sseu-
> > > >max_eus_per_subslice);
> > > +                eu_disable[s] >>
> > > +                    (ss * sseu->max_eus_per_subslice);
> > >               intel_sseu_set_eus(sseu, s, ss, ~eu_disabled_mask);
> > > @@ -517,6 +539,7 @@ static void haswell_sseu_info_init(struct=20
> > > drm_i915_private *dev_priv)
> > >       struct sseu_dev_info *sseu =3D &RUNTIME_INFO(dev_priv)->sseu;
> > >       u32 fuse1;
> > >       int s, ss;
> > > +    u32 subslice_mask;
> > >       /*
> > >        * There isn't a register to tell us how many
> > > slices/subslices. We
> > > @@ -528,22 +551,18 @@ static void haswell_sseu_info_init(struct=20
> > > drm_i915_private *dev_priv)
> > >           /* fall through */
> > >       case 1:
> > >           sseu->slice_mask =3D BIT(0);
> > > -        sseu->subslice_mask[0] =3D BIT(0);
> > > +        subslice_mask =3D BIT(0);
> > >           break;
> > >       case 2:
> > >           sseu->slice_mask =3D BIT(0);
> > > -        sseu->subslice_mask[0] =3D BIT(0) | BIT(1);
> > > +        subslice_mask =3D BIT(0) | BIT(1);
> > >           break;
> > >       case 3:
> > >           sseu->slice_mask =3D BIT(0) | BIT(1);
> > > -        sseu->subslice_mask[0] =3D BIT(0) | BIT(1);
> > > -        sseu->subslice_mask[1] =3D BIT(0) | BIT(1);
> > > +        subslice_mask =3D BIT(0) | BIT(1);
> > >           break;
> > >       }
> > > -    sseu->max_slices =3D hweight8(sseu->slice_mask);
> > > -    sseu->max_subslices =3D hweight8(sseu->subslice_mask[0]);
> > > -
> > >       fuse1 =3D I915_READ(HSW_PAVP_FUSE1);
> > >       switch ((fuse1 & HSW_F1_EU_DIS_MASK) >>
> > > HSW_F1_EU_DIS_SHIFT) {
> > >       default:
> > > @@ -560,9 +579,14 @@ static void haswell_sseu_info_init(struct=20
> > > drm_i915_private *dev_priv)
> > >           sseu->eu_per_subslice =3D 6;
> > >           break;
> > >       }
> > > -    sseu->max_eus_per_subslice =3D sseu->eu_per_subslice;
> > > +
> > > +    intel_sseu_set_info(sseu, hweight8(sseu->slice_mask),
> > > +                hweight8(subslice_mask),
> > > +                sseu->eu_per_subslice);
> > >       for (s =3D 0; s < sseu->max_slices; s++) {
> > > +        intel_sseu_set_subslices(sseu, s, subslice_mask);
> > > +
> > >           for (ss =3D 0; ss < sseu->max_subslices; ss++) {
> > >               intel_sseu_set_eus(sseu, s, ss,
> > >                          (1UL << sseu->eu_per_subslice) - 1);
> > >=20

--=-CsEGtw3vvY5OI46PHyj+
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
CQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0xOTA1MDExOTQwMzRaMCMGCSqGSIb3DQEJ
BDEWBBQAM3CdlXRGV7g9Ue/m+JAFWKTECDANBgkqhkiG9w0BAQEFAASCAQAFX+dkkUWmqbpyzZky
Rk1YLYAGY4KWoY9c2JJ+5fSiU91ux4qq6N55ggySTSsHJK2KCCqrs3ef58SmRhoWzpbywPJO9FKJ
DIQ8m+cQv+ATkt95KQEAV+VSfsbgMtBI6ZPbEMZJwXwpB7tzk8FYwGG2hBD024lsEZHELu7iJr8U
BTxlS/iPsuoFGvekPTIpKVQEQS0OpCb4/CQFh00aIyiu5MbpTNRgHD/esefdtPCEEkezXaT2tf9n
0LjPFpik5Iia3cPBZkAZsT2cQwar410h259CLLAqCMm0Ob1z8BLMvrySZrGPwHwg2xMCTkIKQlxV
canqMVYMly/8eS1dncfmAAAAAAAA


--=-CsEGtw3vvY5OI46PHyj+--

--===============0516840655==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============0516840655==--
