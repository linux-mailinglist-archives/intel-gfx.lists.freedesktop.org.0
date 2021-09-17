Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EFDF440F84A
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Sep 2021 14:49:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FCBF6EC6B;
	Fri, 17 Sep 2021 12:49:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6B8D6EC6B
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Sep 2021 12:49:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10109"; a="283798254"
X-IronPort-AV: E=Sophos;i="5.85,301,1624345200"; d="scan'208";a="283798254"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2021 05:49:23 -0700
X-IronPort-AV: E=Sophos;i="5.85,301,1624345200"; d="scan'208";a="546359963"
Received: from unknown (HELO localhost) ([10.251.216.224])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2021 05:49:21 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Patchwork <patchwork@emeril.freedesktop.org>, Sean Paul <sean@poorly.run>
Cc: intel-gfx@lists.freedesktop.org
In-Reply-To: <163174310488.30119.7167050785544499122@emeril.freedesktop.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210915203834.1439-1-sean@poorly.run>
 <163174310488.30119.7167050785544499122@emeril.freedesktop.org>
Date: Fri, 17 Sep 2021 15:49:16 +0300
Message-ID: <87sfy3v037.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/hdcp=3A_Pull_HDCP_auth/exchange/check_into_helpers?=
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

On Wed, 15 Sep 2021, Patchwork <patchwork@emeril.freedesktop.org> wrote:
> =3D=3D Series Details =3D=3D
>
> Series: drm/hdcp: Pull HDCP auth/exchange/check into helpers
> URL   : https://patchwork.freedesktop.org/series/94712/
> State : failure
>
> =3D=3D Summary =3D=3D
>
> CALL    scripts/checksyscalls.sh
>   CALL    scripts/atomic/check-atomics.sh
>   DESCEND objtool
>   CHK     include/generated/compile.h
>   LD [M]  drivers/gpu/drm/i915/i915.o
>   HDRTEST drivers/gpu/drm/i915/display/intel_hdcp.h
> In file included from <command-line>:
> ./drivers/gpu/drm/i915/display/intel_hdcp.h:30:15: error: =E2=80=98struct=
 drm_atomic_state=E2=80=99 declared inside parameter list will not be visib=
le outside of this definition or declaration [-Werror]
>         struct drm_atomic_state *state);
>                ^~~~~~~~~~~~~~~~

Please use CONFIG_DRM_I915_WERROR=3Dy when developing i915, and fix the
fallout. In this case, you'll need to add a forward declaration for
struct drm_atomic_state. (Preferred over including headers from
headers.)

Thanks,
Jani.

> cc1: all warnings being treated as errors
> drivers/gpu/drm/i915/Makefile:324: recipe for target 'drivers/gpu/drm/i91=
5/display/intel_hdcp.hdrtest' failed
> make[4]: *** [drivers/gpu/drm/i915/display/intel_hdcp.hdrtest] Error 1
> scripts/Makefile.build:540: recipe for target 'drivers/gpu/drm/i915' fail=
ed
> make[3]: *** [drivers/gpu/drm/i915] Error 2
> scripts/Makefile.build:540: recipe for target 'drivers/gpu/drm' failed
> make[2]: *** [drivers/gpu/drm] Error 2
> scripts/Makefile.build:540: recipe for target 'drivers/gpu' failed
> make[1]: *** [drivers/gpu] Error 2
> Makefile:1868: recipe for target 'drivers' failed
> make: *** [drivers] Error 2
>
>

--=20
Jani Nikula, Intel Open Source Graphics Center
