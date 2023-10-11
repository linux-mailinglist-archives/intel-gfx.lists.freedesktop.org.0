Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 82AEB7C4BDD
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 09:31:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E88EB10E494;
	Wed, 11 Oct 2023 07:31:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3553B10E494
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Oct 2023 07:31:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697009504; x=1728545504;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=BrYQUkORXNWK96QnfPZBm35az/Tgpuxk/0trKjL9YTs=;
 b=AlE41056JNljWVv1yYoy+N1/bjCX2WVwTPbMw854PCyYgUj8huVhxwHi
 EP/3g3SDRXlK3GxvR2UJXjgvUVIXHzQxoNVEJky6BrUCH4GkBK473i9Yu
 jPVwAYjWv0bBVp75i3gkZ1ncF9xAU4g9otKyowI5KZyJ299qVXb42fcvH
 Hfdrhmg69XgiN+kMK2e/hJLGI77XNWRB9j14Axl3rdZio+jq9wuiLv55D
 Q/Xa+cGT0DCIUM6eFeis8hMwf0O+SYSDBxiUWJPozXVur79P/jrvR2+Ju
 GcLKjGZyAmnIRslNx5YjC7730/RkjSUzD6ehQ6FtrtPGQLSABzOtlW3Oc A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="381850587"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="381850587"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 00:31:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="824064122"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="824064122"
Received: from wprelogx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.56.229])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 00:31:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Nick Desaulniers <ndesaulniers@google.com>
In-Reply-To: <CAKwvOdk-h_Bvz9iFN=fMMn14A=8iwoPgSS27iZVmy4auTXCYvA@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1696595500.git.jani.nikula@intel.com>
 <48f11648d7169687e7242e4c9b4694a0c03c4263.1696595500.git.jani.nikula@intel.com>
 <CAK7LNAT6MzbcjR7KZMEFUCHkq+WXgTB=Qmp_VD4UC7TvMg+dMg@mail.gmail.com>
 <20231009163837.GA1153868@dev-arch.thelio-3990X>
 <87o7h66fti.fsf@intel.com> <87h6my6evg.fsf@intel.com>
 <CAKwvOdk-h_Bvz9iFN=fMMn14A=8iwoPgSS27iZVmy4auTXCYvA@mail.gmail.com>
Date: Wed, 11 Oct 2023 10:31:38 +0300
Message-ID: <871qe162ed.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: drop -Wall and related
 disables from cflags as redundant
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
Cc: Nathan Chancellor <nathan@kernel.org>,
 Masahiro Yamada <masahiroy@kernel.org>, intel-gfx@lists.freedesktop.org,
 Arnd Bergmann <arnd@arndb.de>, linux-kbuild@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 10 Oct 2023, Nick Desaulniers <ndesaulniers@google.com> wrote:
> On Tue, Oct 10, 2023 at 1:50=E2=80=AFAM Jani Nikula <jani.nikula@intel.co=
m> wrote:
>> This is the simplest I could think of:
>>
>> # The following turn off the warnings enabled by -Wextra
>> ifeq ($(findstring 2, $(KBUILD_EXTRA_WARN)),)
>> KBUILD_CFLAGS +=3D -Wno-missing-field-initializers
>> KBUILD_CFLAGS +=3D -Wno-type-limits
>> KBUILD_CFLAGS +=3D -Wno-shift-negative-value
>> endif
>> ifeq ($(findstring 3, $(KBUILD_EXTRA_WARN)),)
>> KBUILD_CFLAGS +=3D -Wno-sign-compare
>> endif
>>
>> Masahiro, I'd like to get your feedback on which to choose,
>> unconditionally silencing the W=3D2/W=3D3 warnings for i915, or looking =
at
>> KBUILD_EXTRA_WARN.
>
> KBUILD_EXTRA_WARN looks better to me; otherwise they would be hidden
> forever (or nearly).  Suffer some duplication, w/e.

Thanks, sent v2 with this [1].

BR,
Jani.

[1] https://lore.kernel.org/r/cover.1697009258.git.jani.nikula@intel.com

--=20
Jani Nikula, Intel
