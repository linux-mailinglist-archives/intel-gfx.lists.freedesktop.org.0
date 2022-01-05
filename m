Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AC297485046
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jan 2022 10:42:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0D4310E730;
	Wed,  5 Jan 2022 09:42:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C3F210E7C6
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jan 2022 09:42:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641375765; x=1672911765;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=U0CPI/yVbUlIS3viiKR8/0r+CZyWL2dhEQ1c+80JOS4=;
 b=OUCiApMocM8GTloACA8AUXJLWjkalXdXhJugzGn7T1BYcfJmHO3x5iw1
 olMBl34mxXhmkxgQxRpRFe3QIVe2fbFBL5Y8MAeDs5bKu6q5BZb0rdEdz
 qzedkbYh5MLq8YXgWlsiSPgk1uuKmZugX8SIYB+R5P02Cwyoy/er3hsI9
 KNJY7lBsUm1sps7km6//zO6yCtVonYyWzJL0c19F41zlcCmfj+Q7BEvJh
 G3FVE/HHzgz6bJ994/wQWbvDopoRKN6WFF30LCDBpAImtUpN301ifY3b5
 huJOu5/+/Wdx92GwN/B8Vay/TEYxyTUO/3AKqjsfSIpCanDtdu3zdACub g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10217"; a="241227555"
X-IronPort-AV: E=Sophos;i="5.88,263,1635231600"; d="scan'208";a="241227555"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2022 01:42:44 -0800
X-IronPort-AV: E=Sophos;i="5.88,263,1635231600"; d="scan'208";a="526453618"
Received: from menright-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.252.25.244])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2022 01:42:43 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Patchwork <patchwork@emeril.freedesktop.org>
In-Reply-To: <164131025214.30367.4030655070429794711@emeril.freedesktop.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220104112853.495572-1-jani.nikula@intel.com>
 <164131025214.30367.4030655070429794711@emeril.freedesktop.org>
Date: Wed, 05 Jan 2022 11:42:40 +0200
Message-ID: <878rvutt67.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBz?=
 =?utf-8?q?eries_starting_with_=5B1/2=5D_drm/i915=3A_split_out_intel=5Fvtd?=
 =?utf-8?b?LltjaF0gZnJvbSBpOTE1X2Rydi5o?=
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

On Tue, 04 Jan 2022, Patchwork <patchwork@emeril.freedesktop.org> wrote:
> =3D=3D Series Details =3D=3D
>
> Series: series starting with [1/2] drm/i915: split out intel_vtd.[ch] fro=
m i915_drv.h
> URL   : https://patchwork.freedesktop.org/series/98471/
> State : failure
>
> =3D=3D Summary =3D=3D
>
> CALL    scripts/checksyscalls.sh
>   CALL    scripts/atomic/check-atomics.sh
>   DESCEND objtool
>   CHK     include/generated/compile.h
>   HDRTEST drivers/gpu/drm/i915/intel_vtd.h
> In file included from ./drivers/gpu/drm/i915/intel_vtd.h:9,
>                  from <command-line>:
> ./arch/x86/include/asm/hypervisor.h:78:15: error: unknown type name =E2=
=80=98bool=E2=80=99
>  static inline bool hypervisor_is_type(enum x86_hypervisor_type type)

Hmph, that file is not self-contained. Sent v2 with the #include order
changed.

BR,
Jani.


>                ^~~~
> drivers/gpu/drm/i915/Makefile:343: recipe for target 'drivers/gpu/drm/i91=
5/intel_vtd.hdrtest' failed
> make[4]: *** [drivers/gpu/drm/i915/intel_vtd.hdrtest] Error 1
> scripts/Makefile.build:549: recipe for target 'drivers/gpu/drm/i915' fail=
ed
> make[3]: *** [drivers/gpu/drm/i915] Error 2
> scripts/Makefile.build:549: recipe for target 'drivers/gpu/drm' failed
> make[2]: *** [drivers/gpu/drm] Error 2
> scripts/Makefile.build:549: recipe for target 'drivers/gpu' failed
> make[1]: *** [drivers/gpu] Error 2
> Makefile:1846: recipe for target 'drivers' failed
> make: *** [drivers] Error 2
>
>

--=20
Jani Nikula, Intel Open Source Graphics Center
