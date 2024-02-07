Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA82784C9AD
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Feb 2024 12:36:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31E74113235;
	Wed,  7 Feb 2024 11:36:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nIzVapPd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41A2F10EBBF
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Feb 2024 11:36:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707305772; x=1738841772;
 h=mime-version:content-transfer-encoding:in-reply-to:
 references:to:cc:from:subject:message-id:date;
 bh=rUev5lckbbqdOASxkNMID/fLTDc0QhIFe3VPu4x/qFo=;
 b=nIzVapPdgD6uGxzmrkrfgZQCY38h/VzNm7XDS8Lfl9ajhj7Bl8QeOG2/
 LsGSF7xH4w9WYLrJff7QBQ7n5NmvnxyDXhVNkJgrTAqi6O1sRp9msoq8l
 ijsXdysvUfzbWKsqJ9jDN/2hRrZ73aQitj0bAMkaMdSpKvEl7i+D5dv3A
 OMOWp+1CJ4ekAkMdyDqn/fHG/++M2Us7ucA3PHzmd1o2gLZOF9RadhHYp
 gwBlhThmUH0TJyjbfr1r9TjrUR5AVqPgl1zGJdWU2DMVE3JwSXi+kDFOS
 5hrfjiBm7s9mX2j71ZQh+TIM8TzomOfjkd/4VhWj5x7zYrD1ocWwn4TTP Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10976"; a="859915"
X-IronPort-AV: E=Sophos;i="6.05,250,1701158400"; 
   d="scan'208";a="859915"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2024 03:36:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,250,1701158400"; 
   d="scan'208";a="5926640"
Received: from unknown (HELO localhost) ([10.245.244.8])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2024 03:36:09 -0800
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <5a190ddc-5739-4b39-86e4-afaef7b76244@linux.intel.com>
References: <20240124081915.68953-1-joonas.lahtinen@linux.intel.com>
 <f04e6301-c41e-4293-96a7-6d1fa8f8304d@linux.intel.com>
 <fe98dc0052a87bf4b916f34813233d7fa69752a1.camel@intel.com>
 <531ad2c0-445a-4fdc-bdb7-d50bf70d5c69@linux.intel.com>
 <e32a2e57-97b6-4872-a89e-d32224a8d834@intel.com>
 <ebc1d9a29f2fd91f371393be07e95a76b63ae47b.camel@intel.com>
 <5a190ddc-5739-4b39-86e4-afaef7b76244@linux.intel.com>
To: "Balasubrawmanian, Vivaik" <vivaik.balasubrawmanian@intel.com>, "Harrison,
 John C" <john.c.harrison@intel.com>, "Souza, Jose" <jose.souza@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: "Ursulin, Tvrtko" <tvrtko.ursulin@intel.com>, "Nikula,
 Jani" <jani.nikula@intel.com>, "kenneth@whitecape.org" <kenneth@whitecape.org>,
 "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, "Zanoni,
 Paulo R" <paulo.r.zanoni@intel.com>, "Ghuge, Sagar" <sagar.ghuge@intel.com>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Subject: Re: [RFC PATCH] drm/i915: Add GETPARAM for GuC submission version
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <170730576548.11898.4029866271114753571@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Wed, 07 Feb 2024 13:36:05 +0200
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

Quoting Tvrtko Ursulin (2024-02-07 10:44:01)
>=20
> On 06/02/2024 20:51, Souza, Jose wrote:
> > On Tue, 2024-02-06 at 12:42 -0800, John Harrison wrote:
> >> On 2/6/2024 08:33, Tvrtko Ursulin wrote:
> >>> On 01/02/2024 18:25, Souza, Jose wrote:
> >>>> On Wed, 2024-01-24 at 08:55 +0000, Tvrtko Ursulin wrote:
> >>>>> On 24/01/2024 08:19, Joonas Lahtinen wrote:
> >>>>>> Add reporting of the GuC submissio/VF interface version via GETPAR=
AM
> >>>>>> properties. Mesa intends to use this information to check for old
> >>>>>> firmware versions with known bugs before enabling features like as=
ync
> >>>>>> compute.
> >>>>>
> >>>>> There was
> >>>>> https://patchwork.freedesktop.org/patch/560704/?series=3D124592&rev=
=3D1
> >>>>> which does everything in one go so would be my preference.
> >>>>
> >>>> IMO Joonas version brings less burden to be maintained(no new struct=
).
> >>>> But both versions works, please just get into some agreement so we
> >>>> can move this forward.
> >>>
> >>> So I would really prefer the query. Simplified version would do like
> >>> the compile tested only:
> >> Vivaik's patch is definitely preferred. It is much cleaner to make one
> >> single call than having to make four separate calls. It is also
> >> extensible to other firmwares if required. The only blockage against it
> >> was whether it was a good thing to report at all. If that blockage is =
no
> >> longer valid then we should just merge the patch that has already been
> >> discussed, polished, fixed, etc. rather than starting the whole process
> >> from scratch.
> >=20
> > Agreed.
> >=20
> > Vivaik can you please rebase and send it again?
>=20
> Note there was review feedback not addressed so do that too please.=20
> AFAIR incorrect usage of copy item, pad/rsvd/mbz checking and questions=20
> about padding in general. Last is why I proposed a simplified version=20
> which is not future extensible and avoids the need for padding.

