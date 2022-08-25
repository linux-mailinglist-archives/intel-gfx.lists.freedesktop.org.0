Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 365285A09B7
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Aug 2022 09:16:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14226991E4;
	Thu, 25 Aug 2022 07:16:00 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A563811B49F;
 Thu, 25 Aug 2022 07:15:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661411711; x=1692947711;
 h=mime-version:content-transfer-encoding:in-reply-to:
 references:subject:to:cc:from:message-id:date;
 bh=kmQltTAKioKTJagqvRFDooA/OZBnTtIVZ7/7XGNDZfc=;
 b=YspZE8pGHTkeS+3nB3xHPk6yN7aAaiMB5Ry1GDR3sQ0IgD7fc9eJewUW
 vRWxHD3EDF0IK5RUN1ExNFtA76DZzTKhBurTzVaNRe1xf5gJzysUdl2nh
 JkPCJis7o3kK6iPsLWM5XNa7wfSKXs68o+CMFk0HpUpCl4XG/SPOfAvLA
 iDjqv+v6Ze8/sMwjmNSN+HWNfUOVpxOMzlToWeMlZFwQrjMtQbYZtMw+L
 Erusi4eaVrRBza8SmzsULz41gwm7IvYc+gy4JY50IihprGIiHMWae3dRo
 HDLfzVsbYuFtzoy6qVU4A9NLTag0iqJ9/ce9ahOzTCJevHU4CY7Xhkqx6 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10449"; a="320241387"
X-IronPort-AV: E=Sophos;i="5.93,262,1654585200"; d="scan'208";a="320241387"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2022 00:15:10 -0700
X-IronPort-AV: E=Sophos;i="5.93,262,1654585200"; d="scan'208";a="639471984"
Received: from pszepiet-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.12.231])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2022 00:15:08 -0700
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <4bd7b51a-caf0-d987-c7df-6cfb24f36597@intel.com>
References: <20220728022028.2190627-1-John.C.Harrison@Intel.com>
 <20220728022028.2190627-7-John.C.Harrison@Intel.com>
 <166133167788.14547.12249088266216764022@jlahtine-mobl.ger.corp.intel.com>
 <4bd7b51a-caf0-d987-c7df-6cfb24f36597@intel.com>
To: Intel-GFX@Lists.FreeDesktop.Org, John Harrison <john.c.harrison@intel.com>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <166141170600.5625.4355115277022948576@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Thu, 25 Aug 2022 10:15:06 +0300
Subject: Re: [Intel-gfx] [PATCH 6/7] drm/i915/guc: Make GuC log sizes
 runtime configurable
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
Cc: DRI-Devel@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting John Harrison (2022-08-24 21:45:09)
> On 8/24/2022 02:01, Joonas Lahtinen wrote:
> > NACK on this one. Let's get this reverted or fixed to eliminate
> > new module parameters.
> >
> > What prevents us just from using the maximum sizes? Or alternatively
> > we could check the already existing drm.debug variable or anything else
> > but addding 3 new module parameters.
> We don't want to waste 24MB of memory for all users when 99.999% of them =

> don't care about GuC logs.

It is not exactly wasting memory if it is what is needed to capture
the error logs to properly debug a system. And it's definitely not much
on any modern system where you will have a GPU. You can always leave
the Kconfig options in place for the cases where it matters.

On the other hand, if 99.999% don't need this, then it could just stay
as a kernel config time option as well?

> We also don't want to tie the GuC logging buffer size to the DRM=20
> debugging output. Enabling kernel debug output can change timings and=20
> prevent the issue that one is trying to capture in the GuC log. And it=20
> seems unlikely we could add an entire new top level DRM debug flag just=20
> for an internal i915 only log buffer size. Plus drm.debug is explicitly=20
> stated as being dynamically changeable via sysfs at any time. The GuC=20
> log buffer size cannot be changed without reloading the i915 driver. Or=20
> at least, not without reloading the GuC, but we definitely don't want to =

> create a UAPI for arbitrarily reloading the GuC.
>=20
> We can make these parameters 'unsafe' so that they taint the kernel if=20
> used. But this is exactly what module parameters are for - configuration =

> that we don't want to hardcode as CONFIG options but which must be set=20
> at module load time.

It's better to have sane defaults. And if somebody wants something
strange, they can have a Kconfig behind EXPERT option. But even then
there should really be need for it.

