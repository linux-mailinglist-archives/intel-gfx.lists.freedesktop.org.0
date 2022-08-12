Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E44DF590C0A
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Aug 2022 08:40:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0455718BCC9;
	Fri, 12 Aug 2022 06:40:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71A1AA1ED1
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Aug 2022 06:40:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660286410; x=1691822410;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=b/SxglGLS7a4VbJtU6VNEbU9WVmMEs/GubgiIGg/Xpw=;
 b=T0/ZvVja8B/OkaFgXvQ+FdKG65Cpren015mLCshAIzs/CQu/sFuFMr1D
 fuwe4bBgCxHlIviSJ7YZSKdkS0Ky35sDMYJ6OCRpc604eKmuX4SZyk0mm
 Gls2PapNfZbt8E+rp0VmNr8kFL46H5hVkbEI4Bw7UdiLpLNFNMNFH0l0m
 OR39GkpKgABWHb21sPGGQQq6EoGQrJCXDI2HrnRgq60B9agYe4RY4zKRL
 empgfZ/lFOML4TzFK7y0UyGUhB33rZ/cr+Dhoq3Oo/Ti1y3iLPFkx1gwb
 8YH7ChgpUiYCLW41MEWb/vmMj07jtY4Iz3txc6lP0tUu5ZY9ukVEQH5z8 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="289105099"
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="289105099"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 23:40:09 -0700
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="634537191"
Received: from ebrazil-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.252.37.174])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 23:40:08 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <DM6PR11MB3177A81A3B4B3DA89C3EC833BA679@DM6PR11MB3177.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1660230121.git.jani.nikula@intel.com>
 <a5641ef131cf70d404b5344eb8c3cd1688fdaae6.1660230121.git.jani.nikula@intel.com>
 <DM6PR11MB3177A81A3B4B3DA89C3EC833BA679@DM6PR11MB3177.namprd11.prod.outlook.com>
Date: Fri, 12 Aug 2022 09:40:05 +0300
Message-ID: <87bksqt16i.fsf@intel.com>
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

On Fri, 12 Aug 2022, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
>> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
>> @@ -0,0 +1,38 @@
>> +/* SPDX-License-Identifier: MIT */
>> +/*
>> + * Copyright =C2=A9 2022 Intel Corporation
>> + */
>> +
>> +#ifndef __INTEL_DISPLAY_CORE_H__
>> +#define __INTEL_DISPLAY_CORE_H__
>> +
>> +#include <linux/types.h>
>> +
>> +struct intel_atomic_state;
>> +struct intel_crtc;
>> +struct intel_crtc_state;
>> +struct intel_initial_plane_config;
>> +
>> +struct intel_display_funcs {
>> +     /* Returns the active state of the crtc, and if the crtc is active,
>> +      * fills out the pipe-config with the hw state. */
> Can this be changed to multi-line commenting style.

Yeah.

> /*
>  *
>  */
>> +     bool (*get_pipe_config)(struct intel_crtc *,
>> +                             struct intel_crtc_state *);
>> +     void (*get_initial_plane_config)(struct intel_crtc *,
>> +                                      struct intel_initial_plane_config=
 *);
>> +     void (*crtc_enable)(struct intel_atomic_state *state,
>> +                         struct intel_crtc *crtc);
>> +     void (*crtc_disable)(struct intel_atomic_state *state,
>> +                          struct intel_crtc *crtc);
>> +     void (*commit_modeset_enables)(struct intel_atomic_state *state);
>
> Can this be changed to something meaningful word, something like update_m=
odeset()

It's already borderline doing too much in one patch to rename the
struct, and definitely too much to rename the hook. Maybe in another
patch.

BR,
Jani.


--=20
Jani Nikula, Intel Open Source Graphics Center
