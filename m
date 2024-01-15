Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E24DA82D95C
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jan 2024 14:00:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EBF210E28B;
	Mon, 15 Jan 2024 13:00:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B32C10E28B
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Jan 2024 13:00:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705323614; x=1736859614;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=ZeO/XAVjHJKCJdiUNFKQMzVRsV+1UYTyo7rdevBKgTg=;
 b=fr8YtdUxDQE+5xZpsuZuXbqONGTkGTb/GW1bTj6+m8SQzIU5rSapwOFP
 yRCkjPPRFVQqEm4+MNCSJvEW/AZqLDbfr4Si+NnaTEQPBwfY63mbzCR68
 Nnn5XmOrNdFPFPe+vj50HULqNVdiL3SWi0aPnSSo9vzDjuo6NAb8mY2Iz
 dFl7fkuDNMiRrlg1UCGtd+VP9IoxHREk9qJBD+dlFpacx1RAzpOaODKzI
 HGStnMiDMwYjG20ZLW2GxB4qVvk/NovJ8VJx0NRkDkVwdgEBsToRPo32Y
 +fZ4jqZXbOSY1oT48VNndp932Gkrtzh/I5R6dKKUs6/vx0nrwLbfmfW5x A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10953"; a="390059995"
X-IronPort-AV: E=Sophos;i="6.04,196,1695711600"; d="scan'208";a="390059995"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2024 05:00:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10953"; a="817831333"
X-IronPort-AV: E=Sophos;i="6.04,196,1695711600"; d="scan'208";a="817831333"
Received: from srigaut-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.55.155])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2024 05:00:10 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, "Hogander, Jouni"
 <jouni.hogander@intel.com>
Subject: Re: [PATCH] drm/xe/display: Disable aux ccs framebuffers
In-Reply-To: <ZaGsIGTHVh_MCqKW@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240102182422.3823394-1-juhapekka.heikkila@gmail.com>
 <87il4b1pvz.fsf@intel.com> <ZZx0qT4s3dmhIGAn@intel.com>
 <93230e22ede6467ef8930342afd439f7ce677790.camel@intel.com>
 <ZZ75ghR172WxYZiJ@intel.com>
 <2c82e0774c23cc640e565b1b5302e0e234eba036.camel@intel.com>
 <ZaGsIGTHVh_MCqKW@intel.com>
Date: Mon, 15 Jan 2024 15:00:07 +0200
Message-ID: <87h6jesqeg.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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
Cc: "ogabbay@kernel.org" <ogabbay@kernel.org>, "Hellstrom,
 Thomas" <thomas.hellstrom@intel.com>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 12 Jan 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Fri, Jan 12, 2024 at 07:31:51AM -0500, Hogander, Jouni wrote:
>> On Wed, 2024-01-10 at 15:09 -0500, Rodrigo Vivi wrote:
>> > On Tue, Jan 09, 2024 at 08:40:24PM +0000, Souza, Jose wrote:
>> > > On Mon, 2024-01-08 at 17:18 -0500, Rodrigo Vivi wrote:
>> > > > On Tue, Jan 02, 2024 at 09:44:48PM +0200, Jani Nikula wrote:
>> > > > > On Tue, 02 Jan 2024, Juha-Pekka Heikkila
>> > > > > <juhapekka.heikkila@gmail.com> wrote:
>> > > > > > Aux ccs framebuffers don't work on Xe driver hence disable
>> > > > > > them
>> > > > > > from plane capabilities until they are fixed. Flat ccs
>> > > > > > framebuffers
>> > > > > > work and they are left enabled. Here is separated plane
>> > > > > > capabilities
>> > > > > > check on i915 so it can behave differencly depending on the
>> > > > > > driver.
>> > > > >=20
>> > > > > Cc: Rodrigo and xe maintainers
>> > > > >=20
>> > > > > We need to figure out the proper workflow, the mailing lists to
>> > > > > use, the
>> > > > > subject prefix to use, the acks to require, etc, for changes
>> > > > > touching
>> > > > > both xe and i915.
>> > > > >=20
>> > > > > I'd very much prefer changes to i915 display to be merged via
>> > > > > drm-intel-next as always. For one thing, it'll take a while to
>> > > > > sync
>> > > > > stuff back from drm-xe-next to drm-intel-next, and most display
>> > > > > development still happens on drm-intel-next.
>> > > >=20
>> > > > I fully agree with you.
>> > > >=20
>> > > > >=20
>> > > > > But this patch can't be applied to drm-intel-next, because xe
>> > > > > doesn't
>> > > > > even exist on drm-intel-next yet...
>> > > >=20
>> > > > should we do a backmerge of drm-next already, or too early for
>> > > > that?
>> > >=20
>> > > Can we split it into 2 patches and merge it?
>> > > This is necessary to fix Wayland compositors on ADL and newer.
>> >=20
>> > we can do either:
>> > 1. backmerge drm-next into drm-intel-next and merge this as is. (This
>> > would be with
>> > Jani)
>> > 2. split in 2 patches, one for drm-intel-next and the other for drm-
>> > xe-next. (This would
>> > be with Jouni)
>> > 3. merge this as is in drm-xe-next and deal with the conflicts in a
>> > future backmerge.
>> > Since this is mostly adding a new file I don't believe that it would
>> > be a big deal.
>> > (This would impact myself)
>> >=20
>> > Since next round of drm-intel-next is mine, I'd be okay on handling
>> > that and acking
>> > this approach number 3. But before moving forward with this I'd like
>> > to wait for
>> > Jani's and Jouni's opinions.
>>=20
>> I'm fine with approach number 3.
>
> Jani, ack? or any plan to do a backmerge soon?

