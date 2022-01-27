Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 776CE49E1CE
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jan 2022 13:01:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EDC010E242;
	Thu, 27 Jan 2022 12:01:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23F7710E242
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jan 2022 12:01:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643284878; x=1674820878;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=WPyrfmw3AB4msGiNtWGmSesq9J/dK4XQiP1VQcK2k1w=;
 b=M29G6LBReNe+OXt80Ia8wTzhFqIflSt1aynYd43JA5xIJsh3ZHwrCJ/u
 lFmdELV+l4cYGTLLWcwJW5L/AUIOEmgAJKodyecsSTioWDX1JKhwmglPe
 8HSsv93zutY49xOyEnHeq6FhBZityGugfSuqIm3AMl/hpu1G5neVZHwwQ
 yDN6n5xSh5DIDtEHmGzCSBFnVDzjLtfZ/t16yQV9RshZeOqF/1o0AYkO5
 K9QMgebmgMhiO64ODjAsXblVm93uE7mrzPg1MEgmb6IGktNNn4kF6Ykvd
 bZtiKMpASMlRj7/1ICiLh6sXVuyU1mVBbTXBYdY3PkYOCRWqy3wNvmhbo Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="333183668"
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="333183668"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 04:01:17 -0800
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="563763167"
Received: from johnlyon-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.16.209])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 04:01:15 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Patchwork <patchwork@emeril.freedesktop.org>, Umesh Nerlige Ramappa
 <umesh.nerlige.ramappa@intel.com>
In-Reply-To: <164324448405.23659.6511148594756441355@emeril.freedesktop.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220127001529.978596-1-umesh.nerlige.ramappa@intel.com>
 <164324448405.23659.6511148594756441355@emeril.freedesktop.org>
Date: Thu, 27 Jan 2022 14:01:11 +0200
Message-ID: <87fsp9wfp4.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBz?=
 =?utf-8?q?eries_starting_with_=5B1/2=5D_drm/i915/pmu=3A_Fix_KMD_and_GuC_r?=
 =?utf-8?q?ace_on_accessing_busyness?=
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 27 Jan 2022, Patchwork <patchwork@emeril.freedesktop.org> wrote:
> =3D=3D Series Details =3D=3D
>
> Series: series starting with [1/2] drm/i915/pmu: Fix KMD and GuC race on =
accessing busyness
> URL   : https://patchwork.freedesktop.org/series/99386/
> State : failure
>
> =3D=3D Summary =3D=3D
>
> CALL    scripts/checksyscalls.sh
>   CALL    scripts/atomic/check-atomics.sh
>   DESCEND objtool
>   CHK     include/generated/compile.h
>   CC [M]  drivers/gpu/drm/i915/gt/uc/intel_guc_submission.o
> drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c: In function =E2=80=98g=
uc_update_pm_timestamp=E2=80=99:
> drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:1217:36: error: =E2=80=
=98uncore=E2=80=99 undeclared (first use in this function); did you mean =
=E2=80=98node=E2=80=99?
>   gpm_ts =3D intel_uncore_read64_2x32(uncore, MISC_STATUS0, MISC_STATUS1)=
 >>
>                                     ^~~~~~
>                                     node
> drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:1217:36: note: each und=
eclared identifier is reported only once for each function it appears in
> drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:1210:19: error: unused =
variable =E2=80=98gt=E2=80=99 [-Werror=3Dunused-variable]
>   struct intel_gt *gt =3D guc_to_gt(guc);

Please use CONFIG_DRM_I915_WERROR=3Dy during development.

BR,
Jani.

>                    ^~
> cc1: all warnings being treated as errors
> scripts/Makefile.build:288: recipe for target 'drivers/gpu/drm/i915/gt/uc=
/intel_guc_submission.o' failed
> make[4]: *** [drivers/gpu/drm/i915/gt/uc/intel_guc_submission.o] Error 1
> scripts/Makefile.build:550: recipe for target 'drivers/gpu/drm/i915' fail=
ed
> make[3]: *** [drivers/gpu/drm/i915] Error 2
> scripts/Makefile.build:550: recipe for target 'drivers/gpu/drm' failed
> make[2]: *** [drivers/gpu/drm] Error 2
> scripts/Makefile.build:550: recipe for target 'drivers/gpu' failed
> make[1]: *** [drivers/gpu] Error 2
> Makefile:1831: recipe for target 'drivers' failed
> make: *** [drivers] Error 2
>
>

--=20
Jani Nikula, Intel Open Source Graphics Center
