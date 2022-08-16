Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B5AC5953F7
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Aug 2022 09:37:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7F4C92736;
	Tue, 16 Aug 2022 07:37:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB7A897895
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Aug 2022 07:37:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660635446; x=1692171446;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=TybG0PMRzvON4tBimKeneIpf4kyryo5MqpekQ7NZ1eE=;
 b=Tza0+ojJd2kQdrXtpVfROaupVo9aaQyCzwhATpLL8SfRZBTbkgCZDJTV
 H79Qxl2qF+XZRKaiBY3h5TQ0ynYp9xj+vZlAj26x11zOzvuriokJwcE81
 W8Vmf2vNPlnztQoPv1BvlZWGGg5JjSQgcuKHc0r7ln5ER2C4T/SL8H7Yn
 pIa8trA0RMNsj2LJuPN0Ds25vTdt8V+b/v16RAkVLm8tUNkPdHWx/iCUf
 9M6Rlsv4bgI+x1kz9SCuZHDFS2h9LhAGXq9SXKJ9mqESLs0/TL2eU1/5v
 ivO/c0I8UHQjzNY/DdHBGl9dfrl4wI8fnCj5z4nl0sbLQoamLSZ9wiKEs g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10440"; a="279111586"
X-IronPort-AV: E=Sophos;i="5.93,240,1654585200"; d="scan'208";a="279111586"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2022 00:37:25 -0700
X-IronPort-AV: E=Sophos;i="5.93,240,1654585200"; d="scan'208";a="666998109"
Received: from kinzelba-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.39.194])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2022 00:37:24 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <DM6PR11MB3177FC14F388F35CD62892F2BA6B9@DM6PR11MB3177.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1660230121.git.jani.nikula@intel.com>
 <a5641ef131cf70d404b5344eb8c3cd1688fdaae6.1660230121.git.jani.nikula@intel.com>
 <DM6PR11MB3177A81A3B4B3DA89C3EC833BA679@DM6PR11MB3177.namprd11.prod.outlook.com>
 <87bksqt16i.fsf@intel.com>
 <DM6PR11MB3177FC14F388F35CD62892F2BA6B9@DM6PR11MB3177.namprd11.prod.outlook.com>
Date: Tue, 16 Aug 2022 10:37:22 +0300
Message-ID: <87y1vor64t.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 01/39] drm/i915: add display sub-struct to
 drm_i915_private
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
Cc: "De Marchi, Lucas" <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 16 Aug 2022, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
>> -----Original Message-----
>> From: Nikula, Jani <jani.nikula@intel.com>
>> Sent: Friday, August 12, 2022 12:10 PM
>> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-
>> gfx@lists.freedesktop.org
>> Cc: De Marchi, Lucas <lucas.demarchi@intel.com>
>> Subject: RE: [Intel-gfx] [PATCH 01/39] drm/i915: add display sub-struct =
to
>> drm_i915_private
>>
>> On Fri, 12 Aug 2022, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
>> >> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
>> >> @@ -0,0 +1,38 @@
>> >> +/* SPDX-License-Identifier: MIT */
>> >> +/*
>> >> + * Copyright =C2=A9 2022 Intel Corporation  */
>> >> +
>> >> +#ifndef __INTEL_DISPLAY_CORE_H__
>> >> +#define __INTEL_DISPLAY_CORE_H__
>> >> +
>> >> +#include <linux/types.h>
>> >> +
>> >> +struct intel_atomic_state;
>> >> +struct intel_crtc;
>> >> +struct intel_crtc_state;
>> >> +struct intel_initial_plane_config;
>> >> +
>> >> +struct intel_display_funcs {
>> >> +     /* Returns the active state of the crtc, and if the crtc is act=
ive,
>> >> +      * fills out the pipe-config with the hw state. */
>> > Can this be changed to multi-line commenting style.
>>
>> Yeah.
>>
>> > /*
>> >  *
>> >  */
>> >> +     bool (*get_pipe_config)(struct intel_crtc *,
>> >> +                             struct intel_crtc_state *);
>> >> +     void (*get_initial_plane_config)(struct intel_crtc *,
>> >> +                                      struct intel_initial_plane_con=
fig *);
>> >> +     void (*crtc_enable)(struct intel_atomic_state *state,
>> >> +                         struct intel_crtc *crtc);
>> >> +     void (*crtc_disable)(struct intel_atomic_state *state,
>> >> +                          struct intel_crtc *crtc);
>> >> +     void (*commit_modeset_enables)(struct intel_atomic_state
>> >> + *state);
>> >
>> > Can this be changed to something meaningful word, something like
>> > update_modeset()
>>
>> It's already borderline doing too much in one patch to rename the struct=
, and
>> definitely too much to rename the hook. Maybe in another patch.
>>
> Thanks for accepting, would this come as part of this series itself?

I think this series is already growing too big, I'll want to start
merging before adding new patches. But there's more things to move to
the display sub-struct too, so there'll be more patches.

BR,
Jani.

>
> Thanks and Regards,
> Arun R Murthy
> --------------------

--=20
Jani Nikula, Intel Open Source Graphics Center
