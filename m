Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 252DE1887B1
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2020 15:41:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7729F6E591;
	Tue, 17 Mar 2020 14:41:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AECC46E591
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Mar 2020 14:41:02 +0000 (UTC)
IronPort-SDR: m3vW7wrxB0qm2aLpxNksmSAAt7A5ZqHCm9p16nRjYuw/y0QpiFY5LuLiuF3hlnJ329iV+SlM8u
 wok5B2EkG4GA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2020 07:41:01 -0700
IronPort-SDR: vNPlmJ0Wlg49nxPXtJfpHSu2FfII3eW5rdKCRuoX3VWcJvOhRvm4/uGlAxNDeiT+B0VYZ+Vps2
 vHFFPSx1dP1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,564,1574150400"; 
 d="scan'208,217";a="443779887"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
 by fmsmga005.fm.intel.com with ESMTP; 17 Mar 2020 07:41:00 -0700
Received: from irsmsx606.ger.corp.intel.com (163.33.146.139) by
 IRSMSX103.ger.corp.intel.com (163.33.3.157) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 17 Mar 2020 14:40:38 +0000
Received: from irsmsx604.ger.corp.intel.com (163.33.146.137) by
 IRSMSX606.ger.corp.intel.com (163.33.146.139) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 17 Mar 2020 14:40:38 +0000
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137]) by
 IRSMSX604.ger.corp.intel.com ([163.33.146.137]) with mapi id 15.01.1713.004;
 Tue, 17 Mar 2020 14:40:38 +0000
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH v2 2/3] drm/i915: Adjust CDCLK accordingly to our DBuf bw
 needs
Thread-Index: AQHV++Tk2N94/f7qHEWHgYlrae81jqhMzSiAgAAH3wA=
Date: Tue, 17 Mar 2020 14:40:38 +0000
Message-ID: <6c8125d6b0034763aad2d13642b369b9@intel.com>
References: <20200316113744.31203-3-stanislav.lisovskiy@intel.com>
 <20200316224338.14384-1-stanislav.lisovskiy@intel.com>,
 <20200317134635.GV13686@intel.com>
In-Reply-To: <20200317134635.GV13686@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.253.164]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 2/3] drm/i915: Adjust CDCLK accordingly
 to our DBuf bw needs
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: multipart/mixed; boundary="===============0403763768=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0403763768==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_6c8125d6b0034763aad2d13642b369b9intelcom_"

--_000_6c8125d6b0034763aad2d13642b369b9intelcom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

>Something like?

>for_each_plane_id() {
>       for_each_dbuf_slice() {
>               skl_ddb_entry_for_slices(BIT(slice), &ddb_slice);
>
>                if (skl_ddb_entries_overlap(&ddb_slice, &ddb[plane_id])))
>                       bw[slice] +=3D data_rate;
>        }
>}


In fact even in your example this is not fully correct:


it should be then


for_each_new_crtc_in_state()   =3D> because there are multiple crtcs

  for_each_plane_id() {
       for_each_dbuf_slice() {
               skl_ddb_entry_for_slices(BIT(slice), &ddb_slice);

                if (skl_ddb_entries_overlap(&ddb_slice, &ddb[plane_id])))
                       bw[slice] +=3D data_rate;
        }
}


which would be in fact same complexity or even worse because in the patch

we get a mask of only used slices per plane ddb and then account for those

while here it would be iterating all slices everytime.

Slight difference but still.

I can of course make this function shorter, by implementing some helpers -

that's for sure.


>But this seems to borked anyway since we only consider the crtcs in the

>state, and there are those ugly FIXMEs below.


Those ugly FIXME's are there because of same issue that we don't

have a parent state for crtc_state in some situations.


Not this patch fault or subject in fact. We probably need some series

to somehow tackle this everywhere, so that those functions which

need intel_atomic_state can always find it.



So it is not those FIXME's in the patch which are ugly, but the code

which is calling this function, so that even though we have a crtc_state

we never now if we can have a parent atomic state, which is violating

OOP principles.


I.e it is called from intel_modeset_setup_hw_state _already_ in a hacky way=
.

>I have a feeling what we want is dbuf_state, and track the bw used for
>each slice therein. Should also allow us to flag the cdclk recalculation
>only when things actually change in a way that needs more cdclk, instead
>of pessimising every plane enable/disable like you do below.


I think CDCLK recalculation itself is pretty trivial - it is actually when =
we really

needs to be changed, that is what we don't want to often, right?

To estimate if it needs to be flagged or not you will need exatly same code=
, i.e

calculating BW used per slice, while determining which ddb entries are rela=
ted

to which slice.


In fact there are already IGT results(which pass) and CDCLK doesn't change =
too

often at all - because we change it only when we really need it otherwise


intel_crtc_compute_min_cdclk will return same value as before and nothing c=
hanges.


If you really want so, we can start tracking it, once your dbuf_state patch=
es land - currently

the main problem is that we need finally a proper way to estimate CDCLK

without keeping it bumped all the time to make 8K happy, at the same time

we don't want FIFO underruns again.


Best Regards,

Lisovskiy Stanislav
________________________________
From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
Sent: Tuesday, March 17, 2020 3:46:35 PM
To: Lisovskiy, Stanislav
Cc: intel-gfx@lists.freedesktop.org; Ausmus, James; Saarinen, Jani; Roper, =
Matthew D
Subject: Re: [PATCH v2 2/3] drm/i915: Adjust CDCLK accordingly to our DBuf =
bw needs

