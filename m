Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CEC456E6913
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Apr 2023 18:13:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 201F310E7E4;
	Tue, 18 Apr 2023 16:13:39 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mail-oo1-xc2b.google.com (mail-oo1-xc2b.google.com
 [IPv6:2607:f8b0:4864:20::c2b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE8F710E330;
 Tue, 18 Apr 2023 16:13:36 +0000 (UTC)
Received: by mail-oo1-xc2b.google.com with SMTP id
 006d021491bc7-541eee15ef5so523524eaf.1; 
 Tue, 18 Apr 2023 09:13:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1681834416; x=1684426416;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=n5N9vLchBu9jeKOb/JMvfvoNBFKRQJpH1E6oy7yWn2E=;
 b=Xu4PQiDGkRwzQMBDgmcwrl1mAyquoS8YFBDlsQnE12H6MScRPtUJ+yUB6h13iDXNG1
 Y5aQfJ9y6UHwiqJ5I6MXcKYxVgPIU6JpYjaJgzNnabP2AV2CWsm7Q4HwOtTy1mbsuFgy
 j3v8pCgvEAYpWWW6spDHD2+2tUWeEPtwiyU5Ttr/296Ho3trfwV11pq7icMFAltY2WJw
 XfzKtLt0ZDcc1c4G6ggEtFl/Tlmn4zbYBtGsTAs2gcRw8F3WH5zErqzv0Evr7x7bpZop
 QNPXKn0wCxIawvqtgM0qx9NbOHrTDAadqyFJXFH4FxmlVyR57h11GqduKxrRWhUeNkYo
 l9mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681834416; x=1684426416;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=n5N9vLchBu9jeKOb/JMvfvoNBFKRQJpH1E6oy7yWn2E=;
 b=DtPt/pQ2d2zUV/Ril5a643mUsIYZnn3PxCdoXeQz9HdcObsf10Xu4GJ6f6GlDLX8Lv
 +tTDTv+TXlLUlN3LBDRc3rX/0zTPtiHNv3hLTAD7m7vBfAuy3RUJfW+8N6ZyuU4/O1CX
 aMAnScLOVhn4klGXKrGAvpXqQnmPZWmnXBUFiM75HgtpyXi5QXyvgbvRdZNsgr/4r8As
 889VBjpIjTHzfuRRpJgfRT74rQK7ixVVxzZS1ydYhf3Lf7vjzzn+mSJDoLBbu8J0o+8B
 ahAc49xsWvUP37rlIrceWad7uhuFvR3ZbAfliMx1PNnpMvG8FUuPIg/nL2T5SZIt6Cgp
 G2NA==
X-Gm-Message-State: AAQBX9eDrqu7yWyQ49oZSArfE2hPb0M+jqhulee2OkBJOpR7xE2PfOLa
 rE+O8KHQRG0gfq37+GxLGJiRx41l7pxbg3XCjmV8rqIP
X-Google-Smtp-Source: AKy350bR+j/4PpQEXbOsIr3wXG4Z/e5gxESTE2FhxdzzJRxC5j2gqxh0S5ff1wSWho4+9QlHD3qdUWBVFH0xAsuMu9s=
X-Received: by 2002:aca:e0c6:0:b0:38b:d8a9:9d95 with SMTP id
 x189-20020acae0c6000000b0038bd8a99d95mr780275oig.5.1681834415590; Tue, 18 Apr
 2023 09:13:35 -0700 (PDT)
MIME-Version: 1.0
References: <20230417155613.4143258-1-tvrtko.ursulin@linux.intel.com>
 <20230417155613.4143258-4-tvrtko.ursulin@linux.intel.com>
 <CAF6AEGu3oagVYqBcgqKFO6-gbLbVdFn51fKeV7CfWTJXJjTNYA@mail.gmail.com>
 <fca966cf-df17-a937-8330-b2353f1a352c@linux.intel.com>
 <CAF6AEGswZZZxwRTOXbCVKmhUYwz8BSu-GDVCJ=FfyJ-w=e4dLQ@mail.gmail.com>
 <0faa3b0f-342c-87e0-9587-f8c11131689e@linux.intel.com>
 <CAF6AEGu+AbQnPV-1goqJi_RJR7TB8Ta5FXTKn-j6Aq4fiuPN2w@mail.gmail.com>
 <8a16f714-d20a-7608-a08f-88b20dc05d86@linux.intel.com>
In-Reply-To: <8a16f714-d20a-7608-a08f-88b20dc05d86@linux.intel.com>
From: Rob Clark <robdclark@gmail.com>
Date: Tue, 18 Apr 2023 09:13:24 -0700
Message-ID: <CAF6AEGuhYNY6z0rHBufVJvXmXrpb9yQRqGrdJkzBK_kFcE0Vtg@mail.gmail.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [RFC 3/6] drm: Add fdinfo memory stats
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, Intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, Alex Deucher <alexdeucher@gmail.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 18, 2023 at 7:46=E2=80=AFAM Tvrtko Ursulin
<tvrtko.ursulin@linux.intel.com> wrote:
>
>
> On 18/04/2023 15:36, Rob Clark wrote:
> > On Tue, Apr 18, 2023 at 7:19=E2=80=AFAM Tvrtko Ursulin
> > <tvrtko.ursulin@linux.intel.com> wrote:
> >>
> >>
> >> On 18/04/2023 14:49, Rob Clark wrote:
> >>> On Tue, Apr 18, 2023 at 2:00=E2=80=AFAM Tvrtko Ursulin
> >>> <tvrtko.ursulin@linux.intel.com> wrote:
> >>>>
> >>>>
> >>>> On 17/04/2023 20:39, Rob Clark wrote:
> >>>>> On Mon, Apr 17, 2023 at 8:56=E2=80=AFAM Tvrtko Ursulin
> >>>>> <tvrtko.ursulin@linux.intel.com> wrote:
> >>>>>>
> >>>>>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> >>>>>>
> >>>>>> Add support to dump GEM stats to fdinfo.
> >>>>>>
> >>>>>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> >>>>>> ---
> >>>>>>     Documentation/gpu/drm-usage-stats.rst | 12 +++++++
> >>>>>>     drivers/gpu/drm/drm_file.c            | 52 +++++++++++++++++++=
++++++++
> >>>>>>     include/drm/drm_drv.h                 |  7 ++++
> >>>>>>     include/drm/drm_file.h                |  8 +++++
> >>>>>>     4 files changed, 79 insertions(+)
> >>>>>>
> >>>>>> diff --git a/Documentation/gpu/drm-usage-stats.rst b/Documentation=
/gpu/drm-usage-stats.rst
> >>>>>> index 2ab32c40e93c..8273a41b2fb0 100644
> >>>>>> --- a/Documentation/gpu/drm-usage-stats.rst
> >>>>>> +++ b/Documentation/gpu/drm-usage-stats.rst
> >>>>>> @@ -21,6 +21,7 @@ File format specification
> >>>>>>
> >>>>>>     - File shall contain one key value pair per one line of text.
> >>>>>>     - Colon character (`:`) must be used to delimit keys and value=
s.
> >>>>>> +- Caret (`^`) is also a reserved character.
> >>>>>
> >>>>> this doesn't solve the problem that led me to drm-$CATEGORY-memory.=
.. ;-)
> >>>>
> >>>> Could you explain or remind me with a link to a previous explanation=
?
> >>>
> >>> How is userspace supposed to know that "drm-memory-foo" is a memory
> >>> type "foo" but drm-memory-foo^size is not memory type "foo^size"?
> >>
> >> Are you referring to nvtop?
> >
> > I'm not referring to any particular app.  It could even be some app
> > that isn't even written yet but started with an already existing
> > kernel without this change.  It is just a general point about forwards
> > compatibility of old userspace with new kernel.  And it doesn't really
> > matter what special character you use.  You can't retroactively define
> > some newly special characters.
>
> What you see does not work if we output both legacy and new key with
> extra category? Userspace which hardcode the name keep working, and
> userspace which parses region names as opaque strings also keeps working
> just shows more entries.

well, it shows nonsense entries.. I'd not call that "working"

But honestly we are wasting too many words on this.. we just can't
re-use the "drm-memory-<anything>" namespace, it is already burnt.
Full stop.

If you don't like the "drm-$CATEGORY-$REGION" workaround then we can
shorten to "drm-mem-$REGION-$CATEGORY" since that won't accidentally
match the existing "drm-memory-" pattern.

BR,
-R

> Regards,
>
> Tvrtko
>
> >
> > BR,
> > -R
> >
> >> Indeed that one hardcodes:
> >>
> >>     static const char drm_amdgpu_vram[] =3D "drm-memory-vram";
> >>
> >> And does brute strcmp on it:
> >>
> >>     } else if (!strcmp(key, drm_amdgpu_vram_old) || !strcmp(key, drm_a=
mdgpu_vram)) {
> >>
> >> So okay for that one, if we need to keep it working I just change this=
 in my RFC:
> >>
> >> """
> >> Resident category is identical to the drm-memory-<str> key and two sho=
uld be
> >> mutually exclusive.
> >> """
> >>
> >> Into this:
> >>
> >> """
> >> Resident category is identical to the drm-memory-<str> key and where t=
he categorized one is present the legacy one must be too in order to preser=
ve backward compatibility.
> >> """
> >>
> >> Addition to my RFC:
> >>
> >> ...
> >>          for (i =3D 0; i < num; i++) {
> >>                  if (!regions[i]) /* Allow sparse name arrays. */
> >>                          continue;
> >>
> >>                  print_stat(p, "size", regions[i], stats[i].size);
> >>                  print_stat(p, "shared", regions[i], stats[i].shared);
> >> +               print_stat(p, "", regions[i], stats[i].resident);
> >>                  print_stat(p, "resident", regions[i], stats[i].reside=
nt);
> >>                  print_stat(p, "purgeable", regions[i], stats[i].purge=
able);
> >>                  print_stat(p, "active", regions[i], stats[i].active);
> >>          }
> >> ...
> >>
> >> Results in output like this (in theory, if/when amdgpu takes on the ex=
tended format):
> >>
> >> drm-memory-vram-size: ... KiB
> >> drm-memory-vram: $same KiB
> >> drm-memory-vram-resident: $same KiB
> >> drm-memory-vram-...:
> >>
> >> Regards,
> >>
> >> Tvrtko
> >>
> >> P.S. Would a slash instead of a caret be prettier?
> >>
> >>>> What tool barfs on it and how? Spirit of drm-usage-stats.pl is that =
for
> >>>> both drm-engine-<str>: and drm-memory-<str>: generic userspace is
> >>>> supposed to take the whole <std> as opaque and just enumerate all it=
 finds.
> >>>>
> >>>> Gputop manages to do that with engines names it knows _nothing_ abou=
t.
> >>>> If it worked with memory regions it would just show the list of new
> >>>> regions as for example "system^resident", "system^active". Then tool=
s
> >>>> can be extended to understand it better and provide a sub-breakdown =
if
> >>>> wanted.
> >>>>
> >>>> Ugly not, we can change from caret to something nicer, unless I am
> >>>> missing something it works, no?
> >>>>
> >>>> Regards,
> >>>>
> >>>> Tvrtko
> >>>>
> >>>>>
> >>>>> (also, it is IMHO rather ugly)
> >>>>>
> >>>>> BR,
> >>>>> -R
> >>>>>
> >>>>>>     - All keys shall be prefixed with `drm-`.
> >>>>>>     - Whitespace between the delimiter and first non-whitespace ch=
aracter shall be
> >>>>>>       ignored when parsing.
> >>>>>> @@ -105,6 +106,17 @@ object belong to this client, in the respecti=
ve memory region.
> >>>>>>     Default unit shall be bytes with optional unit specifiers of '=
KiB' or 'MiB'
> >>>>>>     indicating kibi- or mebi-bytes.
> >>>>>>
> >>>>>> +- drm-memory-<str>^size:      <uint> [KiB|MiB]
> >>>>>> +- drm-memory-<str>^shared:    <uint> [KiB|MiB]
> >>>>>> +- drm-memory-<str>^resident:  <uint> [KiB|MiB]
> >>>>>> +- drm-memory-<str>^purgeable: <uint> [KiB|MiB]
> >>>>>> +- drm-memory-<str>^active:    <uint> [KiB|MiB]
> >>>>>> +
> >>>>>> +Resident category is identical to the drm-memory-<str> key and tw=
o should be
> >>>>>> +mutually exclusive.
> >>>>>> +
> >>>>>> +TODO more description text...
> >>>>>> +
> >>>>>>     - drm-cycles-<str> <uint>
> >>>>>>
> >>>>>>     Engine identifier string must be the same as the one specified=
 in the
> >>>>>> diff --git a/drivers/gpu/drm/drm_file.c b/drivers/gpu/drm/drm_file=
.c
> >>>>>> index 37b4f76a5191..e202f79e816d 100644
> >>>>>> --- a/drivers/gpu/drm/drm_file.c
> >>>>>> +++ b/drivers/gpu/drm/drm_file.c
> >>>>>> @@ -42,6 +42,7 @@
> >>>>>>     #include <drm/drm_client.h>
> >>>>>>     #include <drm/drm_drv.h>
> >>>>>>     #include <drm/drm_file.h>
> >>>>>> +#include <drm/drm_gem.h>
> >>>>>>     #include <drm/drm_print.h>
> >>>>>>
> >>>>>>     #include "drm_crtc_internal.h"
> >>>>>> @@ -871,6 +872,54 @@ void drm_send_event(struct drm_device *dev, s=
truct drm_pending_event *e)
> >>>>>>     }
> >>>>>>     EXPORT_SYMBOL(drm_send_event);
> >>>>>>
> >>>>>> +static void
> >>>>>> +print_stat(struct drm_printer *p, const char *stat, const char *r=
egion, u64 sz)
> >>>>>> +{
> >>>>>> +       const char *units[] =3D {"", " KiB", " MiB"};
> >>>>>> +       unsigned int u;
> >>>>>> +
> >>>>>> +       if (sz =3D=3D ~0ull) /* Not supported by the driver. */
> >>>>>> +               return;
> >>>>>> +
> >>>>>> +       for (u =3D 0; u < ARRAY_SIZE(units) - 1; u++) {
> >>>>>> +               if (sz < SZ_1K)
> >>>>>> +                       break;
> >>>>>> +               sz =3D div_u64(sz, SZ_1K);
> >>>>>> +       }
> >>>>>> +
> >>>>>> +       drm_printf(p, "drm-memory-%s^%s:\t%llu%s\n",
> >>>>>> +                  region, stat, sz, units[u]);
> >>>>>> +}
> >>>>>> +
> >>>>>> +static void print_memory_stats(struct drm_printer *p, struct drm_=
file *file)
> >>>>>> +{
> >>>>>> +       struct drm_device *dev =3D file->minor->dev;
> >>>>>> +       struct drm_fdinfo_memory_stat *stats;
> >>>>>> +       unsigned int num, i;
> >>>>>> +       char **regions;
> >>>>>> +
> >>>>>> +       regions =3D dev->driver->query_fdinfo_memory_regions(dev, =
&num);
> >>>>>> +
> >>>>>> +       stats =3D kcalloc(num, sizeof(*stats), GFP_KERNEL);
> >>>>>> +       if (!stats)
> >>>>>> +               return;
> >>>>>> +
> >>>>>> +       dev->driver->query_fdinfo_memory_stats(file, stats);
> >>>>>> +
> >>>>>> +       for (i =3D 0; i < num; i++) {
> >>>>>> +               if (!regions[i]) /* Allow sparse name arrays. */
> >>>>>> +                       continue;
> >>>>>> +
> >>>>>> +               print_stat(p, "size", regions[i], stats[i].size);
> >>>>>> +               print_stat(p, "shared", regions[i], stats[i].share=
d);
> >>>>>> +               print_stat(p, "resident", regions[i], stats[i].res=
ident);
> >>>>>> +               print_stat(p, "purgeable", regions[i], stats[i].pu=
rgeable);
> >>>>>> +               print_stat(p, "active", regions[i], stats[i].activ=
e);
> >>>>>> +       }
> >>>>>> +
> >>>>>> +       kfree(stats);
> >>>>>> +}
> >>>>>> +
> >>>>>>     /**
> >>>>>>      * drm_show_fdinfo - helper for drm file fops
> >>>>>>      * @seq_file: output stream
> >>>>>> @@ -900,6 +949,9 @@ void drm_show_fdinfo(struct seq_file *m, struc=
t file *f)
> >>>>>>
> >>>>>>            if (dev->driver->show_fdinfo)
> >>>>>>                    dev->driver->show_fdinfo(&p, file);
> >>>>>> +
> >>>>>> +       if (dev->driver->query_fdinfo_memory_regions)
> >>>>>> +               print_memory_stats(&p, file);
> >>>>>>     }
> >>>>>>     EXPORT_SYMBOL(drm_show_fdinfo);
> >>>>>>
> >>>>>> diff --git a/include/drm/drm_drv.h b/include/drm/drm_drv.h
> >>>>>> index 89e2706cac56..ccc1cd98d2aa 100644
> >>>>>> --- a/include/drm/drm_drv.h
> >>>>>> +++ b/include/drm/drm_drv.h
> >>>>>> @@ -35,6 +35,7 @@
> >>>>>>     #include <drm/drm_device.h>
> >>>>>>
> >>>>>>     struct drm_file;
> >>>>>> +struct drm_fdinfo_memory_stat;
> >>>>>>     struct drm_gem_object;
> >>>>>>     struct drm_master;
> >>>>>>     struct drm_minor;
> >>>>>> @@ -408,6 +409,12 @@ struct drm_driver {
> >>>>>>             */
> >>>>>>            void (*show_fdinfo)(struct drm_printer *p, struct drm_f=
ile *f);
> >>>>>>
> >>>>>> +       char ** (*query_fdinfo_memory_regions)(struct drm_device *=
dev,
> >>>>>> +                                              unsigned int *num);
> >>>>>> +
> >>>>>> +       void (*query_fdinfo_memory_stats)(struct drm_file *f,
> >>>>>> +                                         struct drm_fdinfo_memory=
_stat *stat);
> >>>>>> +
> >>>>>>            /** @major: driver major number */
> >>>>>>            int major;
> >>>>>>            /** @minor: driver minor number */
> >>>>>> diff --git a/include/drm/drm_file.h b/include/drm/drm_file.h
> >>>>>> index 7d9b3c65cbc1..00d48beeac5c 100644
> >>>>>> --- a/include/drm/drm_file.h
> >>>>>> +++ b/include/drm/drm_file.h
> >>>>>> @@ -375,6 +375,14 @@ struct drm_file {
> >>>>>>     #endif
> >>>>>>     };
> >>>>>>
> >>>>>> +struct drm_fdinfo_memory_stat {
> >>>>>> +       u64 size;
> >>>>>> +       u64 shared;
> >>>>>> +       u64 resident;
> >>>>>> +       u64 purgeable;
> >>>>>> +       u64 active;
> >>>>>> +};
> >>>>>> +
> >>>>>>     /**
> >>>>>>      * drm_is_primary_client - is this an open file of the primary=
 node
> >>>>>>      * @file_priv: DRM file
> >>>>>> --
> >>>>>> 2.37.2
> >>>>>>
