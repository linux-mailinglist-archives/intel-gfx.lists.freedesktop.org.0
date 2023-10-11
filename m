Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E93BD7C5EC1
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 22:54:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DC0710E1D4;
	Wed, 11 Oct 2023 20:54:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AB0110E1D4
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Oct 2023 20:54:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697057659; x=1728593659;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=QNf3Q7ICUXumxY53qJthomE1Ml2suVDO5yj6WJnjsFU=;
 b=NTGsnnX+JdfuC9OUpv4KLysNohaAIm25GtluEQzDdANT+dEi5IER7WYD
 8ntBFZBCU+Sb5vMz3Cv7Hfn+9tTFBUZFsUc54ULe79C9Yn1sowUsI6gv5
 is7rFDtiwrsCHkskeCpbwSXvT9BJ7QviIXbHYyAA3W415zuf9ccoyjqOM
 dnfzMMjb5MjVF2U1qfEnNkv51ydetg30SviB/7LK8vl67L9E3QCTMu/KE
 rKKF6IZTSYMS06ffDFa70DtJ7LUpRKLXidnp8z+IMLLpnQKxNCu+fl223
 L1QuhCo3lYFsnHdB4VMQtx4HPXytXatOvE1Cpkq6OLtyW0x8L+RDExNFm g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="3352202"
X-IronPort-AV: E=Sophos;i="6.03,217,1694761200"; 
   d="scan'208";a="3352202"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 13:54:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="897794990"
X-IronPort-AV: E=Sophos;i="6.03,217,1694761200"; d="scan'208";a="897794990"
Received: from lpaczyn-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.57.43])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 13:52:29 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Masahiro Yamada <masahiroy@kernel.org>
In-Reply-To: <CAK7LNAQ1K4X6=jW1b8cyS9vs_hpn+YGzF2qw7YTFawo-bs_9gQ@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1697009258.git.jani.nikula@intel.com>
 <69a812273091b6535ddc7f9346289d71bb30f43d.1697009258.git.jani.nikula@intel.com>
 <CAK7LNAQ1K4X6=jW1b8cyS9vs_hpn+YGzF2qw7YTFawo-bs_9gQ@mail.gmail.com>
Date: Wed, 11 Oct 2023 23:54:13 +0300
Message-ID: <87wmvs3moa.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915: enable W=1 warnings by
 default
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
Cc: Nathan Chancellor <nathan@kernel.org>, intel-gfx@lists.freedesktop.org,
 Nick Desaulniers <ndesaulniers@google.com>, Arnd Bergmann <arnd@arndb.de>,
 linux-kbuild@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 11 Oct 2023, Masahiro Yamada <masahiroy@kernel.org> wrote:
> On Wed, Oct 11, 2023 at 4:29=E2=80=AFPM Jani Nikula <jani.nikula@intel.co=
m> wrote:
>>
>> We enable a bunch more compiler warnings than the kernel
>> defaults. However, they've drifted to become a unique set of warnings,
>> and have increasingly fallen behind from the W=3D1 set.
>>
>> Align with the W=3D1 warnings from scripts/Makefile.extrawarn for clarit=
y,
>> by copy-pasting them with s/KBUILD_CFLAGS/subdir-ccflags-y/ to make it
>> easier to compare in the future.
>>
>> Some of the -Wextra warnings do need to be disabled, just like in
>> Makefile.extrawarn, but take care to not disable them for W=3D2 or W=3D3
>> builds, depending on the warning.
>>
>> v2: Add back some -Wextra warning disables (Nathan)
>>
>> Cc: Arnd Bergmann <arnd@arndb.de>
>> Cc: Nick Desaulniers <ndesaulniers@google.com>
>> Cc: Nathan Chancellor <nathan@kernel.org>
>> Cc: Masahiro Yamada <masahiroy@kernel.org>
>> Reviewed-by: Nathan Chancellor <nathan@kernel.org>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Masahiro Yamada <masahiroy@kernel.org>

Thanks for the reviews everyone...

...though we missed some s/KBUILD_CFLAGS/subdir-ccflags-y/ in v2. Fixed
while applying.

BR,
Jani.


--=20
Jani Nikula, Intel
