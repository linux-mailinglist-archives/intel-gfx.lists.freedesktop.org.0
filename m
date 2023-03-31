Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACF596D1DE4
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Mar 2023 12:22:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BE0D10F1C3;
	Fri, 31 Mar 2023 10:22:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97B6610F1C3
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Mar 2023 10:22:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680258130; x=1711794130;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=tNWKjg0Po6/7cNwy3cS53dfOaYQTt83TAenOMaX5lJw=;
 b=l03KFi1ME55EfBE1wR++luilkr4oujCKAe22D50PRfN1v0pnWwROhq2B
 CH+H302LKzA4DvClXk3v0kz1BxOiKq7E1NL9VwlQJpNWO/zREka1l+EwA
 NAe5dHooxYA7nXDf8ok58CTpAn3/0zj6HkbhQnytWUAM3Aw2voWr51hE8
 j+TRJ2PkTqjPiNQmZv2XFsSmSbvY3/cICzTNcjY167AWEiL5N/XQxDu6I
 AfnuyMBKCoOld2jnGg3HYYlyoX/UzKUQg7vIjhDijVnP9g1ja9eWAnG0/
 5+LCsI+WbH/eLvH5P/n3UsBXj+1kczJWv2d57v4r3hkpGKS4AfdgM1OIx Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="325382845"
X-IronPort-AV: E=Sophos;i="5.98,307,1673942400"; d="scan'208";a="325382845"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2023 03:22:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="931100851"
X-IronPort-AV: E=Sophos;i="5.98,307,1673942400"; d="scan'208";a="931100851"
Received: from bachaue1-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.41.110])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2023 03:22:08 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
In-Reply-To: <20230331101539.2893797-1-jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230331101539.2893797-1-jani.nikula@intel.com>
Date: Fri, 31 Mar 2023 13:22:05 +0300
Message-ID: <877cux2pbm.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
Cc: Masahiro Yamada <masahiroy@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 31 Mar 2023, Jani Nikula <jani.nikula@intel.com> wrote:
> Increase awareness of kernel-doc issues by enabling doc check locally
> when W= is *not* specified on the make command-line, but
> CONFIG_DRM_I915_WERROR=y is enabled.
>
> Once the warnings have been fixed, we can pass -Werror to kernel-doc
> locally, and fail the build when there are kernel-doc warnings in i915.
>
> Cc: Masahiro Yamada <masahiroy@kernel.org>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> ---
>
> Masahiro, is this an awful hack to do in our local Makefile?
>
> Note that we do try to avoid anyone outside of i915 developers enabling
> CONFIG_DRM_I915_WERROR=y.
>
> Any other and cleaner ways of achieving this, without using W= on the
> entire kernel?
>
> On that note, it would be nice to be able to enable W= on a subdir
> alone.

To elaborate, we add a bunch of W=1 style warnings in our local
Makefile, and try to maintain a high standard with them, but it's a bit
tedious to duplicate what's in scripts/Makefile.extrawarn. However that
doesn't seem to be easily reusable for subdir-ccflags-y.

We also add -Werror for CONFIG_DRM_I915_WERROR=y, and have our
developers and CI use that so we don't slip.

As to this patch, we'd like to do the same for kernel-doc. And,
hopefully, also enable -Werror for kernel-doc.

BR,
Jani.


> ---
>  drivers/gpu/drm/i915/Makefile | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 057ef22fa9c6..13d7040801bf 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -369,6 +369,14 @@ include $(src)/gvt/Makefile
>  obj-$(CONFIG_DRM_I915) += i915.o
>  obj-$(CONFIG_DRM_I915_GVT_KVMGT) += kvmgt.o
>  
> +# kernel-doc test
> +#
> +# Enable locally for CONFIG_DRM_I915_WERROR=y if not already enabled.
> +# See scripts/Makefile.build
> +ifeq ($(KBUILD_EXTRA_WARN)$(CONFIG_DRM_I915_WERROR),y)
> +    cmd_checkdoc = $(srctree)/scripts/kernel-doc -none $<
> +endif
> +
>  # header test
>  
>  # exclude some broken headers from the test coverage

-- 
Jani Nikula, Intel Open Source Graphics Center