So for now, let's get the module parameters reverted and go with
reasonable default buffer sizes when GuC is enabled. The compile time
options can be left in place.

Thank you in advance.

Regards, Joonas

>=20
> John.
>=20
> >
> > For future reference, please do Cc maintainers when adding new uAPI
> > like module parameters.
> >
> > Regards, Joonas
> >
> > Quoting John.C.Harrison@Intel.com (2022-07-28 05:20:27)
> >> From: John Harrison <John.C.Harrison@Intel.com>
> >>
> >> The GuC log buffer sizes had to be configured statically at compile
> >> time. This can be quite troublesome when needing to get larger logs
> >> out of a released driver. So re-organise the code to allow a boot time
> >> module parameter override.
> >>
> >> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
> >> ---
> >>   drivers/gpu/drm/i915/gt/uc/intel_guc.c        |  53 ++----
> >>   .../gpu/drm/i915/gt/uc/intel_guc_capture.c    |  14 +-
> >>   drivers/gpu/drm/i915/gt/uc/intel_guc_log.c    | 176 ++++++++++++++++=
+-
> >>   drivers/gpu/drm/i915/gt/uc/intel_guc_log.h    |  42 +++--
> >>   drivers/gpu/drm/i915/i915_params.c            |  12 ++
> >>   drivers/gpu/drm/i915/i915_params.h            |   3 +
> >>   6 files changed, 226 insertions(+), 74 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/=
i915/gt/uc/intel_guc.c
> >> index ab4aacc516aa4..01f2705cb94a3 100644
> >> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> >> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> >> @@ -224,53 +224,22 @@ static u32 guc_ctl_feature_flags(struct intel_gu=
c *guc)
> >>  =20
> >>   static u32 guc_ctl_log_params_flags(struct intel_guc *guc)
> >>   {
> >> -       u32 offset =3D intel_guc_ggtt_offset(guc, guc->log.vma) >> PAG=
E_SHIFT;
> >> -       u32 flags;
> >> -
> >> -       #if (((CRASH_BUFFER_SIZE) % SZ_1M) =3D=3D 0)
> >> -       #define LOG_UNIT SZ_1M
> >> -       #define LOG_FLAG GUC_LOG_LOG_ALLOC_UNITS
> >> -       #else
> >> -       #define LOG_UNIT SZ_4K
> >> -       #define LOG_FLAG 0
> >> -       #endif
> >> -
> >> -       #if (((CAPTURE_BUFFER_SIZE) % SZ_1M) =3D=3D 0)
> >> -       #define CAPTURE_UNIT SZ_1M
> >> -       #define CAPTURE_FLAG GUC_LOG_CAPTURE_ALLOC_UNITS
> >> -       #else
> >> -       #define CAPTURE_UNIT SZ_4K
> >> -       #define CAPTURE_FLAG 0
> >> -       #endif
> >> -
> >> -       BUILD_BUG_ON(!CRASH_BUFFER_SIZE);
> >> -       BUILD_BUG_ON(!IS_ALIGNED(CRASH_BUFFER_SIZE, LOG_UNIT));
> >> -       BUILD_BUG_ON(!DEBUG_BUFFER_SIZE);
> >> -       BUILD_BUG_ON(!IS_ALIGNED(DEBUG_BUFFER_SIZE, LOG_UNIT));
> >> -       BUILD_BUG_ON(!CAPTURE_BUFFER_SIZE);
> >> -       BUILD_BUG_ON(!IS_ALIGNED(CAPTURE_BUFFER_SIZE, CAPTURE_UNIT));
> >> -
> >> -       BUILD_BUG_ON((CRASH_BUFFER_SIZE / LOG_UNIT - 1) >
> >> -                       (GUC_LOG_CRASH_MASK >> GUC_LOG_CRASH_SHIFT));
> >> -       BUILD_BUG_ON((DEBUG_BUFFER_SIZE / LOG_UNIT - 1) >
> >> -                       (GUC_LOG_DEBUG_MASK >> GUC_LOG_DEBUG_SHIFT));
> >> -       BUILD_BUG_ON((CAPTURE_BUFFER_SIZE / CAPTURE_UNIT - 1) >
> >> -                       (GUC_LOG_CAPTURE_MASK >> GUC_LOG_CAPTURE_SHIFT=
));
> >> +       struct intel_guc_log *log =3D &guc->log;
> >> +       u32 offset, flags;
> >> +
> >> +       GEM_BUG_ON(!log->sizes_initialised);
> >> +
> >> +       offset =3D intel_guc_ggtt_offset(guc, log->vma) >> PAGE_SHIFT;
> >>  =20
> >>          flags =3D GUC_LOG_VALID |
> >>                  GUC_LOG_NOTIFY_ON_HALF_FULL |
> >> -               CAPTURE_FLAG |
> >> -               LOG_FLAG |
> >> -               ((CRASH_BUFFER_SIZE / LOG_UNIT - 1) << GUC_LOG_CRASH_S=
HIFT) |
> >> -               ((DEBUG_BUFFER_SIZE / LOG_UNIT - 1) << GUC_LOG_DEBUG_S=
HIFT) |
> >> -               ((CAPTURE_BUFFER_SIZE / CAPTURE_UNIT - 1) << GUC_LOG_C=
APTURE_SHIFT) |
> >> +               log->sizes[GUC_LOG_SECTIONS_DEBUG].flag |
> >> +               log->sizes[GUC_LOG_SECTIONS_CAPTURE].flag |
> >> +               (log->sizes[GUC_LOG_SECTIONS_CRASH].count << GUC_LOG_C=
RASH_SHIFT) |
> >> +               (log->sizes[GUC_LOG_SECTIONS_DEBUG].count << GUC_LOG_D=
EBUG_SHIFT) |
> >> +               (log->sizes[GUC_LOG_SECTIONS_CAPTURE].count << GUC_LOG=
_CAPTURE_SHIFT) |
> >>                  (offset << GUC_LOG_BUF_ADDR_SHIFT);
> >>  =20
> >> -       #undef LOG_UNIT
> >> -       #undef LOG_FLAG
> >> -       #undef CAPTURE_UNIT
> >> -       #undef CAPTURE_FLAG
> >> -
> >>          return flags;
> >>   }
> >>  =20
> >> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c b/drivers/=
gpu/drm/i915/gt/uc/intel_guc_capture.c
> >> index b54b7883320b1..d2ac53d4f3b6e 100644
> >> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
> >> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
> >> @@ -656,16 +656,17 @@ static void check_guc_capture_size(struct intel_=
guc *guc)
> >>          struct drm_i915_private *i915 =3D guc_to_gt(guc)->i915;
> >>          int min_size =3D guc_capture_output_min_size_est(guc);
> >>          int spare_size =3D min_size * GUC_CAPTURE_OVERBUFFER_MULTIPLI=
ER;
> >> +       u32 buffer_size =3D intel_guc_log_section_size_capture(&guc->l=
og);
> >>  =20
> >>          if (min_size < 0)
> >>                  drm_warn(&i915->drm, "Failed to calculate GuC error s=
tate capture buffer minimum size: %d!\n",
> >>                           min_size);
> >> -       else if (min_size > CAPTURE_BUFFER_SIZE)
> >> +       else if (min_size > buffer_size)
> >>                  drm_warn(&i915->drm, "GuC error state capture buffer =
is too small: %d < %d\n",
> >> -                        CAPTURE_BUFFER_SIZE, min_size);
> >> -       else if (spare_size > CAPTURE_BUFFER_SIZE)
> >> +                        buffer_size, min_size);
> >> +       else if (spare_size > buffer_size)
> >>                  drm_notice(&i915->drm, "GuC error state capture buffe=
r maybe too small: %d < %d (min =3D %d)\n",
> >> -                          CAPTURE_BUFFER_SIZE, spare_size, min_size);
> >> +                          buffer_size, spare_size, min_size);
> >>   }
> >>  =20
> >>   /*
> >> @@ -1294,7 +1295,8 @@ static void __guc_capture_process_output(struct =
intel_guc *guc)
> >>  =20
> >>          log_buf_state =3D guc->log.buf_addr +
> >>                          (sizeof(struct guc_log_buffer_state) * GUC_CA=
PTURE_LOG_BUFFER);
> >> -       src_data =3D guc->log.buf_addr + intel_guc_get_log_buffer_offs=
et(GUC_CAPTURE_LOG_BUFFER);
> >> +       src_data =3D guc->log.buf_addr +
> >> +                  intel_guc_get_log_buffer_offset(&guc->log, GUC_CAPT=
URE_LOG_BUFFER);
> >>  =20
> >>          /*
> >>           * Make a copy of the state structure, inside GuC log buffer
> >> @@ -1302,7 +1304,7 @@ static void __guc_capture_process_output(struct =
intel_guc *guc)
> >>           * from it multiple times.
> >>           */
> >>          memcpy(&log_buf_state_local, log_buf_state, sizeof(struct guc=
_log_buffer_state));
> >> -       buffer_size =3D intel_guc_get_log_buffer_size(GUC_CAPTURE_LOG_=
BUFFER);
> >> +       buffer_size =3D intel_guc_get_log_buffer_size(&guc->log, GUC_C=
APTURE_LOG_BUFFER);
> >>          read_offset =3D log_buf_state_local.read_ptr;
> >>          write_offset =3D log_buf_state_local.sampled_write_ptr;
> >>          full_count =3D log_buf_state_local.buffer_full_cnt;
> >> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c b/drivers/gpu/=
drm/i915/gt/uc/intel_guc_log.c
> >> index 4722d4b18ed19..890b6853bd609 100644
> >> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
> >> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
> >> @@ -13,8 +13,158 @@
> >>   #include "intel_guc_capture.h"
> >>   #include "intel_guc_log.h"
> >>  =20
> >> +#if defined(CONFIG_DRM_I915_DEBUG_GUC)
> >> +#define GUC_LOG_DEFAULT_CRASH_BUFFER_SIZE      SZ_2M
> >> +#define GUC_LOG_DEFAULT_DEBUG_BUFFER_SIZE      SZ_16M
> >> +#define GUC_LOG_DEFAULT_CAPTURE_BUFFER_SIZE    SZ_4M
> >> +#elif defined(CONFIG_DRM_I915_DEBUG_GEM)
> >> +#define GUC_LOG_DEFAULT_CRASH_BUFFER_SIZE      SZ_1M
> >> +#define GUC_LOG_DEFAULT_DEBUG_BUFFER_SIZE      SZ_2M
> >> +#define GUC_LOG_DEFAULT_CAPTURE_BUFFER_SIZE    SZ_4M
> >> +#else
> >> +#define GUC_LOG_DEFAULT_CRASH_BUFFER_SIZE      SZ_8K
> >> +#define GUC_LOG_DEFAULT_DEBUG_BUFFER_SIZE      SZ_64K
> >> +#define GUC_LOG_DEFAULT_CAPTURE_BUFFER_SIZE    SZ_2M
> >> +#endif
> >> +
> >>   static void guc_log_copy_debuglogs_for_relay(struct intel_guc_log *l=
og);
> >>  =20
> >> +struct guc_log_section {
> >> +       u32 max;
> >> +       u32 flag;
> >> +       u32 default_val;
> >> +       const char *name;
> >> +};
> >> +
> >> +static s32 scale_log_param(struct intel_guc_log *log, const struct gu=
c_log_section *section,
> >> +                          s32 param)
> >> +{
> >> +       /* -1 means default */
> >> +       if (param < 0)
> >> +               return section->default_val;
> >> +
> >> +       /* Check for 32-bit overflow */
> >> +       if (param >=3D SZ_4K) {
> >> +               drm_err(&guc_to_gt(log_to_guc(log))->i915->drm, "Size =
too large for GuC %s log: %dMB!",
> >> +                       section->name, param);
> >> +               return section->default_val;
> >> +       }
> >> +
> >> +       /* Param units are 1MB */
> >> +       return param * SZ_1M;
> >> +}
> >> +
> >> +static void _guc_log_init_sizes(struct intel_guc_log *log)
> >> +{
> >> +       struct intel_guc *guc =3D log_to_guc(log);
> >> +       struct drm_i915_private *i915 =3D guc_to_gt(guc)->i915;
> >> +       static const struct guc_log_section sections[GUC_LOG_SECTIONS_=
LIMIT] =3D {
> >> +               {
> >> +                       GUC_LOG_CRASH_MASK >> GUC_LOG_CRASH_SHIFT,
> >> +                       GUC_LOG_LOG_ALLOC_UNITS,
> >> +                       GUC_LOG_DEFAULT_CRASH_BUFFER_SIZE,
> >> +                       "crash dump"
> >> +               },
> >> +               {
> >> +                       GUC_LOG_DEBUG_MASK >> GUC_LOG_DEBUG_SHIFT,
> >> +                       GUC_LOG_LOG_ALLOC_UNITS,
> >> +                       GUC_LOG_DEFAULT_DEBUG_BUFFER_SIZE,
> >> +                       "debug",
> >> +               },
> >> +               {
> >> +                       GUC_LOG_CAPTURE_MASK >> GUC_LOG_CAPTURE_SHIFT,
> >> +                       GUC_LOG_CAPTURE_ALLOC_UNITS,
> >> +                       GUC_LOG_DEFAULT_CAPTURE_BUFFER_SIZE,
> >> +                       "capture",
> >> +               }
> >> +       };
> >> +       s32 params[GUC_LOG_SECTIONS_LIMIT] =3D {
> >> +               i915->params.guc_log_size_crash,
> >> +               i915->params.guc_log_size_debug,
> >> +               i915->params.guc_log_size_capture,
> >> +       };
> >> +       int i;
> >> +
> >> +       for (i =3D 0; i < GUC_LOG_SECTIONS_LIMIT; i++)
> >> +               log->sizes[i].bytes =3D scale_log_param(log, sections =
+ i, params[i]);
> >> +
> >> +       /* If debug size > 1MB then bump default crash size to keep th=
e same units */
> >> +       if (log->sizes[GUC_LOG_SECTIONS_DEBUG].bytes >=3D SZ_1M &&
> >> +           (i915->params.guc_log_size_crash =3D=3D -1) &&
> >> +           GUC_LOG_DEFAULT_CRASH_BUFFER_SIZE < SZ_1M)
> >> +               log->sizes[GUC_LOG_SECTIONS_CRASH].bytes =3D SZ_1M;
> >> +
> >> +       /* Prepare the GuC API structure fields: */
> >> +       for (i =3D 0; i < GUC_LOG_SECTIONS_LIMIT; i++) {
> >> +               /* Convert to correct units */
> >> +               if ((log->sizes[i].bytes % SZ_1M) =3D=3D 0) {
> >> +                       log->sizes[i].units =3D SZ_1M;
> >> +                       log->sizes[i].flag =3D sections[i].flag;
> >> +               } else {
> >> +                       log->sizes[i].units =3D SZ_4K;
> >> +                       log->sizes[i].flag =3D 0;
> >> +               }
> >> +
> >> +               if (!IS_ALIGNED(log->sizes[i].bytes, log->sizes[i].uni=
ts))
> >> +                       drm_err(&i915->drm, "Mis-aligned GuC log %s si=
ze: 0x%X vs 0x%X!",
> >> +                               sections[i].name, log->sizes[i].bytes,=
 log->sizes[i].units);
> >> +               log->sizes[i].count =3D log->sizes[i].bytes / log->siz=
es[i].units;
> >> +
> >> +               if (!log->sizes[i].count) {
> >> +                       drm_err(&i915->drm, "Zero GuC log %s size!", s=
ections[i].name);
> >> +               } else {
> >> +                       /* Size is +1 unit */
> >> +                       log->sizes[i].count--;
> >> +               }
> >> +
> >> +               /* Clip to field size */
> >> +               if (log->sizes[i].count > sections[i].max) {
> >> +                       drm_err(&i915->drm, "GuC log %s size too large=
: %d vs %d!",
> >> +                               sections[i].name, log->sizes[i].count =
+ 1, sections[i].max + 1);
> >> +                       log->sizes[i].count =3D sections[i].max;
> >> +               }
> >> +       }
> >> +
> >> +       if (log->sizes[GUC_LOG_SECTIONS_CRASH].units !=3D log->sizes[G=
UC_LOG_SECTIONS_DEBUG].units) {
> >> +               drm_err(&i915->drm, "Unit mis-match for GuC log crash =
and debug sections: %d vs %d!",
> >> +                       log->sizes[GUC_LOG_SECTIONS_CRASH].units,
> >> +                       log->sizes[GUC_LOG_SECTIONS_DEBUG].units);
> >> +               log->sizes[GUC_LOG_SECTIONS_CRASH].units =3D log->size=
s[GUC_LOG_SECTIONS_DEBUG].units;
> >> +               log->sizes[GUC_LOG_SECTIONS_CRASH].count =3D 0;
> >> +       }
> >> +
> >> +       log->sizes_initialised =3D true;
> >> +}
> >> +
> >> +static void guc_log_init_sizes(struct intel_guc_log *log)
> >> +{
> >> +       if (log->sizes_initialised)
> >> +               return;
> >> +
> >> +       _guc_log_init_sizes(log);
> >> +}
> >> +
> >> +static u32 intel_guc_log_section_size_crash(struct intel_guc_log *log)
> >> +{
> >> +       guc_log_init_sizes(log);
> >> +
> >> +       return log->sizes[GUC_LOG_SECTIONS_CRASH].bytes;
> >> +}
> >> +
> >> +static u32 intel_guc_log_section_size_debug(struct intel_guc_log *log)
> >> +{
> >> +       guc_log_init_sizes(log);
> >> +
> >> +       return log->sizes[GUC_LOG_SECTIONS_DEBUG].bytes;
> >> +}
> >> +
> >> +u32 intel_guc_log_section_size_capture(struct intel_guc_log *log)
> >> +{
> >> +       guc_log_init_sizes(log);
> >> +
> >> +       return log->sizes[GUC_LOG_SECTIONS_CAPTURE].bytes;
> >> +}
> >> +
> >>   static u32 intel_guc_log_size(struct intel_guc_log *log)
> >>   {
> >>          /*
> >> @@ -38,7 +188,10 @@ static u32 intel_guc_log_size(struct intel_guc_log=
 *log)
> >>           *  |         Capture logs          |
> >>           *  +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D+ + CAPTURE_SIZE
> >>           */
> >> -       return PAGE_SIZE + CRASH_BUFFER_SIZE + DEBUG_BUFFER_SIZE + CAP=
TURE_BUFFER_SIZE;
> >> +       return PAGE_SIZE +
> >> +               intel_guc_log_section_size_crash(log) +
> >> +               intel_guc_log_section_size_debug(log) +
> >> +               intel_guc_log_section_size_capture(log);
> >>   }
> >>  =20
> >>   /**
> >> @@ -165,7 +318,8 @@ static void guc_move_to_next_buf(struct intel_guc_=
log *log)
> >>          smp_wmb();
> >>  =20
> >>          /* All data has been written, so now move the offset of sub b=
uffer. */
> >> -       relay_reserve(log->relay.channel, log->vma->obj->base.size - C=
APTURE_BUFFER_SIZE);
> >> +       relay_reserve(log->relay.channel, log->vma->obj->base.size -
> >> +                                         intel_guc_log_section_size_c=
apture(log));
> >>  =20
> >>          /* Switch to the next sub buffer */
> >>          relay_flush(log->relay.channel);
> >> @@ -210,15 +364,16 @@ bool intel_guc_check_log_buf_overflow(struct int=
el_guc_log *log,
> >>          return overflow;
> >>   }
> >>  =20
> >> -unsigned int intel_guc_get_log_buffer_size(enum guc_log_buffer_type t=
ype)
> >> +unsigned int intel_guc_get_log_buffer_size(struct intel_guc_log *log,
> >> +                                          enum guc_log_buffer_type ty=
pe)
> >>   {
> >>          switch (type) {
> >>          case GUC_DEBUG_LOG_BUFFER:
> >> -               return DEBUG_BUFFER_SIZE;
> >> +               return intel_guc_log_section_size_debug(log);
> >>          case GUC_CRASH_DUMP_LOG_BUFFER:
> >> -               return CRASH_BUFFER_SIZE;
> >> +               return intel_guc_log_section_size_crash(log);
> >>          case GUC_CAPTURE_LOG_BUFFER:
> >> -               return CAPTURE_BUFFER_SIZE;
> >> +               return intel_guc_log_section_size_capture(log);
> >>          default:
> >>                  MISSING_CASE(type);
> >>          }
> >> @@ -226,7 +381,8 @@ unsigned int intel_guc_get_log_buffer_size(enum gu=
c_log_buffer_type type)
> >>          return 0;
> >>   }
> >>  =20
> >> -size_t intel_guc_get_log_buffer_offset(enum guc_log_buffer_type type)
> >> +size_t intel_guc_get_log_buffer_offset(struct intel_guc_log *log,
> >> +                                      enum guc_log_buffer_type type)
> >>   {
> >>          enum guc_log_buffer_type i;
> >>          size_t offset =3D PAGE_SIZE;/* for the log_buffer_states */
> >> @@ -234,7 +390,7 @@ size_t intel_guc_get_log_buffer_offset(enum guc_lo=
g_buffer_type type)
> >>          for (i =3D GUC_DEBUG_LOG_BUFFER; i < GUC_MAX_LOG_BUFFER; ++i)=
 {
> >>                  if (i =3D=3D type)
> >>                          break;
> >> -               offset +=3D intel_guc_get_log_buffer_size(i);
> >> +               offset +=3D intel_guc_get_log_buffer_size(log, i);
> >>          }
> >>  =20
> >>          return offset;
> >> @@ -285,7 +441,7 @@ static void _guc_log_copy_debuglogs_for_relay(stru=
ct intel_guc_log *log)
> >>                   */
> >>                  memcpy(&log_buf_state_local, log_buf_state,
> >>                         sizeof(struct guc_log_buffer_state));
> >> -               buffer_size =3D intel_guc_get_log_buffer_size(type);
> >> +               buffer_size =3D intel_guc_get_log_buffer_size(log, typ=
e);
> >>                  read_offset =3D log_buf_state_local.read_ptr;
> >>                  write_offset =3D log_buf_state_local.sampled_write_pt=
r;
> >>                  full_cnt =3D log_buf_state_local.buffer_full_cnt;
> >> @@ -400,7 +556,7 @@ static int guc_log_relay_create(struct intel_guc_l=
og *log)
> >>            * Keep the size of sub buffers same as shared log buffer
> >>            * but GuC log-events excludes the error-state-capture logs
> >>            */
> >> -       subbuf_size =3D log->vma->size - CAPTURE_BUFFER_SIZE;
> >> +       subbuf_size =3D log->vma->size - intel_guc_log_section_size_ca=
pture(log);
> >>  =20
> >>          /*
> >>           * Store up to 8 snapshots, which is large enough to buffer s=
ufficient
> >> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.h b/drivers/gpu/=
drm/i915/gt/uc/intel_guc_log.h
> >> index dc9715411d626..02127703be809 100644
> >> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.h
> >> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.h
> >> @@ -15,20 +15,6 @@
> >>  =20
> >>   struct intel_guc;
> >>  =20
> >> -#if defined(CONFIG_DRM_I915_DEBUG_GUC)
> >> -#define CRASH_BUFFER_SIZE      SZ_2M
> >> -#define DEBUG_BUFFER_SIZE      SZ_16M
> >> -#define CAPTURE_BUFFER_SIZE    SZ_4M
> >> -#elif defined(CONFIG_DRM_I915_DEBUG_GEM)
> >> -#define CRASH_BUFFER_SIZE      SZ_1M
> >> -#define DEBUG_BUFFER_SIZE      SZ_2M
> >> -#define CAPTURE_BUFFER_SIZE    SZ_4M
> >> -#else
> >> -#define CRASH_BUFFER_SIZE      SZ_8K
> >> -#define DEBUG_BUFFER_SIZE      SZ_64K
> >> -#define CAPTURE_BUFFER_SIZE    SZ_2M
> >> -#endif
> >> -
> >>   /*
> >>    * While we're using plain log level in i915, GuC controls are much =
more...
> >>    * "elaborate"? We have a couple of bits for verbosity, separate bit=
 for actual
> >> @@ -46,10 +32,30 @@ struct intel_guc;
> >>   #define GUC_VERBOSITY_TO_LOG_LEVEL(x)  ((x) + 2)
> >>   #define GUC_LOG_LEVEL_MAX GUC_VERBOSITY_TO_LOG_LEVEL(GUC_LOG_VERBOSI=
TY_MAX)
> >>  =20
> >> +enum {
> >> +       GUC_LOG_SECTIONS_CRASH,
> >> +       GUC_LOG_SECTIONS_DEBUG,
> >> +       GUC_LOG_SECTIONS_CAPTURE,
> >> +       GUC_LOG_SECTIONS_LIMIT
> >> +};
> >> +
> >>   struct intel_guc_log {
> >>          u32 level;
> >> +
> >> +       /* Allocation settings */
> >> +       struct {
> >> +               s32 bytes;      /* Size in bytes */
> >> +               s32 units;      /* GuC API units - 1MB or 4KB */
> >> +               s32 count;      /* Number of API units */
> >> +               u32 flag;       /* GuC API units flag */
> >> +       } sizes[GUC_LOG_SECTIONS_LIMIT];
> >> +       bool sizes_initialised;
> >> +
> >> +       /* Combined buffer allocation */
> >>          struct i915_vma *vma;
> >>          void *buf_addr;
> >> +
> >> +       /* RelayFS support */
> >>          struct {
> >>                  bool buf_in_use;
> >>                  bool started;
> >> @@ -58,6 +64,7 @@ struct intel_guc_log {
> >>                  struct mutex lock;
> >>                  u32 full_count;
> >>          } relay;
> >> +
> >>          /* logging related stats */
> >>          struct {
> >>                  u32 sampled_overflow;
> >> @@ -69,8 +76,9 @@ struct intel_guc_log {
> >>   void intel_guc_log_init_early(struct intel_guc_log *log);
> >>   bool intel_guc_check_log_buf_overflow(struct intel_guc_log *log, enu=
m guc_log_buffer_type type,
> >>                                        unsigned int full_cnt);
> >> -unsigned int intel_guc_get_log_buffer_size(enum guc_log_buffer_type t=
ype);
> >> -size_t intel_guc_get_log_buffer_offset(enum guc_log_buffer_type type);
> >> +unsigned int intel_guc_get_log_buffer_size(struct intel_guc_log *log,
> >> +                                          enum guc_log_buffer_type ty=
pe);
> >> +size_t intel_guc_get_log_buffer_offset(struct intel_guc_log *log, enu=
m guc_log_buffer_type type);
> >>   int intel_guc_log_create(struct intel_guc_log *log);
> >>   void intel_guc_log_destroy(struct intel_guc_log *log);
> >>  =20
> >> @@ -92,4 +100,6 @@ void intel_guc_log_info(struct intel_guc_log *log, =
struct drm_printer *p);
> >>   int intel_guc_log_dump(struct intel_guc_log *log, struct drm_printer=
 *p,
> >>                         bool dump_load_err);
> >>  =20
> >> +u32 intel_guc_log_section_size_capture(struct intel_guc_log *log);
> >> +
> >>   #endif
> >> diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915=
/i915_params.c
> >> index 6fc475a5db615..06ca5b8221118 100644
> >> --- a/drivers/gpu/drm/i915/i915_params.c
> >> +++ b/drivers/gpu/drm/i915/i915_params.c
> >> @@ -171,6 +171,18 @@ i915_param_named(guc_log_level, int, 0400,
> >>          "GuC firmware logging level. Requires GuC to be loaded. "
> >>          "(-1=3Dauto [default], 0=3Ddisable, 1..4=3Denable with verbos=
ity min..max)");
> >>  =20
> >> +i915_param_named(guc_log_size_crash, int, 0400,
> >> +       "GuC firmware logging buffer size for crash dumps (in MB)"
> >> +       "(-1=3Dauto [default], NB: max =3D 4, other restrictions apply=
)");
> >> +
> >> +i915_param_named(guc_log_size_debug, int, 0400,
> >> +       "GuC firmware logging buffer size for debug logs (in MB)"
> >> +       "(-1=3Dauto [default], NB: max =3D 16, other restrictions appl=
y)");
> >> +
> >> +i915_param_named(guc_log_size_capture, int, 0400,
> >> +       "GuC error capture register dump buffer size (in MB)"
> >> +       "(-1=3Dauto [default], NB: max =3D 4, other restrictions apply=
)");
> >> +
> >>   i915_param_named_unsafe(guc_firmware_path, charp, 0400,
> >>          "GuC firmware path to use instead of the default one");
> >>  =20
> >> diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915=
/i915_params.h
> >> index 2733cb6cfe094..f684d1ab87078 100644
> >> --- a/drivers/gpu/drm/i915/i915_params.h
> >> +++ b/drivers/gpu/drm/i915/i915_params.h
> >> @@ -61,6 +61,9 @@ struct drm_printer;
> >>          param(int, invert_brightness, 0, 0600) \
> >>          param(int, enable_guc, -1, 0400) \
> >>          param(int, guc_log_level, -1, 0400) \
> >> +       param(int, guc_log_size_crash, -1, 0400) \
> >> +       param(int, guc_log_size_debug, -1, 0400) \
> >> +       param(int, guc_log_size_capture, -1, 0400) \
> >>          param(char *, guc_firmware_path, NULL, 0400) \
> >>          param(char *, huc_firmware_path, NULL, 0400) \
> >>          param(char *, dmc_firmware_path, NULL, 0400) \
> >> --=20
> >> 2.37.1
> >>
>=20
