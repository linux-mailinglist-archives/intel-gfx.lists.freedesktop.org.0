Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 34170470143
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Dec 2021 14:03:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57C3A10E6A0;
	Fri, 10 Dec 2021 13:03:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFBFA10E6A0
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Dec 2021 13:03:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639141432; x=1670677432;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=/5/GoPd1bCByGG5fV0qrBNo+B9U+ZHOSgDnRs0dUo9c=;
 b=i58QNBDoaGn3On75eKttpOCNSOB+axawBV9ZSucJpG2YpwtxlVpBntb9
 TCScRuCNPFI/oN6lrAHA37rcKtJrgfaVROA648XHTPq3UvMVC0cV/vxiX
 SSTXe+01sD7adfEJvAdUmIwatDi6ojzJnq7xV/qBVN56sw9iN8bGCPwMU
 2/XJuA4CqhCTlD8xqJvIvBNpynaxZtkeG37Safj/GNmkNqQ2T0nIo8I2+
 WTteWdrgRyH/lBk3QEx0czAa4hRnPNZhwMkKn6VKwmbcPktovO+XQKIO8
 nF3+4ZoPmdc0B3/PoCWjS9xATD9mhL/54x03mPYK1rV3krYYZSldPRiqJ Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10193"; a="301724451"
X-IronPort-AV: E=Sophos;i="5.88,195,1635231600"; d="scan'208";a="301724451"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2021 05:03:47 -0800
X-IronPort-AV: E=Sophos;i="5.88,195,1635231600"; d="scan'208";a="462533251"
Received: from mpcorrig-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.4.173])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2021 05:03:46 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Patchwork <patchwork@emeril.freedesktop.org>
In-Reply-To: <163910251850.3444.12839279379507056697@emeril.freedesktop.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1639057801.git.jani.nikula@intel.com>
 <163910251850.3444.12839279379507056697@emeril.freedesktop.org>
Date: Fri, 10 Dec 2021 15:03:38 +0200
Message-ID: <87k0gc1uj9.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915=3A_include_reductions?=
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

On Fri, 10 Dec 2021, Patchwork <patchwork@emeril.freedesktop.org> wrote:
> =3D=3D Series Details =3D=3D
>
> Series: drm/i915: include reductions
> URL   : https://patchwork.freedesktop.org/series/97789/
> State : failure
>
> =3D=3D Summary =3D=3D
>
> CALL    scripts/checksyscalls.sh
>   CALL    scripts/atomic/check-atomics.sh
>   DESCEND objtool
>   CHK     include/generated/compile.h
>   CC [M]  drivers/gpu/drm/i915/gem/i915_gem_create.o
> In file included from drivers/gpu/drm/i915/gem/i915_gem_create.c:9:
> ./drivers/gpu/drm/i915/pxp/intel_pxp.h: In function =E2=80=98intel_pxp_st=
art=E2=80=99:
> ./drivers/gpu/drm/i915/pxp/intel_pxp.h:45:10: error: =E2=80=98ENODEV=E2=
=80=99 undeclared (first use in this function)
>   return -ENODEV;
>           ^~~~~~
> ./drivers/gpu/drm/i915/pxp/intel_pxp.h:45:10: note: each undeclared ident=
ifier is reported only once for each function it appears in
> ./drivers/gpu/drm/i915/pxp/intel_pxp.h: In function =E2=80=98intel_pxp_ke=
y_check=E2=80=99:
> ./drivers/gpu/drm/i915/pxp/intel_pxp.h:62:10: error: =E2=80=98ENODEV=E2=
=80=99 undeclared (first use in this function)
>   return -ENODEV;
>           ^~~~~~
> scripts/Makefile.build:287: recipe for target 'drivers/gpu/drm/i915/gem/i=
915_gem_create.o' failed
> make[4]: *** [drivers/gpu/drm/i915/gem/i915_gem_create.o] Error 1
> scripts/Makefile.build:549: recipe for target 'drivers/gpu/drm/i915' fail=
ed
> make[3]: *** [drivers/gpu/drm/i915] Error 2
> scripts/Makefile.build:549: recipe for target 'drivers/gpu/drm' failed
> make[2]: *** [drivers/gpu/drm] Error 2
> scripts/Makefile.build:549: recipe for target 'drivers/gpu' failed
> make[1]: *** [drivers/gpu] Error 2
> Makefile:1846: recipe for target 'drivers' failed
> make: *** [drivers] Error 2

I guess this means we have CONFIG_DRM_I915_PXP=3Dn in CI.

BR,
Jani.


--=20
Jani Nikula, Intel Open Source Graphics Center
