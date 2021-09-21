Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55A124133BF
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Sep 2021 15:06:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12E0B89D44;
	Tue, 21 Sep 2021 13:06:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com
 [IPv6:2607:f8b0:4864:20::102b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 601B96E911
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Sep 2021 09:01:49 +0000 (UTC)
Received: by mail-pj1-x102b.google.com with SMTP id
 lb1-20020a17090b4a4100b001993f863df2so2026931pjb.5
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Sep 2021 02:01:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=semihalf-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=56qdcbF4khZId0epbEdp0X64oIo3h3hxQw6L3Qej4kk=;
 b=Emi4BcUvaAsnynPqDTuG2hpNeLk/xr71b1qG5TugJPDqcKT/fyduYe3k/Z3YaROuoX
 bxYrzx1E6I+4zDr5c5wqwk7YSI072ENQ0Jp+JstaYy7sevPGVQG+FWl9qhQjtjfBYu9B
 OOPYGotgS7HsdY674eyHohczO4NCAnzcy/kbaa0siOcXrgrQSyMscVj0vagpyEHWvjSw
 ykaJR1wJILV8GMnj9VN/7Lk6KTJ2GfUVqVepYjsv0Xk8nc67z+p+wLbtHsvrwyMOIE2Y
 Cm0VHIdP4obcMSFJzQ19ZELoeTbHMMMwMViPsXep990NrkPnSrf92MdOo7E+boB40Fu8
 wk5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=56qdcbF4khZId0epbEdp0X64oIo3h3hxQw6L3Qej4kk=;
 b=NBjafggmIyqLUHhlpA4u4YjrhoDhwdv0YYjMszrQOJlzNBa8voklDEgowh7rO2NbS7
 d2NMFcVcB0GC5EeGccxraungwSZIa8nXGHZmnV2JHjyzZ32KKzTDE3W2XXAujPhMYvVC
 JOJgj8E0CTm7bF5vtgSBGAU4QTtk8rv0fGsL7W8WqhQUQYNCgMHBw49+CvliNFrYOCwX
 OSj8hGDNGUfI9sVjV6nKMg/IVs6bUEloSqm3DFOb3a32tdkTtI23f/x6rK4/mtrB7e+c
 flpLp9JaGmkwIqAA4kYf2WhWReMrTc8syBcgi83OTWO87DXFMReozCzUZtV9K5kGrHSy
 2eYQ==
X-Gm-Message-State: AOAM530pKwbQXujZpGkisY/USIYITPvQPyl36B4C+PLbuB+jvUwcsTy1
 AnEgBSQlPxqaGDzAvXHLFG+dN7g45P9KbdFuoq0u5g==
X-Google-Smtp-Source: ABdhPJxkhXDAgMHSOB81dxPKEiV/mPe07wPsWzLzC7dGArUAzbmez9eAszJ13drtSIgf5gkJT7PkZxdrGqUClXPaTxw=
X-Received: by 2002:a17:90a:de98:: with SMTP id
 n24mr4176955pjv.4.1632214908782; 
 Tue, 21 Sep 2021 02:01:48 -0700 (PDT)
MIME-Version: 1.0
References: <20210920141101.194959-1-lma@semihalf.com>
 <051f4a37e178d11c6dbcd05b5d6be28731cd7302.camel@intel.com>
In-Reply-To: <051f4a37e178d11c6dbcd05b5d6be28731cd7302.camel@intel.com>
From: Lukasz Majczak <lma@semihalf.com>
Date: Tue, 21 Sep 2021 11:01:37 +0200
Message-ID: <CAFJ_xboPCc5HkSmu-yVsBF253JhBNSmttDgbOa=2w23EKvbW5A@mail.gmail.com>
To: "Souza, Jose" <jose.souza@intel.com>
Cc: "Lee, Shawn C" <shawn.c.lee@intel.com>, 
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, 
 "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>, 
 "stable@vger.kernel.org" <stable@vger.kernel.org>, 
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, 
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>, 
 "upstream@semihalf.com" <upstream@semihalf.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Tue, 21 Sep 2021 13:06:49 +0000
Subject: Re: [Intel-gfx] [PATCH v1] drm/i915/bdb: Fix version check
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

pon., 20 wrz 2021 o 22:47 Souza, Jose <jose.souza@intel.com> napisa=C5=82(a=
):
>
> On Mon, 2021-09-20 at 16:11 +0200, Lukasz Majczak wrote:
> > With patch "drm/i915/vbt: Fix backlight parsing for VBT 234+"
> > the size of bdb_lfp_backlight_data structure has been increased,
> > causing if-statement in the parse_lfp_backlight function
> > that comapres this structure size to the one retrieved from BDB,
> > always to fail for older revisions.
> > This patch fixes it by comparing a total size of all fileds from
> > the structure (present before the change) with the value gathered from =
BDB.
> > Tested on Chromebook Pixelbook (Nocturne) (reports bdb->version =3D 221=
)
> >
> > Cc: <stable@vger.kernel.org> # 5.4+
> > Tested-by: Lukasz Majczak <lma@semihalf.com>
> > Signed-off-by: Lukasz Majczak <lma@semihalf.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_bios.c     | 4 +++-
> >  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 5 +++++
> >  2 files changed, 8 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/dr=
m/i915/display/intel_bios.c
> > index 3c25926092de..052a19b455d1 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bios.c
> > +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> > @@ -452,7 +452,9 @@ parse_lfp_backlight(struct drm_i915_private *i915,
> >
> >       i915->vbt.backlight.type =3D INTEL_BACKLIGHT_DISPLAY_DDI;
> >       if (bdb->version >=3D 191 &&
> > -         get_blocksize(backlight_data) >=3D sizeof(*backlight_data)) {
> > +         get_blocksize(backlight_data) >=3D (sizeof(backlight_data->en=
try_size) +
> > +                                           sizeof(backlight_data->data=
) +
> > +                                           sizeof(backlight_data->leve=
l))) {
>
> Missing sizeof(backlight_data->backlight_control) but this is getting ver=
y verbose.
> Would be better have a expected size variable set each version set in the=
 beginning of this function.
>
> something like:
> switch (bdb->version) {
> case 191:
>         expected_size =3D x;
>         break;
> case 234:
>         expected_size =3D x;
>         break;
> case 236:
> default:
>         expected_size =3D x;
> }
>
>
> >               const struct lfp_backlight_control_method *method;
> >
> >               method =3D &backlight_data->backlight_control[panel_type]=
;
> > diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gp=
u/drm/i915/display/intel_vbt_defs.h
> > index 330077c2e588..fff456bf8783 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> > +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> > @@ -814,6 +814,11 @@ struct lfp_brightness_level {
> >       u16 reserved;
> >  } __packed;
> >
> > +/*
> > + * Changing struct bdb_lfp_backlight_data might affect its
> > + * size comparation to the value hold in BDB.
> > + * (e.g. in parse_lfp_backlight())
> > + */
>
> This is true for all the blocks so I don't think we need this comment.
>
> >  struct bdb_lfp_backlight_data {
> >       u8 entry_size;
> >       struct lfp_backlight_data_entry data[16];
>
Hi Jose, Jani

Jani - you are right - I was working on 5.4 with a backported patch  -
I'm sorry for this confusion.

Jose,

Regarding expected_size, I couldn't find documentation that could
described this structure size changes among revisions, so all I could
do is to do an educated guess, basing on comments at this structure,
like:

(gdb) ptype /o  struct bdb_lfp_backlight_data
/* offset    |  size */  type =3D struct bdb_lfp_backlight_data {
/*    0      |     1 */    u8 entry_size;
/*    1      |    96 */    struct lfp_backlight_data_entry data[16];
/*   97      |    16 */    u8 level[16];
/*  113      |    16 */    struct lfp_backlight_control_method
backlight_control[16];
/*  129      |    64 */    struct lfp_brightness_level
brightness_level[16]; /* 234+ */
/*  193      |    64 */    struct lfp_brightness_level
brightness_min_level[16]; /* 234+ */
/*  257      |    16 */    u8 brightness_precision_bits[16]; /* 236+ */

                           /* total size (bytes):  273 */
                         }

if (revision <=3D 234)
   expected_size =3D 129;
else if (revision > 234 && revision <=3D236)
  expected_size =3D 257;
else /* revision > 236 */
   expected_size =3D 273;

Is this approach ok? Otherwise I think I would need help from you to
get exact numbers for each revision...

Best regards,
Lukasz