On Tue, Mar 17, 2020 at 12:43:38AM +0200, Stanislav Lisovskiy wrote:
> According to BSpec max BW per slice is calculated using formula
> Max BW =3D CDCLK * 64. Currently when calculating min CDCLK we
> account only per plane requirements, however in order to avoid
> FIFO underruns we need to estimate accumulated BW consumed by
> all planes(ddb entries basically) residing on that particular
> DBuf slice. This will allow us to put CDCLK lower and save power
> when we don't need that much bandwidth or gain additional
> performance once plane consumption grows.
>
> v2: - Fix long line warning
>     - Limited new DBuf bw checks to only gens >=3D 11
>
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.c       | 46 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_bw.h       |  1 +
>  drivers/gpu/drm/i915/display/intel_cdclk.c    | 25 ++++++++++
>  drivers/gpu/drm/i915/display/intel_display.c  | 10 +++-
>  .../drm/i915/display/intel_display_power.h    |  1 +
>  drivers/gpu/drm/i915/intel_pm.c               | 34 +++++++++++++-
>  drivers/gpu/drm/i915/intel_pm.h               |  3 ++
>  7 files changed, 117 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i9=
15/display/intel_bw.c
> index 58b264bc318d..a85125110d7e 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -6,6 +6,7 @@
>  #include <drm/drm_atomic_state_helper.h>
>
>  #include "intel_bw.h"
> +#include "intel_pm.h"
>  #include "intel_display_types.h"
>  #include "intel_sideband.h"
>
> @@ -334,6 +335,51 @@ static unsigned int intel_bw_crtc_data_rate(const st=
ruct intel_crtc_state *crtc_
>        return data_rate;
>  }
>
> +int intel_bw_calc_min_cdclk(struct intel_atomic_state *state)
> +{
> +     struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +     int max_bw_per_dbuf[DBUF_SLICE_MAX];
> +     int i =3D 0;
> +     enum plane_id plane_id;
> +     struct intel_crtc_state *crtc_state;
> +     struct intel_crtc *crtc;
> +     int max_bw =3D 0;
> +     int min_cdclk;
> +
> +     memset(max_bw_per_dbuf, 0, sizeof(max_bw_per_dbuf[0]) * DBUF_SLICE_=
MAX);
> +
> +     for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
> +             for_each_plane_id_on_crtc(crtc, plane_id) {
> +                     struct skl_ddb_entry *plane_alloc =3D
> +                             &crtc_state->wm.skl.plane_ddb_y[plane_id];
> +                     struct skl_ddb_entry *uv_plane_alloc =3D
> +                             &crtc_state->wm.skl.plane_ddb_uv[plane_id];
> +                     unsigned int data_rate =3D crtc_state->data_rate[pl=
ane_id];
> +                     int slice_id =3D 0;
> +                     u32 dbuf_mask =3D skl_ddb_dbuf_slice_mask(dev_priv,=
 plane_alloc);
> +
> +                     dbuf_mask |=3D skl_ddb_dbuf_slice_mask(dev_priv, uv=
_plane_alloc);
> +
> +                     DRM_DEBUG_KMS("Got dbuf mask %x for pipe %c ddb %d-=
%d plane %d data rate %d\n",
> +                                   dbuf_mask, pipe_name(crtc->pipe), pla=
ne_alloc->start,
> +                                   plane_alloc->end, plane_id, data_rate=
);
> +
> +                     while (dbuf_mask !=3D 0) {
> +                             if (dbuf_mask & 1) {
> +                                     max_bw_per_dbuf[slice_id] +=3D data=
_rate;
> +                                     max_bw =3D max(max_bw, max_bw_per_d=
buf[slice_id]);
> +                             }
> +                             slice_id++;
> +                             dbuf_mask >>=3D 1;
> +                     }
> +             }
> +     }

Something like?

for_each_plane_id() {
        for_each_dbuf_slice() {
                skl_ddb_entry_for_slices(BIT(slice), &ddb_slice);

                if (skl_ddb_entries_overlap(&ddb_slice, &ddb[plane_id])))
                        bw[slice] +=3D data_rate;
        }
}

But this seems to borked anyway since we only consider the crtcs in the
state, and there are those ugly FIXMEs below.

I have a feeling what we want is dbuf_state, and track the bw used for
each slice therein. Should also allow us to flag the cdclk recalculation
only when things actually change in a way that needs more cdclk, instead
of pessimising every plane enable/disable like you do below.

