Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 194C8C5852D
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Nov 2025 16:22:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1031510E02C;
	Thu, 13 Nov 2025 15:22:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h+bNmqK5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 295F010E02C;
 Thu, 13 Nov 2025 15:22:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763047367; x=1794583367;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=zJ3FnCRBVhgjMf7ffKeL7ObVkfakkEF56iIaHGSLHHk=;
 b=h+bNmqK5SamgjyQn7Vx7+03ULkBf5FUhidgGUCnaGiwrJ4aCJvg+mHJE
 qDen2hx/ButT4DKL4Me0GC43hORifL3yxF+LuiW6G6e2xIuOrpFCT2I+P
 vMHlMmkWD54vT5lESs1qoAJa17KFXIlmfROmIEV7py1JCiwaHf6Phgamj
 ffQgTbJDiVmPkKz9SgWLR9a6prKVdJckJ1VWOj10K9ztW1O0zKNzbx2nB
 hIIny/ECk8tEnZe5AQqO3ChTzxqaWkEa2MuytqMk4Ht3t+M+Zkub12P2a
 Z8DqS5goXoK0fUlNgqNyyEQtkP60o/yjZi//Hc6OpRVbp43g6scznU7TS Q==;
X-CSE-ConnectionGUID: wkaPNqodTt6mZvepKG7uOA==
X-CSE-MsgGUID: aoUV0fPfRuezSaMr8/tHwg==
X-IronPort-AV: E=McAfee;i="6800,10657,11612"; a="65225139"
X-IronPort-AV: E=Sophos;i="6.19,302,1754982000"; d="scan'208";a="65225139"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 07:22:45 -0800
X-CSE-ConnectionGUID: o+07sT8WS+uunMAJMmYb4g==
X-CSE-MsgGUID: fF3W3NkDQfiNKaZHF5FUCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,302,1754982000"; d="scan'208";a="189956565"
Received: from aotchere-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.135])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 07:22:43 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 uma.shankar@intel.com
Subject: Re: [PATCH] drm/i915: move intel_gmch.[ch] from soc/ to display/
In-Reply-To: <aRXi1-qchpRzONMd@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1763027774.git.jani.nikula@intel.com>
 <20251113133751.696625-1-jani.nikula@intel.com>
 <aRXi1-qchpRzONMd@intel.com>
Date: Thu, 13 Nov 2025 17:22:41 +0200
Message-ID: <34d47b777e6aff9b60d95a90357d59c1f1f03aa0@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 13 Nov 2025, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Thu, Nov 13, 2025 at 03:37:50PM +0200, Jani Nikula wrote:
>> The sole user of the remaining functions in intel_gmch.[ch] is in
>> display. Move them under display.
>>=20
>> This allows us to remove the compat soc/intel_gmch.h from xe.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/Makefile                           | 5 +----
>>  drivers/gpu/drm/i915/{soc =3D> display}/intel_gmch.c      | 3 +--
>>  drivers/gpu/drm/i915/{soc =3D> display}/intel_gmch.h      | 0
>>  drivers/gpu/drm/i915/display/intel_vga.c                | 3 +--
>>  drivers/gpu/drm/xe/compat-i915-headers/soc/intel_gmch.h | 6 ------
>>  5 files changed, 3 insertions(+), 14 deletions(-)
>>  rename drivers/gpu/drm/i915/{soc =3D> display}/intel_gmch.c (95%)
>>  rename drivers/gpu/drm/i915/{soc =3D> display}/intel_gmch.h (100%)
>>  delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/soc/intel_gmc=
h.h
>>=20
>> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefi=
le
>> index 90588d5bb908..98822c98d960 100644
>> --- a/drivers/gpu/drm/i915/Makefile
>> +++ b/drivers/gpu/drm/i915/Makefile
>> @@ -57,10 +57,6 @@ i915-y +=3D \
>>  	vlv_iosf_sb.o \
>>  	vlv_suspend.o
>>=20=20
>> -# core peripheral code
>> -i915-y +=3D \
>> -	soc/intel_gmch.o
>> -
>>  # core library code
>>  i915-y +=3D \
>>  	i915_memcpy.o \
>> @@ -280,6 +276,7 @@ i915-y +=3D \
>>  	display/intel_flipq.o \
>>  	display/intel_frontbuffer.o \
>>  	display/intel_global_state.o \
>> +	display/intel_gmch.o \
>
> I think I'd just stick the stuff into intel_vga.c since=20
> that's where the vgaarb registration is as well.

Moving this directly to intel_vga.c requires a bunch of in-flight
modifications, because currently it's not compiled for xe, and there's a
dummy implementation of intel_gmch_vga_set_decode(). Or I have to wrap
#ifdef I915 around it or something.

See "[PATCH] drm/xe: use the same vga decode code as i915". If that
regresses, it's trivial to revert that, but if I do that as part of
moving the function to intel_vga.c, it's all mixed up.

Having this in intel_vga.c is the pleasing end result, but none of the
paths there are pleasing. Pick your poison, I guess.


BR,
Jani.


--=20
Jani Nikula, Intel