Yeah, I don't think there is point an adding an extensible interface as
we're not going to add further FW version queries. This only the
submission interface version we're going to expose:

         * Note that the spec for the CSS header defines this version number
         * as 'vf_version' as it was originally intended for virtualisation.
         * However, it is applicable to native submission as well.

If somebody wants to work on the simplified version like Tvrtko
suggested below, I have no objection. We can also remove the reference
to the VF version even if that's used by the header definition.

But if there are just suggestions but no actual patches floated, then we
should be merging the GETPARAM version with the "VF" word removed.

We've already discussed on the topic for some months so doing the
minimal changes to fulfill Mesa requirements should be considered a
priority to avoid further delays.

>=20
> Regards,
>=20
> Tvrtko
>=20
> >=20
> >=20
> >>
> >> And note that it is four calls not three. The code below is missing the
> >> branch version number.

Not even kernel uses the 'build' version anywhere. I don't see how there
could be 'build' version for the VF interface version? It's not supposed
to version a concrete firmware build but the API contract implemented by
the build where patch version should already be incremented for each
fix.

So adding the build does not seem appropriate as there is no plan to
extend this API any further.

Regards, Joonas=20

> >>
> >> John.
> >>
> >>>
> >>> diff --git a/drivers/gpu/drm/i915/i915_query.c
> >>> b/drivers/gpu/drm/i915/i915_query.c
> >>> index 00871ef99792..999687f6a3d4 100644
> >>> --- a/drivers/gpu/drm/i915/i915_query.c
> >>> +++ b/drivers/gpu/drm/i915/i915_query.c
> >>> @@ -551,6 +551,37 @@ static int query_hwconfig_blob(struct
> >>> drm_i915_private *i915,
> >>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return hwconfig->size;
> >>>  =C2=A0}
> >>>
> >>> +static int
> >>> +query_guc_submission_version(struct drm_i915_private *i915,
> >>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 struct drm_i915_query_item *query)
> >>> +{
> >>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct drm_i915_query_guc_submi=
ssion_version __user *query_ptr =3D
> >>> + u64_to_user_ptr(query->data_ptr);
> >>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct drm_i915_query_guc_submi=
ssion_version ver;
> >>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct intel_guc *guc =3D &to_g=
t(i915)->uc.guc;
> >>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 const size_t size =3D sizeof(ve=
r);
> >>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 int ret;
> >>> +
> >>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (!intel_uc_uses_guc_submissi=
on(&to_gt(i915)->uc))
> >>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 return -ENODEV;
> >>> +
> >>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ret =3D copy_query_item(&ver, s=
ize, size, query);
> >>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (ret !=3D 0)
> >>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 return ret;
> >>> +
> >>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (ver.major || ver.minor || v=
er.patch)
> >>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 return -EINVAL;
> >>> +
> >>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ver.major =3D guc->submission_v=
ersion.major;
> >>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ver.minor =3D guc->submission_v=
ersion.minor;
> >>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ver.patch =3D guc->submission_v=
ersion.patch;
> >>> +
> >>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (copy_to_user(query_ptr, &ve=
r, size))
> >>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 return -EFAULT;
> >>> +
> >>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return 0;
> >>> +}
> >>> +
> >>>  =C2=A0static int (* const i915_query_funcs[])(struct drm_i915_private
> >>> *dev_priv,
> >>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 struct drm_i915_query_item
> >>> *query_item) =3D {
> >>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 query_topology_info,
> >>> @@ -559,6 +590,7 @@ static int (* const i915_query_funcs[])(struct
> >>> drm_i915_private *dev_priv,
> >>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 query_memregion_info,
> >>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 query_hwconfig_blob,
> >>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 query_geometry_subslices,
> >>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 query_guc_submission_version,
> >>>  =C2=A0};
> >>>
> >>>  =C2=A0int i915_query_ioctl(struct drm_device *dev, void *data, struct
> >>> drm_file *file)
> >>> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
> >>> index 550c496ce76d..d80d9b5e1eda 100644
> >>> --- a/include/uapi/drm/i915_drm.h
> >>> +++ b/include/uapi/drm/i915_drm.h
> >>> @@ -3038,6 +3038,7 @@ struct drm_i915_query_item {
> >>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 *=C2=A0 - %DRM_I915=
_QUERY_MEMORY_REGIONS (see struct
> >>> drm_i915_query_memory_regions)
> >>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 *=C2=A0 - %DRM_I915=
_QUERY_HWCONFIG_BLOB (see `GuC HWCONFIG blob
> >>> uAPI`)
> >>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 *=C2=A0 - %DRM_I915=
_QUERY_GEOMETRY_SUBSLICES (see struct
> >>> drm_i915_query_topology_info)
> >>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 *=C2=A0 - %DRM_I915_QUERY=
_GUC_SUBMISSION_VERSION (see struct
> >>> drm_i915_query_guc_submission_version)
> >>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 */
> >>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 __u64 query_id;
> >>>  =C2=A0#define DRM_I915_QUERY_TOPOLOGY_INFO=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1
> >>> @@ -3046,6 +3047,7 @@ struct drm_i915_query_item {
> >>>  =C2=A0#define DRM_I915_QUERY_MEMORY_REGIONS=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 4
> >>>  =C2=A0#define DRM_I915_QUERY_HWCONFIG_BLOB=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 5
> >>>  =C2=A0#define DRM_I915_QUERY_GEOMETRY_SUBSLICES=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 6
> >>> +#define DRM_I915_QUERY_GUC_SUBMISSION_VERSION=C2=A0 7
> >>>  =C2=A0/* Must be kept compact -- no holes and well documented */
> >>>
> >>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /**
> >>> @@ -3591,6 +3593,15 @@ struct drm_i915_query_memory_regions {
> >>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct drm_i915_memory_re=
gion_info regions[];
> >>>  =C2=A0};
> >>>
> >>> +/**
> >>> +* struct drm_i915_query_guc_submission_version - query GuC submission
> >>> interface version
> >>> +*/
> >>> +struct drm_i915_query_guc_submission_version {
> >>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 __u64 major;
> >>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 __u64 minor;
> >>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 __u64 patch;
> >>> +};
> >>> +
> >>>  =C2=A0/**
> >>>  =C2=A0 * DOC: GuC HWCONFIG blob uAPI
> >>>  =C2=A0 *
> >>>
> >>> It is not that much bigger that the triple get param and IMO nicer.
> >>>
> >>> But if there is no motivation to do it properly then feel free to
> >>> proceed with this, I will not block it.
> >>>
> >>> Regards,
> >>>
> >>> Tvrtko
> >>>
> >>> P.S.
> >>> Probably still make sure to remove the reference to SR-IOV.
> >>>
> >>>>
> >>>>>
> >>>>> During the time of that patch there was discussion whether firmware
> >>>>> version or submission version was better. I vaguely remember someone
> >>>>> raised an issue with the latter. Adding John in case he remembers.
> >>>>>
> >>>>>> Signed-off-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> >>>>>> Cc: Kenneth Graunke <kenneth@whitecape.org>
> >>>>>> Cc: Jose Souza <jose.souza@intel.com>
> >>>>>> Cc: Sagar Ghuge <sagar.ghuge@intel.com>
> >>>>>> Cc: Paulo Zanoni <paulo.r.zanoni@intel.com>
> >>>>>> Cc: John Harrison <John.C.Harrison@Intel.com>
> >>>>>> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> >>>>>> Cc: Jani Nikula <jani.nikula@intel.com>
> >>>>>> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> >>>>>> ---
> >>>>>>  =C2=A0=C2=A0 drivers/gpu/drm/i915/i915_getparam.c | 12 ++++++++++=
++
> >>>>>>  =C2=A0=C2=A0 include/uapi/drm/i915_drm.h=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 13 +++++++++++++
> >>>>>>  =C2=A0=C2=A0 2 files changed, 25 insertions(+)
> >>>>>>
> >>>>>> diff --git a/drivers/gpu/drm/i915/i915_getparam.c
> >>>>>> b/drivers/gpu/drm/i915/i915_getparam.c
> >>>>>> index 5c3fec63cb4c1..f176372debc54 100644
> >>>>>> --- a/drivers/gpu/drm/i915/i915_getparam.c
> >>>>>> +++ b/drivers/gpu/drm/i915/i915_getparam.c
> >>>>>> @@ -113,6 +113,18 @@ int i915_getparam_ioctl(struct drm_device
> >>>>>> *dev, void *data,
> >>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (=
value < 0)
> >>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 return value;
> >>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 brea=
k;
> >>>>>> +=C2=A0=C2=A0=C2=A0 case I915_PARAM_GUC_SUBMISSION_VERSION_MAJOR:
> >>>>>> +=C2=A0=C2=A0=C2=A0 case I915_PARAM_GUC_SUBMISSION_VERSION_MINOR:
> >>>>>> +=C2=A0=C2=A0=C2=A0 case I915_PARAM_GUC_SUBMISSION_VERSION_PATCH:
> >>>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (!intel_uc_uses_guc=
_submission(&to_gt(i915)->uc))
> >>>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 return -ENODEV;
> >>>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (param->param =3D=
=3D I915_PARAM_GUC_SUBMISSION_VERSION_MAJOR)
> >>>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 value =3D to_gt(i915)->uc.guc.submission_version.major;
> >>>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 else if (param->param =
=3D=3D
> >>>>>> I915_PARAM_GUC_SUBMISSION_VERSION_MINOR)
> >>>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 value =3D to_gt(i915)->uc.guc.submission_version.minor;
> >>>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 else
> >>>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 value =3D to_gt(i915)->uc.guc.submission_version.patch;
> >>>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 break;
> >>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 case I915_PARAM_MMAP_GTT_VER=
SION:
> >>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /* T=
hough we've started our numbering from 1, and so
> >>>>>> class all
> >>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 * earlier versions as 0, in effect their value is
> >>>>>> undefined as
> >>>>>> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_d=
rm.h
> >>>>>> index fd4f9574d177a..7d5a47f182542 100644
> >>>>>> --- a/include/uapi/drm/i915_drm.h
> >>>>>> +++ b/include/uapi/drm/i915_drm.h
> >>>>>> @@ -806,6 +806,19 @@ typedef struct drm_i915_irq_wait {
> >>>>>>  =C2=A0=C2=A0=C2=A0 */
> >>>>>>  =C2=A0=C2=A0 #define I915_PARAM_PXP_STATUS=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 58
> >>>>>>  =C2=A0=C2=A0 +/*
> >>>>>> + * Query for the GuC submission/VF interface version number
> >>>>>
> >>>>> What is this VF you speak of? :/
> >>>>>
> >>>>> Regards,
> >>>>>
> >>>>> Tvrtko
> >>>>>
> >>>>>> + *
> >>>>>> + * -ENODEV is returned if GuC submission is not used
> >>>>>> + *
> >>>>>> + * On success, returns the respective GuC submission/VF interface
> >>>>>> major,
> >>>>>> + * minor or patch version as per the requested parameter.
> >>>>>> + *
> >>>>>> + */
> >>>>>> +#define I915_PARAM_GUC_SUBMISSION_VERSION_MAJOR 59
> >>>>>> +#define I915_PARAM_GUC_SUBMISSION_VERSION_MINOR 60
> >>>>>> +#define I915_PARAM_GUC_SUBMISSION_VERSION_PATCH 61
> >>>>>> +
> >>>>>>  =C2=A0=C2=A0 /* Must be kept compact -- no holes and well documen=
ted */
> >>>>>>  =C2=A0=C2=A0 =C2=A0=C2=A0 /**
> >>>>
> >>
> >=20