> +
> +     min_cdclk =3D max_bw / 64;
> +
> +     return min_cdclk;
> +}
> +
>  void intel_bw_crtc_update(struct intel_bw_state *bw_state,
>                          const struct intel_crtc_state *crtc_state)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i9=
15/display/intel_bw.h
> index a8aa7624c5aa..8a522b571c51 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.h
> +++ b/drivers/gpu/drm/i915/display/intel_bw.h
> @@ -29,5 +29,6 @@ int intel_bw_init(struct drm_i915_private *dev_priv);
>  int intel_bw_atomic_check(struct intel_atomic_state *state);
>  void intel_bw_crtc_update(struct intel_bw_state *bw_state,
>                          const struct intel_crtc_state *crtc_state);
> +int intel_bw_calc_min_cdclk(struct intel_atomic_state *state);
>
>  #endif /* __INTEL_BW_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm=
/i915/display/intel_cdclk.c
> index 0741d643455b..9f2de613642e 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -25,6 +25,7 @@
>  #include "intel_cdclk.h"
>  #include "intel_display_types.h"
>  #include "intel_sideband.h"
> +#include "intel_bw.h"
>
>  /**
>   * DOC: CDCLK / RAWCLK
> @@ -1979,11 +1980,19 @@ int intel_crtc_compute_min_cdclk(const struct int=
el_crtc_state *crtc_state)
>  {
>        struct drm_i915_private *dev_priv =3D
>                to_i915(crtc_state->uapi.crtc->dev);
> +     struct intel_atomic_state *state =3D NULL;
>        int min_cdclk;
>
>        if (!crtc_state->hw.enable)
>                return 0;
>
> +     /*
> +      * FIXME: Unfortunately when this gets called from intel_modeset_se=
tup_hw_state
> +      * there is no intel_atomic_state at all. So lets not then use it.
> +      */
> +     if (crtc_state->uapi.state)
> +             state =3D to_intel_atomic_state(crtc_state->uapi.state);
> +
>        min_cdclk =3D intel_pixel_rate_to_cdclk(crtc_state);
>
>        /* pixel rate mustn't exceed 95% of cdclk with IPS on BDW */
> @@ -2058,6 +2067,22 @@ int intel_crtc_compute_min_cdclk(const struct inte=
l_crtc_state *crtc_state)
>        if (IS_TIGERLAKE(dev_priv))
>                min_cdclk =3D max(min_cdclk, (int)crtc_state->pixel_rate);
>
> +     /*
> +      * Similar story as with skl_write_plane_wm and intel_enable_sagv
> +      * - in some certain driver parts, we don't have any guarantee that
> +      * parent exists. So we might be having a crtc_state without
> +      * parent state.
> +      */
> +     if (INTEL_GEN(dev_priv) >=3D 11) {
> +             if (state) {
> +                     int dbuf_bw_cdclk =3D intel_bw_calc_min_cdclk(state=
);
> +
> +                     DRM_DEBUG_KMS("DBuf bw min cdclk %d current min_cdc=
lk %d\n",
> +                                   dbuf_bw_cdclk, min_cdclk);
> +                     min_cdclk =3D max(min_cdclk, dbuf_bw_cdclk);
> +             }
> +     }
> +
>        if (min_cdclk > dev_priv->max_cdclk_freq) {
>                drm_dbg_kms(&dev_priv->drm,
>                            "required cdclk (%d kHz) exceeds max (%d kHz)\=
n",
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index cdff3054b344..aae5521424c6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -14632,7 +14632,7 @@ static bool active_planes_affects_min_cdclk(struc=
t drm_i915_private *dev_priv)
>        /* See {hsw,vlv,ivb}_plane_ratio() */
>        return IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv) ||
>                IS_CHERRYVIEW(dev_priv) || IS_VALLEYVIEW(dev_priv) ||
> -             IS_IVYBRIDGE(dev_priv);
> +             IS_IVYBRIDGE(dev_priv) || (INTEL_GEN(dev_priv) >=3D 11);
>  }
>
>  static int intel_atomic_check_planes(struct intel_atomic_state *state,
> @@ -14681,6 +14681,14 @@ static int intel_atomic_check_planes(struct inte=
l_atomic_state *state,
>                if (hweight8(old_active_planes) =3D=3D hweight8(new_active=
_planes))
>                        continue;
>
> +             /*
> +              * active_planes bitmask has been updated, whenever amount
> +              * of active planes had changed we need to recalculate CDCL=
K
> +              * as it depends on total bandwidth now, not only min_cdclk
> +              * per plane.
> +              */
> +             *need_cdclk_calc =3D true;
> +
>                ret =3D intel_crtc_add_planes_to_state(state, crtc, new_ac=
tive_planes);
>                if (ret)
>                        return ret;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers=
/gpu/drm/i915/display/intel_display_power.h
> index da64a5edae7a..3446c3ce6a4f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> @@ -311,6 +311,7 @@ intel_display_power_put_async(struct drm_i915_private=
 *i915,
>  enum dbuf_slice {
>        DBUF_S1,
>        DBUF_S2,
> +     DBUF_SLICE_MAX
>  };
>
>  #define with_intel_display_power(i915, domain, wf) \
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index 8375054ba27d..15300c44d9dc 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -3844,10 +3844,9 @@ icl_get_first_dbuf_slice_offset(u32 dbuf_slice_mas=
k,
>        return offset;
>  }
>
> -static u16 intel_get_ddb_size(struct drm_i915_private *dev_priv)
> +u16 intel_get_ddb_size(struct drm_i915_private *dev_priv)
>  {
>        u16 ddb_size =3D INTEL_INFO(dev_priv)->ddb_size;
> -
>        drm_WARN_ON(&dev_priv->drm, ddb_size =3D=3D 0);
>
>        if (INTEL_GEN(dev_priv) < 11)
> @@ -3856,6 +3855,37 @@ static u16 intel_get_ddb_size(struct drm_i915_priv=
ate *dev_priv)
>        return ddb_size;
>  }
>
> +u32 skl_ddb_dbuf_slice_mask(struct drm_i915_private *dev_priv,
> +                         const struct skl_ddb_entry *entry)
> +{
> +     u32 slice_mask =3D 0;
> +     u16 ddb_size =3D intel_get_ddb_size(dev_priv);
> +     u16 num_supported_slices =3D INTEL_INFO(dev_priv)->num_supported_db=
uf_slices;
> +     u16 slice_size =3D ddb_size / num_supported_slices;
> +     u16 start_slice;
> +     u16 end_slice;
> +
> +     if (!skl_ddb_entry_size(entry))
> +             return 0;
> +
> +     start_slice =3D entry->start / slice_size;
> +     end_slice =3D (entry->end - 1) / slice_size;
> +
> +     DRM_DEBUG_KMS("ddb size %d slices %d slice size %d start slice %d e=
nd slice %d\n",
> +                   ddb_size, num_supported_slices, slice_size, start_sli=
ce, end_slice);
> +
> +     /*
> +      * Per plane DDB entry can in a really worst case be on multiple sl=
ices
> +      * but single entry is anyway contigious.
> +      */
> +     while (start_slice <=3D end_slice) {
> +             slice_mask |=3D 1 << start_slice;
> +             start_slice++;
> +     }
> +
> +     return slice_mask;
> +}
> +
>  static u8 skl_compute_dbuf_slices(const struct intel_crtc_state *crtc_st=
ate,
>                                  u8 active_pipes);
>
> diff --git a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/i915/intel=
_pm.h
> index d60a85421c5a..a9e3835927a8 100644
> --- a/drivers/gpu/drm/i915/intel_pm.h
> +++ b/drivers/gpu/drm/i915/intel_pm.h
> @@ -37,6 +37,9 @@ void skl_pipe_ddb_get_hw_state(struct intel_crtc *crtc,
>                               struct skl_ddb_entry *ddb_y,
>                               struct skl_ddb_entry *ddb_uv);
>  void skl_ddb_get_hw_state(struct drm_i915_private *dev_priv);
> +u16 intel_get_ddb_size(struct drm_i915_private *dev_priv);
> +u32 skl_ddb_dbuf_slice_mask(struct drm_i915_private *dev_priv,
> +                         const struct skl_ddb_entry *entry);
>  void skl_pipe_wm_get_hw_state(struct intel_crtc *crtc,
>                              struct skl_pipe_wm *out);
>  void g4x_wm_sanitize(struct drm_i915_private *dev_priv);
> --
> 2.24.1.485.gad05a3d8e5

--
Ville Syrj=E4l=E4
Intel

--_000_6c8125d6b0034763aad2d13642b369b9intelcom_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from text --><style><!-- .EmailQuote { margin-left: 1pt; pad=
ding-left: 4pt; border-left: #800000 2px solid; } --></style>
</head>
<body>
<meta content=3D"text/html; charset=3DUTF-8">
<style type=3D"text/css" style=3D"">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div dir=3D"ltr">
<div id=3D"x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; col=
or:#000000; font-family:Calibri,Helvetica,sans-serif">
<p><span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot=
;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFon=
t; font-size:13.3333px">&gt;Something like?</span><br style=3D"color:rgb(33=
,33,33); font-family:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP=
&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; font-size:13.3333px">
<br style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Sego=
e UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; fo=
nt-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;for_each_plane_id() {</span><br style=3D"color:rgb=
(33,33,33); font-family:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe=
 WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;&nbsp; &nbsp; &nbsp; &nbsp;for_each_dbuf_slice() {=
</span><br style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&qu=
ot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiF=
ont; font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp;skl_ddb_entry_for_slices(BIT(slice), &amp;ddb_slice);</span><br style=
=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Segoe UI&quot=
;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; font-size:1=
3.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp;</span><br style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_norma=
l,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,E=
mojiFont; font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; if (skl_ddb_entries_overlap(&amp;ddb_slice, &amp;ddb[plane_id])))</sp=
an><br style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;S=
egoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont;=
 font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp;bw[slice] &#43;=3D data_rate;</span><br st=
yle=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Segoe UI&q=
uot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; font-siz=
e:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;&nbsp; &nbsp; &nbsp; &nbsp; }</span><br style=3D"c=
olor:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&qu=
ot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; font-size:13.333=
3px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;}</span></p>
<p><span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot=
;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFon=
t; font-size:13.3333px"><br>
</span></p>
<p><span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot=
;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFon=
t; font-size:13.3333px">In fact even in your example this is not fully corr=
ect:</span></p>
<p><span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot=
;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFon=
t; font-size:13.3333px"><br>
</span></p>
<p><span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot=
;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFon=
t; font-size:13.3333px">it should be then</span></p>
<p><span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot=
;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFon=
t; font-size:13.3333px"><br>
</span></p>
<p><span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot=
;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFon=
t; font-size:13.3333px">for_each_new_crtc_in_state()&nbsp; &nbsp;=3D&gt; be=
cause there are multiple crtcs</span></p>
<p><span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot=
;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFon=
t; font-size:13.3333px"><span style=3D"color:rgb(33,33,33); font-family:wf_=
segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans=
-serif,serif,EmojiFont; font-size:13.3333px">&nbsp;
 for_each_plane_id() {</span><br style=3D"color:rgb(33,33,33); font-family:=
wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,s=
ans-serif,serif,EmojiFont; font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&nbsp; &nbsp; &nbsp; &nbsp;for_each_dbuf_slice() {</sp=
an><br style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;S=
egoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont;=
 font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
;skl_ddb_entry_for_slices(BIT(slice), &amp;ddb_slice);</span><br style=3D"c=
olor:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&qu=
ot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; font-size:13.333=
3px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
;</span><br style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&q=
uot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,Emoji=
Font; font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; if (skl_ddb_entries_overlap(&amp;ddb_slice, &amp;ddb[plane_id])))</span><=
br style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Segoe=
 UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; fon=
t-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp;bw[slice] &#43;=3D data_rate;</span><br style=
=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Segoe UI&quot=
;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; font-size:1=
3.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&nbsp; &nbsp; &nbsp; &nbsp; }</span><br style=3D"color=
:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;S=
egoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; font-size:13.3333px"=
>
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">}</span><br>
</span></p>
<p><span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot=
;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFon=
t; font-size:13.3333px"><span style=3D"color:rgb(33,33,33); font-family:wf_=
segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans=
-serif,serif,EmojiFont; font-size:13.3333px"><br>
</span></span></p>
<p><span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot=
;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFon=
t; font-size:13.3333px"><span style=3D"color:rgb(33,33,33); font-family:wf_=
segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans=
-serif,serif,EmojiFont; font-size:13.3333px">which
 would be in fact same complexity or even worse because in the patch</span>=
</span></p>
<p><span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot=
;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFon=
t; font-size:13.3333px"><span style=3D"color:rgb(33,33,33); font-family:wf_=
segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans=
-serif,serif,EmojiFont; font-size:13.3333px">we
 get a mask of only used slices per plane ddb and then account for those</s=
pan></span></p>
<p><span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot=
;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFon=
t; font-size:13.3333px"><span style=3D"color:rgb(33,33,33); font-family:wf_=
segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans=
-serif,serif,EmojiFont; font-size:13.3333px">while
 here it would be iterating all slices everytime.</span></span></p>
<p><span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot=
;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFon=
t; font-size:13.3333px"><span style=3D"color:rgb(33,33,33); font-family:wf_=
segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans=
-serif,serif,EmojiFont; font-size:13.3333px">Slight
 difference but still.&nbsp;</span></span></p>
<p><span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot=
;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFon=
t; font-size:13.3333px"><span style=3D"color:rgb(33,33,33); font-family:wf_=
segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans=
-serif,serif,EmojiFont; font-size:13.3333px">I
 can of course make this function shorter, by implementing some helpers -&n=
bsp;</span></span></p>
<p><span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot=
;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFon=
t; font-size:13.3333px"><span style=3D"color:rgb(33,33,33); font-family:wf_=
segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans=
-serif,serif,EmojiFont; font-size:13.3333px">that's
 for sure.</span></span></p>
<p><br>
</p>
<p><span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot=
;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFon=
t; font-size:13.3333px">&gt;But this seems to borked anyway since we only c=
onsider the crtcs in the</span><br>
</p>
<p><span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot=
;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFon=
t; font-size:13.3333px">&gt;state, and there are those ugly FIXMEs below.</=
span></p>
<p><br>
</p>
<p><span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot=
;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFon=
t; font-size:13.3333px"></span>Those ugly FIXME's are there because of same=
 issue that we don't&nbsp;</p>
<p>have a parent state for crtc_state in some situations.&nbsp;</p>
<p><br>
</p>
<p>Not this patch fault or subject in fact. We probably need some series</p=
>
<p>to somehow tackle this everywhere, so that those functions which</p>
<p>need intel_atomic_state can always find it.</p>
<p>&nbsp;</p>
<p>So it is not those FIXME's in the patch which are ugly, but the code&nbs=
p;</p>
<p>which&nbsp;<span style=3D"font-size:12pt">is calling this function, so t=
hat even though we have a crtc_state</span></p>
<p><span style=3D"font-size:12pt">we never now if we can have a parent atom=
ic state, which is violating</span></p>
<p><span style=3D"font-size:12pt">OOP principles.</span></p>
<p></p>
<p><br>
</p>
<p>I.e it is called from&nbsp;<span style=3D"color:rgb(33,33,33); font-fami=
ly:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Aria=
l,sans-serif,serif,EmojiFont; font-size:13.3333px">intel_modeset_setup_hw_s=
tate _already_&nbsp;in a hacky way.</span></p>
<p><br style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;S=
egoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont;=
 font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;I have a feeling what we want is dbuf_state, and t=
rack the bw used for</span><br style=3D"color:rgb(33,33,33); font-family:wf=
_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,san=
s-serif,serif,EmojiFont; font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;each slice therein. Should also allow us to flag t=
he cdclk recalculation</span><br style=3D"color:rgb(33,33,33); font-family:=
wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,s=
ans-serif,serif,EmojiFont; font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;only when things actually change in a way that nee=
ds more cdclk, instead</span><br style=3D"color:rgb(33,33,33); font-family:=
wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,s=
ans-serif,serif,EmojiFont; font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;of pessimising every plane enable/disable like you=
 do below.</span><br>
</p>
<p><span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot=
;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFon=
t; font-size:13.3333px"><br>
</span></p>
<p><span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot=
;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFon=
t; font-size:13.3333px">I think CDCLK recalculation itself is pretty trivia=
l - it is actually when we really</span></p>
<p><span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot=
;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFon=
t; font-size:13.3333px">needs to be changed, that is what we don't want to =
often, right?</span></p>
<p><span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot=
;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFon=
t; font-size:13.3333px">To estimate if it needs to be flagged or not you wi=
ll need exatly same code, i.e</span></p>
<p><span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot=
;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFon=
t; font-size:13.3333px">calculating BW used per slice, while determining wh=
ich ddb entries are related</span></p>
<p><span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot=
;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFon=
t; font-size:13.3333px">to which slice.</span></p>
<p><span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot=
;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFon=
t; font-size:13.3333px"><br>
</span></p>
<p><span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot=
;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFon=
t; font-size:13.3333px">In fact there are already IGT results(which pass) a=
nd CDCLK doesn't change too</span></p>
<p><span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot=
;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFon=
t; font-size:13.3333px">often at all - because we change it only when we re=
ally need it otherwise</span></p>
<p><span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot=
;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFon=
t; font-size:13.3333px"><br>
</span></p>
<p><span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot=
;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFon=
t; font-size:13.3333px">intel_crtc_compute_min_cdclk will return same value=
 as before and nothing changes.</span></p>
<p><span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot=
;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFon=
t; font-size:13.3333px"><br>
</span></p>
<p><span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot=
;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFon=
t; font-size:13.3333px">If you really want so, we can start tracking it, on=
ce your dbuf_state patches land - currently</span></p>
<p><span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot=
;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFon=
t; font-size:13.3333px">the main problem is that we need finally a proper w=
ay to estimate CDCLK</span></p>
<p><span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot=
;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFon=
t; font-size:13.3333px">without keeping it bumped all the time to make 8K h=
appy, at the same time</span></p>
<p><span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot=
;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFon=
t; font-size:13.3333px">we don't want FIFO underruns again.</span></p>
<p><br>
</p>
<div id=3D"x_Signature">
<div style=3D"font-family:Tahoma; font-size:13px"><font size=3D"2"><span st=
yle=3D"font-size:10pt">Best Regards,<br>
<br>
Lisovskiy Stanislav <br>
</span></font></div>
</div>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Ville Syrj=E4l=E4 &=
lt;ville.syrjala@linux.intel.com&gt;<br>
<b>Sent:</b> Tuesday, March 17, 2020 3:46:35 PM<br>
<b>To:</b> Lisovskiy, Stanislav<br>
<b>Cc:</b> intel-gfx@lists.freedesktop.org; Ausmus, James; Saarinen, Jani; =
Roper, Matthew D<br>
<b>Subject:</b> Re: [PATCH v2 2/3] drm/i915: Adjust CDCLK accordingly to ou=
r DBuf bw needs</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt;">
<div class=3D"PlainText">On Tue, Mar 17, 2020 at 12:43:38AM &#43;0200, Stan=
islav Lisovskiy wrote:<br>
&gt; According to BSpec max BW per slice is calculated using formula<br>
&gt; Max BW =3D CDCLK * 64. Currently when calculating min CDCLK we<br>
&gt; account only per plane requirements, however in order to avoid<br>
&gt; FIFO underruns we need to estimate accumulated BW consumed by<br>
&gt; all planes(ddb entries basically) residing on that particular<br>
&gt; DBuf slice. This will allow us to put CDCLK lower and save power<br>
&gt; when we don't need that much bandwidth or gain additional<br>
&gt; performance once plane consumption grows.<br>
&gt; <br>
&gt; v2: - Fix long line warning<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; - Limited new DBuf bw checks to only gens &gt;=
=3D 11<br>
&gt; <br>
&gt; Signed-off-by: Stanislav Lisovskiy &lt;stanislav.lisovskiy@intel.com&g=
t;<br>
&gt; ---<br>
&gt;&nbsp; drivers/gpu/drm/i915/display/intel_bw.c&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; | 46 &#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#4=
3;&#43;&#43;&#43;&#43;&#43;&#43;&#43;<br>
&gt;&nbsp; drivers/gpu/drm/i915/display/intel_bw.h&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; |&nbsp; 1 &#43;<br>
&gt;&nbsp; drivers/gpu/drm/i915/display/intel_cdclk.c&nbsp;&nbsp;&nbsp; | 2=
5 &#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;<br>
&gt;&nbsp; drivers/gpu/drm/i915/display/intel_display.c&nbsp; | 10 &#43;&#4=
3;&#43;-<br>
&gt;&nbsp; .../drm/i915/display/intel_display_power.h&nbsp;&nbsp;&nbsp; |&n=
bsp; 1 &#43;<br>
&gt;&nbsp; drivers/gpu/drm/i915/intel_pm.c&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | 34 &#43;&#43;&#43;&#4=
3;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;-<br>
&gt;&nbsp; drivers/gpu/drm/i915/intel_pm.h&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp; 3 &#43;&#43;<br=
>
&gt;&nbsp; 7 files changed, 117 insertions(&#43;), 3 deletions(-)<br>
&gt; <br>
&gt; diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm=
/i915/display/intel_bw.c<br>
&gt; index 58b264bc318d..a85125110d7e 100644<br>
&gt; --- a/drivers/gpu/drm/i915/display/intel_bw.c<br>
&gt; &#43;&#43;&#43; b/drivers/gpu/drm/i915/display/intel_bw.c<br>
&gt; @@ -6,6 &#43;6,7 @@<br>
&gt;&nbsp; #include &lt;drm/drm_atomic_state_helper.h&gt;<br>
&gt;&nbsp; <br>
&gt;&nbsp; #include &quot;intel_bw.h&quot;<br>
&gt; &#43;#include &quot;intel_pm.h&quot;<br>
&gt;&nbsp; #include &quot;intel_display_types.h&quot;<br>
&gt;&nbsp; #include &quot;intel_sideband.h&quot;<br>
&gt;&nbsp; <br>
&gt; @@ -334,6 &#43;335,51 @@ static unsigned int intel_bw_crtc_data_rate(c=
onst struct intel_crtc_state *crtc_<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return data_rate;<br>
&gt;&nbsp; }<br>
&gt;&nbsp; <br>
&gt; &#43;int intel_bw_calc_min_cdclk(struct intel_atomic_state *state)<br>
&gt; &#43;{<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; struct drm_i915_private *dev_priv =3D to=
_i915(state-&gt;base.dev);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; int max_bw_per_dbuf[DBUF_SLICE_MAX];<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; int i =3D 0;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; enum plane_id plane_id;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_crtc_state *crtc_state;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_crtc *crtc;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; int max_bw =3D 0;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; int min_cdclk;<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; memset(max_bw_per_dbuf, 0, sizeof(max_bw=
_per_dbuf[0]) * DBUF_SLICE_MAX);<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; for_each_new_intel_crtc_in_state(state, =
crtc, crtc_state, i) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; for_each_plane_id_on_crtc(crtc, plane_id) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct skl_ddb_entr=
y *plane_alloc =3D<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;crtc_state-&gt;wm.skl.plane_ddb_y[plane_i=
d];<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct skl_ddb_entr=
y *uv_plane_alloc =3D<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;crtc_state-&gt;wm.skl.plane_ddb_uv[plane_=
id];<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; unsigned int data_r=
ate =3D crtc_state-&gt;data_rate[plane_id];<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int slice_id =3D 0;=
<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u32 dbuf_mask =3D s=
kl_ddb_dbuf_slice_mask(dev_priv, plane_alloc);<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; dbuf_mask |=3D skl_=
ddb_dbuf_slice_mask(dev_priv, uv_plane_alloc);<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DRM_DEBUG_KMS(&quot=
;Got dbuf mask %x for pipe %c ddb %d-%d plane %d data rate %d\n&quot;,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; dbuf_mask,=
 pipe_name(crtc-&gt;pipe), plane_alloc-&gt;start,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; plane_allo=
c-&gt;end, plane_id, data_rate);<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; while (dbuf_mask !=
=3D 0) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; if (dbuf_mask &amp; 1) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; max_bw_per_dbuf[slice_id] &#43;=3D data_rate;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; max_bw =3D max(max_bw, max_bw_per_dbuf[slice_id]);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; slice_id&#43;&#43;;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; dbuf_mask &gt;&gt;=3D 1;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; }<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
<br>
Something like?<br>
<br>
for_each_plane_id() {<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for_each_dbuf_slice() {<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; skl_ddb_entry_for_slices(BIT(slice), &amp;ddb_slice);<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; if (skl_ddb_entries_overlap(&amp;ddb_slice, &amp;ddb[plane_=
id])))<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bw[slice] &=
#43;=3D data_rate;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
}<br>
<br>
But this seems to borked anyway since we only consider the crtcs in the<br>
state, and there are those ugly FIXMEs below.<br>
<br>
I have a feeling what we want is dbuf_state, and track the bw used for <br>
each slice therein. Should also allow us to flag the cdclk recalculation<br=
>
only when things actually change in a way that needs more cdclk, instead <b=
r>
of pessimising every plane enable/disable like you do below.<br>
<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; min_cdclk =3D max_bw / 64;<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; return min_cdclk;<br>
&gt; &#43;}<br>
&gt; &#43;<br>
&gt;&nbsp; void intel_bw_crtc_update(struct intel_bw_state *bw_state,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; const struct intel_crtc_state *crtc_state)<br>
&gt;&nbsp; {<br>
&gt; diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm=
/i915/display/intel_bw.h<br>
&gt; index a8aa7624c5aa..8a522b571c51 100644<br>
&gt; --- a/drivers/gpu/drm/i915/display/intel_bw.h<br>
&gt; &#43;&#43;&#43; b/drivers/gpu/drm/i915/display/intel_bw.h<br>
&gt; @@ -29,5 &#43;29,6 @@ int intel_bw_init(struct drm_i915_private *dev_p=
riv);<br>
&gt;&nbsp; int intel_bw_atomic_check(struct intel_atomic_state *state);<br>
&gt;&nbsp; void intel_bw_crtc_update(struct intel_bw_state *bw_state,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; const struct intel_crtc_state *crtc_state);<br>
&gt; &#43;int intel_bw_calc_min_cdclk(struct intel_atomic_state *state);<br=
>
&gt;&nbsp; <br>
&gt;&nbsp; #endif /* __INTEL_BW_H__ */<br>
&gt; diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/=
drm/i915/display/intel_cdclk.c<br>
&gt; index 0741d643455b..9f2de613642e 100644<br>
&gt; --- a/drivers/gpu/drm/i915/display/intel_cdclk.c<br>
&gt; &#43;&#43;&#43; b/drivers/gpu/drm/i915/display/intel_cdclk.c<br>
&gt; @@ -25,6 &#43;25,7 @@<br>
&gt;&nbsp; #include &quot;intel_cdclk.h&quot;<br>
&gt;&nbsp; #include &quot;intel_display_types.h&quot;<br>
&gt;&nbsp; #include &quot;intel_sideband.h&quot;<br>
&gt; &#43;#include &quot;intel_bw.h&quot;<br>
&gt;&nbsp; <br>
&gt;&nbsp; /**<br>
&gt;&nbsp;&nbsp; * DOC: CDCLK / RAWCLK<br>
&gt; @@ -1979,11 &#43;1980,19 @@ int intel_crtc_compute_min_cdclk(const str=
uct intel_crtc_state *crtc_state)<br>
&gt;&nbsp; {<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct drm_i915_private *dev=
_priv =3D<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; to_i915(crtc_state-&gt;uapi.crtc-&gt;dev);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_atomic_state *state =3D NUL=
L;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int min_cdclk;<br>
&gt;&nbsp; <br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (!crtc_state-&gt;hw.enabl=
e)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; return 0;<br>
&gt;&nbsp; <br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; /*<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * FIXME: Unfortunately when this g=
ets called from intel_modeset_setup_hw_state<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * there is no intel_atomic_state a=
t all. So lets not then use it.<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; */<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; if (crtc_state-&gt;uapi.state)<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; state =3D to_intel_atomic_state(crtc_state-&gt;uapi.state);<br>
&gt; &#43;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; min_cdclk =3D intel_pixel_ra=
te_to_cdclk(crtc_state);<br>
&gt;&nbsp; <br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* pixel rate mustn't exceed=
 95% of cdclk with IPS on BDW */<br>
&gt; @@ -2058,6 &#43;2067,22 @@ int intel_crtc_compute_min_cdclk(const stru=
ct intel_crtc_state *crtc_state)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (IS_TIGERLAKE(dev_priv))<=
br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; min_cdclk =3D max(min_cdclk, (int)crtc_state-&gt;pixel_=
rate);<br>
&gt;&nbsp; <br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; /*<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * Similar story as with skl_write_=
plane_wm and intel_enable_sagv<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * - in some certain driver parts, =
we don't have any guarantee that<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * parent exists. So we might be ha=
ving a crtc_state without<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * parent state.<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; */<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; if (INTEL_GEN(dev_priv) &gt;=3D 11) {<br=
>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; if (state) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int dbuf_bw_cdclk =
=3D intel_bw_calc_min_cdclk(state);<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DRM_DEBUG_KMS(&quot=
;DBuf bw min cdclk %d current min_cdclk %d\n&quot;,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; dbuf_bw_cd=
clk, min_cdclk);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; min_cdclk =3D max(m=
in_cdclk, dbuf_bw_cdclk);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; }<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt; &#43;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (min_cdclk &gt; dev_priv-=
&gt;max_cdclk_freq) {<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; drm_dbg_kms(&amp;dev_priv-&gt;drm,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp; &quot;required cdclk (%d kHz) exceeds max (%d kHz)\n&quot;=
,<br>
&gt; diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gp=
u/drm/i915/display/intel_display.c<br>
&gt; index cdff3054b344..aae5521424c6 100644<br>
&gt; --- a/drivers/gpu/drm/i915/display/intel_display.c<br>
&gt; &#43;&#43;&#43; b/drivers/gpu/drm/i915/display/intel_display.c<br>
&gt; @@ -14632,7 &#43;14632,7 @@ static bool active_planes_affects_min_cdcl=
k(struct drm_i915_private *dev_priv)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* See {hsw,vlv,ivb}_plane_r=
atio() */<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return IS_BROADWELL(dev_priv=
) || IS_HASWELL(dev_priv) ||<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; IS_CHERRYVIEW(dev_priv) || IS_VALLEYVIEW(dev_priv) ||<b=
r>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; IS_IVYBRIDGE(dev_priv);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; IS_IVYBRIDGE(dev_priv) || (INTEL_GEN(dev_priv) &gt;=3D 11);<br>
&gt;&nbsp; }<br>
&gt;&nbsp; <br>
&gt;&nbsp; static int intel_atomic_check_planes(struct intel_atomic_state *=
state,<br>
&gt; @@ -14681,6 &#43;14681,14 @@ static int intel_atomic_check_planes(stru=
ct intel_atomic_state *state,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; if (hweight8(old_active_planes) =3D=3D hweight8(new_act=
ive_planes))<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; continu=
e;<br>
&gt;&nbsp; <br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; /*<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; * active_planes bitmask has been updated, whenever amount<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; * of active planes had changed we need to recalculate CDCLK<b=
r>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; * as it depends on total bandwidth now, not only min_cdclk<br=
>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; * per plane.<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; */<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; *need_cdclk_calc =3D true;<br>
&gt; &#43;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; ret =3D intel_crtc_add_planes_to_state(state, crtc, new=
_active_planes);<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; if (ret)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return =
ret;<br>
&gt; diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/driv=
ers/gpu/drm/i915/display/intel_display_power.h<br>
&gt; index da64a5edae7a..3446c3ce6a4f 100644<br>
&gt; --- a/drivers/gpu/drm/i915/display/intel_display_power.h<br>
&gt; &#43;&#43;&#43; b/drivers/gpu/drm/i915/display/intel_display_power.h<b=
r>
&gt; @@ -311,6 &#43;311,7 @@ intel_display_power_put_async(struct drm_i915_=
private *i915,<br>
&gt;&nbsp; enum dbuf_slice {<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DBUF_S1,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DBUF_S2,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; DBUF_SLICE_MAX<br>
&gt;&nbsp; };<br>
&gt;&nbsp; <br>
&gt;&nbsp; #define with_intel_display_power(i915, domain, wf) \<br>
&gt; diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/in=
tel_pm.c<br>
&gt; index 8375054ba27d..15300c44d9dc 100644<br>
&gt; --- a/drivers/gpu/drm/i915/intel_pm.c<br>
&gt; &#43;&#43;&#43; b/drivers/gpu/drm/i915/intel_pm.c<br>
&gt; @@ -3844,10 &#43;3844,9 @@ icl_get_first_dbuf_slice_offset(u32 dbuf_sl=
ice_mask,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return offset;<br>
&gt;&nbsp; }<br>
&gt;&nbsp; <br>
&gt; -static u16 intel_get_ddb_size(struct drm_i915_private *dev_priv)<br>
&gt; &#43;u16 intel_get_ddb_size(struct drm_i915_private *dev_priv)<br>
&gt;&nbsp; {<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u16 ddb_size =3D INTEL_INFO(=
dev_priv)-&gt;ddb_size;<br>
&gt; -<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; drm_WARN_ON(&amp;dev_priv-&g=
t;drm, ddb_size =3D=3D 0);<br>
&gt;&nbsp; <br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (INTEL_GEN(dev_priv) &lt;=
 11)<br>
&gt; @@ -3856,6 &#43;3855,37 @@ static u16 intel_get_ddb_size(struct drm_i9=
15_private *dev_priv)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return ddb_size;<br>
&gt;&nbsp; }<br>
&gt;&nbsp; <br>
&gt; &#43;u32 skl_ddb_dbuf_slice_mask(struct drm_i915_private *dev_priv,<br=
>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; const struct skl_ddb_entry *entry)<br>
&gt; &#43;{<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; u32 slice_mask =3D 0;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; u16 ddb_size =3D intel_get_ddb_size(dev_=
priv);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; u16 num_supported_slices =3D INTEL_INFO(=
dev_priv)-&gt;num_supported_dbuf_slices;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; u16 slice_size =3D ddb_size / num_suppor=
ted_slices;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; u16 start_slice;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; u16 end_slice;<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; if (!skl_ddb_entry_size(entry))<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; return 0;<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; start_slice =3D entry-&gt;start / slice_=
size;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; end_slice =3D (entry-&gt;end - 1) / slic=
e_size;<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; DRM_DEBUG_KMS(&quot;ddb size %d slices %=
d slice size %d start slice %d end slice %d\n&quot;,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ddb_size, num_supported_slices,=
 slice_size, start_slice, end_slice);<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; /*<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * Per plane DDB entry can in a rea=
lly worst case be on multiple slices<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * but single entry is anyway conti=
gious.<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; */<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; while (start_slice &lt;=3D end_slice) {<=
br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; slice_mask |=3D 1 &lt;&lt; start_slice;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; start_slice&#43;&#43;;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; return slice_mask;<br>
&gt; &#43;}<br>
&gt; &#43;<br>
&gt;&nbsp; static u8 skl_compute_dbuf_slices(const struct intel_crtc_state =
*crtc_state,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u8 active_pipes);<br>
&gt;&nbsp; <br>
&gt; diff --git a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/i915/in=
tel_pm.h<br>
&gt; index d60a85421c5a..a9e3835927a8 100644<br>
&gt; --- a/drivers/gpu/drm/i915/intel_pm.h<br>
&gt; &#43;&#43;&#43; b/drivers/gpu/drm/i915/intel_pm.h<br>
&gt; @@ -37,6 &#43;37,9 @@ void skl_pipe_ddb_get_hw_state(struct intel_crtc=
 *crtc,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct skl_ddb_entry *ddb_y,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct skl_ddb_entry *ddb_uv);<br>
&gt;&nbsp; void skl_ddb_get_hw_state(struct drm_i915_private *dev_priv);<br=
>
&gt; &#43;u16 intel_get_ddb_size(struct drm_i915_private *dev_priv);<br>
&gt; &#43;u32 skl_ddb_dbuf_slice_mask(struct drm_i915_private *dev_priv,<br=
>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; const struct skl_ddb_entry *entry);<br>
&gt;&nbsp; void skl_pipe_wm_get_hw_state(struct intel_crtc *crtc,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; struct skl_pipe_wm *out);<br>
&gt;&nbsp; void g4x_wm_sanitize(struct drm_i915_private *dev_priv);<br>
&gt; -- <br>
&gt; 2.24.1.485.gad05a3d8e5<br>
<br>
-- <br>
Ville Syrj=E4l=E4<br>
Intel<br>
</div>
</span></font>
</body>
</html>

--_000_6c8125d6b0034763aad2d13642b369b9intelcom_--

--===============0403763768==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0403763768==--
