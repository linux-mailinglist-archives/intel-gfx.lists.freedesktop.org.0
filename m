Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B82016D4C2D
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Apr 2023 17:41:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B867710E4E8;
	Mon,  3 Apr 2023 15:41:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FD8A10E4E1
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Apr 2023 15:41:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680536476; x=1712072476;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=RnwWns+DFEv85C9Fhcv1rO9/J99pGvvoS26c1fTnEEI=;
 b=P8M+JXjuicjLx+RsjwsYizJZertn3e9ndS00CJFtPfJBpC1e329ej2MX
 kD7ms9G1lAqxHVYfTiwYKdWVc8BePPOCqI0wL4Mtk69QT0UGXMCNwgECM
 4YjxM+ujbPbPgfb8jNwhqqvSwzfeiNHaIHA7h7acGpEMp64RUZ3LDVr/m
 VkVT8I+n0aD4zMmWPEToWBycRbauGNsP5y9jdnEbnGZOM66JQE4NQiDOb
 gUXVdv6ox5PE+iBns2Ct5lIU3UQCcIOdLVEewA1fs+mxxUkUvUYhWlIpB
 PBQsiSyZapDaOtOcUT1NhUJFUqL2qXn4vFbGCmoD1QwWf80DhOr9kBxiN Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="321594806"
X-IronPort-AV: E=Sophos;i="5.98,315,1673942400"; d="scan'208";a="321594806"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2023 08:41:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="679499383"
X-IronPort-AV: E=Sophos;i="5.98,315,1673942400"; d="scan'208";a="679499383"
Received: from pstratma-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.54.30])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2023 08:41:14 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Masahiro Yamada <masahiroy@kernel.org>
In-Reply-To: <CAK7LNARQvR02QQBsbKxWt=CGQzacwJy=tz73ManvQ8fjAMWy+A@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230331101539.2893797-1-jani.nikula@intel.com>
 <CAK7LNARQvR02QQBsbKxWt=CGQzacwJy=tz73ManvQ8fjAMWy+A@mail.gmail.com>
Date: Mon, 03 Apr 2023 18:41:11 +0300
Message-ID: <87h6tx0y94.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915: enable kernel-doc warnings for
 CONFIG_DRM_I915_WERROR=y
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

On Sat, 01 Apr 2023, Masahiro Yamada <masahiroy@kernel.org> wrote:
> On Fri, Mar 31, 2023 at 7:15=E2=80=AFPM Jani Nikula <jani.nikula@intel.co=
m> wrote:
>>
>> Increase awareness of kernel-doc issues by enabling doc check locally
>> when W=3D is *not* specified on the make command-line, but
>> CONFIG_DRM_I915_WERROR=3Dy is enabled.
>>
>> Once the warnings have been fixed, we can pass -Werror to kernel-doc
>> locally, and fail the build when there are kernel-doc warnings in i915.
>>
>> Cc: Masahiro Yamada <masahiroy@kernel.org>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>
>> ---
>>
>> Masahiro, is this an awful hack to do in our local Makefile?
>>
>> Note that we do try to avoid anyone outside of i915 developers enabling
>> CONFIG_DRM_I915_WERROR=3Dy.
>>
>> Any other and cleaner ways of achieving this, without using W=3D on the
>> entire kernel?
>>
>> On that note, it would be nice to be able to enable W=3D on a subdir
>> alone.
>> ---
>>  drivers/gpu/drm/i915/Makefile | 8 ++++++++
>>  1 file changed, 8 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefi=
le
>> index 057ef22fa9c6..13d7040801bf 100644
>> --- a/drivers/gpu/drm/i915/Makefile
>> +++ b/drivers/gpu/drm/i915/Makefile
>> @@ -369,6 +369,14 @@ include $(src)/gvt/Makefile
>>  obj-$(CONFIG_DRM_I915) +=3D i915.o
>>  obj-$(CONFIG_DRM_I915_GVT_KVMGT) +=3D kvmgt.o
>>
>> +# kernel-doc test
>> +#
>> +# Enable locally for CONFIG_DRM_I915_WERROR=3Dy if not already enabled.
>> +# See scripts/Makefile.build
>> +ifeq ($(KBUILD_EXTRA_WARN)$(CONFIG_DRM_I915_WERROR),y)
>> +    cmd_checkdoc =3D $(srctree)/scripts/kernel-doc -none $<
>> +endif
>>
>
>
> I do not mind this, but I do not think you need to
> check $(KBUILD_EXTRA_WARN).

Mmh, what if we later add -Werror here? Is the cmd_checkdoc local or
global? Does that impact other places?

BR,
Jani.


>
>
>
> ifdef CONFIG_DRM_I915_WERROR
>     cmd_checkdoc =3D $(srctree)/scripts/kernel-doc -none $<
> endif

--=20
Jani Nikula, Intel Open Source Graphics Center