I've done the backmerge, but considering this touches i915 code much
more than xe, I'd prefer this get applied via i915. Or split.

BR,
Jani.

>
>>=20
>> BR,
>>=20
>> Jouni H=C3=B6gander
>>=20
>> >=20
>> > >=20
>> > > >=20
>> > > > >=20
>> > > > >=20
>> > > > > BR,
>> > > > > Jani.
>> > > > >=20
>> > > > >=20
>> > > > > >=20
>> > > > > > Closes:
>> > > > > > https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/933
>> > > > > > Signed-off-by: Juha-Pekka Heikkila
>> > > > > > <juhapekka.heikkila@gmail.com>
>> > > > > > ---
>> > > > > > =C2=A0drivers/gpu/drm/i915/Makefile=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=
=A0 1 +
>> > > > > > =C2=A0.../gpu/drm/i915/display/intel_plane_caps.c=C2=A0=C2=A0 =
| 68
>> > > > > > +++++++++++++++++++
>> > > > > > =C2=A0.../gpu/drm/i915/display/intel_plane_caps.h=C2=A0=C2=A0 =
| 14 ++++
>> > > > > > =C2=A0.../drm/i915/display/skl_universal_plane.c=C2=A0=C2=A0=
=C2=A0 | 61 +--------
>> > > > > > --------
>> > > > > > =C2=A0drivers/gpu/drm/xe/display/xe_plane_initial.c | 23 +++++=
++
>> > > > > > =C2=A05 files changed, 107 insertions(+), 60 deletions(-)
>> > > > > > =C2=A0create mode 100644
>> > > > > > drivers/gpu/drm/i915/display/intel_plane_caps.c
>> > > > > > =C2=A0create mode 100644
>> > > > > > drivers/gpu/drm/i915/display/intel_plane_caps.h
>> > > > > >=20
>> > > > > > diff --git a/drivers/gpu/drm/i915/Makefile
>> > > > > > b/drivers/gpu/drm/i915/Makefile
>> > > > > > index e777686190ca..c5e3c2dd0a01 100644
>> > > > > > --- a/drivers/gpu/drm/i915/Makefile
>> > > > > > +++ b/drivers/gpu/drm/i915/Makefile
>> > > > > > @@ -302,6 +302,7 @@ i915-y +=3D \
>> > > > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0display/intel_=
overlay.o \
>> > > > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0display/intel_=
pch_display.o \
>> > > > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0display/intel_=
pch_refclk.o \
>> > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0display/intel_plane=
_caps.o \
>> > > > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0display/intel_=
plane_initial.o \
>> > > > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0display/intel_=
pmdemand.o \
>> > > > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0display/intel_=
psr.o \
>> > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_plane_caps.c
>> > > > > > b/drivers/gpu/drm/i915/display/intel_plane_caps.c
>> > > > > > new file mode 100644
>> > > > > > index 000000000000..6206ae11f296
>> > > > > > --- /dev/null
>> > > > > > +++ b/drivers/gpu/drm/i915/display/intel_plane_caps.c
>> > > > > > @@ -0,0 +1,68 @@
>> > > > > > +// SPDX-License-Identifier: MIT
>> > > > > > +/*
>> > > > > > + * Copyright =C2=A9 2024 Intel Corporation
>> > > > > > + */
>> > > > > > +
>> > > > > > +#include "i915_drv.h"
>> > > > > > +#include "intel_fb.h"
>> > > > > > +#include "intel_plane_caps.h"
>> > > > > > +
>> > > > > > +static bool skl_plane_has_rc_ccs(struct drm_i915_private
>> > > > > > *i915,
>> > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 enum pipe pipe, enum
>> > > > > > plane_id plane_id)
>> > > > > > +{
>> > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Wa_22011186057 */
>> > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (IS_ALDERLAKE_P(=
i915) && IS_DISPLAY_STEP(i915,
>> > > > > > STEP_A0, STEP_B0))
>> > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return false;
>> > > > > > +
>> > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (DISPLAY_VER(i91=
5) >=3D 11)
>> > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return true;
>> > > > > > +
>> > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (IS_GEMINILAKE(i=
915))
>> > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return pipe !=3D PIPE_C;
>> > > > > > +
>> > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return pipe !=3D PI=
PE_C &&
>> > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0(plane_id =3D=3D PLANE_PRIMARY ||
>> > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 plane_id =3D=3D PLANE_SPRITE0);
>> > > > > > +}
>> > > > > > +
>> > > > > > +static bool gen12_plane_has_mc_ccs(struct drm_i915_private
>> > > > > > *i915,
>> > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 enum plane_=
id plane_id)
>> > > > > > +{
>> > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (DISPLAY_VER(i91=
5) < 12)
>> > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return false;
>> > > > > > +
>> > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Wa_14010477008 */
>> > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (IS_DG1(i915) ||=
 IS_ROCKETLAKE(i915) ||
>> > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
(IS_TIGERLAKE(i915) && IS_DISPLAY_STEP(i915,
>> > > > > > STEP_A0, STEP_D0)))
>> > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return false;
>> > > > > > +
>> > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Wa_22011186057 */
>> > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (IS_ALDERLAKE_P(=
i915) && IS_DISPLAY_STEP(i915,
>> > > > > > STEP_A0, STEP_B0))
>> > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return false;
>> > > > > > +
>> > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return plane_id < P=
LANE_SPRITE4;
>> > > > > > +}
>> > > > > > +
>> > > > > > +u8 skl_get_plane_caps(struct drm_i915_private *i915,
>> > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 enum pipe pipe=
, enum plane_id plane_id)
>> > > > > > +{
>> > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u8 caps =3D INTEL_P=
LANE_CAP_TILING_X;
>> > > > > > +
>> > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (DISPLAY_VER(i91=
5) < 13 || IS_ALDERLAKE_P(i915))
>> > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0caps |=3D INTEL_PLANE_CAP_TILING_Y;
>> > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (DISPLAY_VER(i91=
5) < 12)
>> > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0caps |=3D INTEL_PLANE_CAP_TILING_Yf;
>> > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (HAS_4TILE(i915))
>> > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0caps |=3D INTEL_PLANE_CAP_TILING_4;
>> > > > > > +
>> > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (skl_plane_has_r=
c_ccs(i915, pipe, plane_id)) {
>> > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0caps |=3D INTEL_PLANE_CAP_CCS_RC;
>> > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (DISPLAY_VER(i915) >=3D 12)
>> > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0caps |=3D INTEL_PLANE_CAP_CCS_RC_CC;
>> > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
>> > > > > > +
>> > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (gen12_plane_has=
_mc_ccs(i915, plane_id))
>> > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0caps |=3D INTEL_PLANE_CAP_CCS_MC;
>> > > > > > +
>> > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return caps;
>> > > > > > +}
>> > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_plane_caps.h
>> > > > > > b/drivers/gpu/drm/i915/display/intel_plane_caps.h
>> > > > > > new file mode 100644
>> > > > > > index 000000000000..60a941c76f23
>> > > > > > --- /dev/null
>> > > > > > +++ b/drivers/gpu/drm/i915/display/intel_plane_caps.h
>> > > > > > @@ -0,0 +1,14 @@
>> > > > > > +/* SPDX-License-Identifier: MIT */
>> > > > > > +/*
>> > > > > > + * Copyright =C2=A9 2024 Intel Corporation
>> > > > > > + */
>> > > > > > +
>> > > > > > +#ifndef __INTEL_PLANE_CAPS_H__
>> > > > > > +#define __INTEL_PLANE_CAPS_H__
>> > > > > > +
>> > > > > > +#include "intel_display_types.h"
>> > > > > > +
>> > > > > > +u8 skl_get_plane_caps(struct drm_i915_private *i915,
>> > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 enum pipe pipe=
, enum plane_id
>> > > > > > plane_id);
>> > > > > > +
>> > > > > > +#endif /* __INTEL_PLANE_CAPS_H__ */
>> > > > > > diff --git
>> > > > > > a/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> > > > > > b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> > > > > > index 511dc1544854..f2fd3833c61d 100644
>> > > > > > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> > > > > > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> > > > > > @@ -17,6 +17,7 @@
>> > > > > > =C2=A0#include "intel_fb.h"
>> > > > > > =C2=A0#include "intel_fbc.h"
>> > > > > > =C2=A0#include "intel_frontbuffer.h"
>> > > > > > +#include "intel_plane_caps.h"
>> > > > > > =C2=A0#include "intel_psr.h"
>> > > > > > =C2=A0#include "intel_psr_regs.h"
>> > > > > > =C2=A0#include "skl_scaler.h"
>> > > > > > @@ -2242,66 +2243,6 @@ skl_plane_disable_flip_done(struct
>> > > > > > intel_plane *plane)
>> > > > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0spin_unlock_ir=
q(&i915->irq_lock);
>> > > > > > =C2=A0}
>> > > > > > =C2=A0
>> > > > > > -static bool skl_plane_has_rc_ccs(struct drm_i915_private
>> > > > > > *i915,
>> > > > > > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 enum pipe pipe, enum
>> > > > > > plane_id plane_id)
>> > > > > > -{
>> > > > > > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Wa_22011186057 */
>> > > > > > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (IS_ALDERLAKE_P(=
i915) && IS_DISPLAY_STEP(i915,
>> > > > > > STEP_A0, STEP_B0))
>> > > > > > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return false;
>> > > > > > -
>> > > > > > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (DISPLAY_VER(i91=
5) >=3D 11)
>> > > > > > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return true;
>> > > > > > -
>> > > > > > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (IS_GEMINILAKE(i=
915))
>> > > > > > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return pipe !=3D PIPE_C;
>> > > > > > -
>> > > > > > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return pipe !=3D PI=
PE_C &&
>> > > > > > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0(plane_id =3D=3D PLANE_PRIMARY ||
>> > > > > > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 plane_id =3D=3D PLANE_SPRITE0);
>> > > > > > -}
>> > > > > > -
>> > > > > > -static bool gen12_plane_has_mc_ccs(struct drm_i915_private
>> > > > > > *i915,
>> > > > > > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 enum plane_=
id plane_id)
>> > > > > > -{
>> > > > > > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (DISPLAY_VER(i91=
5) < 12)
>> > > > > > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return false;
>> > > > > > -
>> > > > > > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Wa_14010477008 */
>> > > > > > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (IS_DG1(i915) ||=
 IS_ROCKETLAKE(i915) ||
>> > > > > > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0(IS_TIGERLAKE(i915) && IS_DISPLAY_STEP(i915,
>> > > > > > STEP_A0, STEP_D0)))
>> > > > > > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return false;
>> > > > > > -
>> > > > > > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Wa_22011186057 */
>> > > > > > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (IS_ALDERLAKE_P(=
i915) && IS_DISPLAY_STEP(i915,
>> > > > > > STEP_A0, STEP_B0))
>> > > > > > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return false;
>> > > > > > -
>> > > > > > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return plane_id < P=
LANE_SPRITE4;
>> > > > > > -}
>> > > > > > -
>> > > > > > -static u8 skl_get_plane_caps(struct drm_i915_private *i915,
>> > > > > > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 enum pipe pipe, enum plane_id
>> > > > > > plane_id)
>> > > > > > -{
>> > > > > > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u8 caps =3D INTEL_P=
LANE_CAP_TILING_X;
>> > > > > > -
>> > > > > > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (DISPLAY_VER(i91=
5) < 13 || IS_ALDERLAKE_P(i915))
>> > > > > > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0caps |=3D INTEL_PLANE_CAP_TILING_Y;
>> > > > > > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (DISPLAY_VER(i91=
5) < 12)
>> > > > > > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0caps |=3D INTEL_PLANE_CAP_TILING_Yf;
>> > > > > > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (HAS_4TILE(i915))
>> > > > > > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0caps |=3D INTEL_PLANE_CAP_TILING_4;
>> > > > > > -
>> > > > > > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (skl_plane_has_r=
c_ccs(i915, pipe, plane_id)) {
>> > > > > > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0caps |=3D INTEL_PLANE_CAP_CCS_RC;
>> > > > > > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (DISPLAY_VER(i915) >=3D 12)
>> > > > > > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0caps |=3D INTEL_PLANE_CAP_CCS_RC_CC;
>> > > > > > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
>> > > > > > -
>> > > > > > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (gen12_plane_has=
_mc_ccs(i915, plane_id))
>> > > > > > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0caps |=3D INTEL_PLANE_CAP_CCS_MC;
>> > > > > > -
>> > > > > > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return caps;
>> > > > > > -}
>> > > > > > -
>> > > > > > =C2=A0struct intel_plane *
>> > > > > > =C2=A0skl_universal_plane_create(struct drm_i915_private
>> > > > > > *dev_priv,
>> > > > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 enum pipe pipe, enum plane_id
>> > > > > > plane_id)
>> > > > > > diff --git a/drivers/gpu/drm/xe/display/xe_plane_initial.c
>> > > > > > b/drivers/gpu/drm/xe/display/xe_plane_initial.c
>> > > > > > index ccf83c12b545..425c6e6744a6 100644
>> > > > > > --- a/drivers/gpu/drm/xe/display/xe_plane_initial.c
>> > > > > > +++ b/drivers/gpu/drm/xe/display/xe_plane_initial.c
>> > > > > > @@ -15,6 +15,7 @@
>> > > > > > =C2=A0#include "intel_fb.h"
>> > > > > > =C2=A0#include "intel_fb_pin.h"
>> > > > > > =C2=A0#include "intel_frontbuffer.h"
>> > > > > > +#include "intel_plane_caps.h"
>> > > > > > =C2=A0#include "intel_plane_initial.h"
>> > > > > > =C2=A0
>> > > > > > =C2=A0static bool
>> > > > > > @@ -289,3 +290,25 @@ void
>> > > > > > intel_crtc_initial_plane_config(struct intel_crtc *crtc)
>> > > > > > =C2=A0
>> > > > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0plane_config_f=
ini(&plane_config);
>> > > > > > =C2=A0}
>> > > > > > +
>> > > > > > +u8 skl_get_plane_caps(struct drm_i915_private *i915,
>> > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 enum pipe pipe=
, enum plane_id plane_id)
>> > > > > > +{
>> > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u8 caps =3D INTEL_P=
LANE_CAP_TILING_X;
>> > > > > > +
>> > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (DISPLAY_VER(i91=
5) < 13 || IS_ALDERLAKE_P(i915))
>> > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0caps |=3D INTEL_PLANE_CAP_TILING_Y;
>> > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (DISPLAY_VER(i91=
5) < 12)
>> > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0caps |=3D INTEL_PLANE_CAP_TILING_Yf;
>> > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (HAS_4TILE(i915))
>> > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0caps |=3D INTEL_PLANE_CAP_TILING_4;
>> > > > > > +
>> > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (HAS_FLAT_CCS(i9=
15)) {
>> > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0caps |=3D INTEL_PLANE_CAP_CCS_RC |
>> > > > > > INTEL_PLANE_CAP_CCS_RC_CC;
>> > > > > > +
>> > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (plane_id < PLANE_SPRITE4)
>> > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0caps |=3D INTEL_PLANE_CAP_CCS_MC;
>> > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
>> > > > > > +
>> > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return caps;
>> > > > > > +}
>> > > > >=20
>> > > > > --=20
>> > > > > Jani Nikula, Intel
>> > >=20
>>=20

--=20
Jani Nikula, Intel
