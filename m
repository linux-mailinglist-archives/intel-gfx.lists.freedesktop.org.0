Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 212524F7F54
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Apr 2022 14:41:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7571610EA1D;
	Thu,  7 Apr 2022 12:41:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F56910EA49
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Apr 2022 12:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649335287; x=1680871287;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=C60K/RjIxzD9qUe3rRXkzoWYu1Lju48shK/LC42uP3E=;
 b=cIFpWKfxVPvp7tFe8Htt5OzG/BNFlXclCDSJ0ufd0ztqu8HYBYaPrzNB
 NdtzynZ7nUH3Hv2fg5i/sh+ESaXR5Z1Pd2yLs41XMl9to3sstEV35reBV
 Y4O7K9WdKDnN7h/ZbKoRbNt7lRPtIM/eLBwoSXtdB/KTB9eKQ0o6RCOf5
 4Yp02X7voXYSEErjc1L0vnX1LJV6CwDXqQ845B9+OStytqceLI79Q/xkx
 Hsx4iF8SF9HsCUzN6qPbaTTee5I9Bq3vjPcSqhEPGGsfxkim+U0GyrX31
 GGCBIAxk7fmfAuIWqw4ZPFpml1xacHc1ulfYrUNk0vSmu0jJNXQOakAP8 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10309"; a="322003034"
X-IronPort-AV: E=Sophos;i="5.90,242,1643702400"; d="scan'208";a="322003034"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 05:41:26 -0700
X-IronPort-AV: E=Sophos;i="5.90,242,1643702400"; d="scan'208";a="722946373"
Received: from kgibala-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.142.48])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 05:41:24 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Patchwork <patchwork@emeril.freedesktop.org>
In-Reply-To: <164933427092.14672.4816692844290844231@emeril.freedesktop.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1649322799.git.jani.nikula@intel.com>
 <164933427092.14672.4816692844290844231@emeril.freedesktop.org>
Date: Thu, 07 Apr 2022 15:41:22 +0300
Message-ID: <877d815aml.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/edid=3A_low_level_EDID_block_read_refactoring_etc=2E?=
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

On Thu, 07 Apr 2022, Patchwork <patchwork@emeril.freedesktop.org> wrote:
> =3D=3D Series Details =3D=3D
>
> Series: drm/edid: low level EDID block read refactoring etc.
> URL   : https://patchwork.freedesktop.org/series/102329/
> State : failure
>
> =3D=3D Summary =3D=3D
>
> CALL    scripts/checksyscalls.sh
>   CALL    scripts/atomic/check-atomics.sh
>   DESCEND objtool
>   CHK     include/generated/compile.h
>   CC      drivers/gpu/drm/drm_edid.o
> drivers/gpu/drm/drm_edid.c: In function =E2=80=98drm_do_get_edid=E2=80=99:
> drivers/gpu/drm/drm_edid.c:2183:42: error: =E2=80=98j=E2=80=99 undeclared=
 (first use in this function)
>    edid_block_status_print(status, block, j);

Argh, last minute rebase fail.

>                                           ^
> drivers/gpu/drm/drm_edid.c:2183:42: note: each undeclared identifier is r=
eported only once for each function it appears in
> scripts/Makefile.build:288: recipe for target 'drivers/gpu/drm/drm_edid.o=
' failed
> make[3]: *** [drivers/gpu/drm/drm_edid.o] Error 1
> scripts/Makefile.build:550: recipe for target 'drivers/gpu/drm' failed
> make[2]: *** [drivers/gpu/drm] Error 2
> scripts/Makefile.build:550: recipe for target 'drivers/gpu' failed
> make[1]: *** [drivers/gpu] Error 2
> Makefile:1834: recipe for target 'drivers' failed
> make: *** [drivers] Error 2
>
>

--=20
Jani Nikula, Intel Open Source Graphics Center
