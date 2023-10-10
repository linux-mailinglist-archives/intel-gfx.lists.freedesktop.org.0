Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBCB27BF5F8
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 10:33:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F1EE10E1BB;
	Tue, 10 Oct 2023 08:33:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA63F10E32E
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Oct 2023 08:33:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696926806; x=1728462806;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=NOvBoAi9K1oWrkHF47E77K1AP68uBpBRolEUQjAg7zE=;
 b=cjfZ6UWgXgqgMsdIdwb1LzCUsx4C8estJdBXIaPIFAlg1/GzkSdwc7Hc
 5tB5U1wIjwGvdxaZKkecFQxkddIXRGAuLzin8WBKnrrHM9gnvD+zsB7e+
 dxuK107mqzVc0VQ8x0FFHf4sm0ivgFQ5I2fO1v5+NMzP1ebd5jKvZdLpu
 CpoOGk2S/a1yNrq+LFBKux1KjM4Nn2kS5GFvc9iSLyc09QDEQvablliYM
 ulwlJnseuAyHTSjR3WtgqHt6wgcOzn/gRhSVxt1SKP9aWPbdc3ul4xfaa
 mplO1pemt8qIRS8xivgjVhHliwfQQeaurevctGMP3OxSNgsTB7Xrg/ax2 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="381600017"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="381600017"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 01:33:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="819151349"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="819151349"
Received: from pors-mobl3.ger.corp.intel.com (HELO localhost) ([10.252.42.155])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 01:33:23 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Nathan Chancellor <nathan@kernel.org>
In-Reply-To: <20231006174550.GC3359308@dev-arch.thelio-3990X>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1696595500.git.jani.nikula@intel.com>
 <f50c8ea0e63615aea28fe7f6049703e1d28ba7eb.1696595500.git.jani.nikula@intel.com>
 <20231006174550.GC3359308@dev-arch.thelio-3990X>
Date: Tue, 10 Oct 2023 11:33:21 +0300
Message-ID: <87leca6fn2.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: enable W=1 warnings by default
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
Cc: intel-gfx@lists.freedesktop.org, Nick Desaulniers <ndesaulniers@google.com>,
 Masahiro Yamada <masahiroy@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 linux-kbuild@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 06 Oct 2023, Nathan Chancellor <nathan@kernel.org> wrote:
> On Fri, Oct 06, 2023 at 03:34:47PM +0300, Jani Nikula wrote:
>> We enable a bunch more compiler warnings than the kernel
>> defaults. However, they've drifted to become a unique set of warnings,
>> and have increasingly fallen behind from the W=1 set.
>> 
>> Align with the W=1 warnings from scripts/Makefile.extrawarn for clarity,
>> by copy-pasting them with s/KBUILD_CFLAGS/subdir-ccflags-y/ to make it
>> easier to compare in the future.
>> 
>> Cc: Arnd Bergmann <arnd@arndb.de>
>> Cc: Nick Desaulniers <ndesaulniers@google.com>
>> Cc: Nathan Chancellor <nathan@kernel.org>
>> Cc: Masahiro Yamada <masahiroy@kernel.org>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> One meta comment and review comment below. Feel free to carry forward
>
> Reviewed-by: Nathan Chancellor <nathan@kernel.org>
>
> on future revisions.

Thanks!

>
>> ---
>> 
>> An alternative or future option would be to have Makefile.extrawarn
>> assign W=1 etc. flags to intermediate variables, say KBUILD_CFLAGS_W1,
>> like this:
>> 
>> KBUILD_CFLAGS_W1 += -Wextra -Wunused -Wno-unused-parameter
>> etc...
>> 
>> export KBUILD_CFLAGS_W1
>> 
>> ifneq ($(findstring 1, $(KBUILD_EXTRA_WARN)),)
>> 
>> KBUILD_CFLAGS += $(KBUILD_CFLAGS_W1)
>> 
>> else
>> etc...
>> 
>> and then drivers and subsystems could simply use:
>> 
>> subdir-ccflags-y += $(KBUILD_CFLAGS_W1)
>> 
>> to enable and remain up-to-date with W=1 warnings.
>
> This has definitely come up a few times and while I am generally in
> favor of something like this, it makes adding warnings to W=1 a little
> bit harder because when we add warnings to W=1, we typically are not
> concerned with breaking the build, as W=1 is not the default build. If a
> subsystem has opted into "whatever the current W=1 is" by default,
> changes to W=1 will have to be reviewed/tested within a normal build.
>
> Doing something like this patch with a more regular cadence (maybe every
> update after the merge window) seems like a reasonable compromise to me,
> although I know that means more work for individual subsystem
> maintainers.

Makes sense.

>
>> ---
>>  drivers/gpu/drm/i915/Makefile | 33 ++++++++++++++++++---------------
>>  1 file changed, 18 insertions(+), 15 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
>> index 623f81217442..0485157054fc 100644
>> --- a/drivers/gpu/drm/i915/Makefile
>> +++ b/drivers/gpu/drm/i915/Makefile
>> @@ -3,22 +3,25 @@
>>  # Makefile for the drm device driver.  This driver provides support for the
>>  # Direct Rendering Infrastructure (DRI) in XFree86 4.1.0 and higher.
>>  
>> -# Add a set of useful warning flags and enable -Werror for CI to prevent
>> -# trivial mistakes from creeping in. We have to do this piecemeal as we reject
>> -# any patch that isn't warning clean, so turning on -Wextra (or W=1) we
>> -# need to filter out dubious warnings.  Still it is our interest
>> -# to keep running locally with W=1 C=1 until we are completely clean.
>> -#
>> -# Note the danger in using -Wextra is that when CI updates gcc we
>> -# will most likely get a sudden build breakage... Hopefully we will fix
>> -# new warnings before CI updates!
>> -subdir-ccflags-y := -Wextra
>> -subdir-ccflags-y += -Wno-unused-parameter
>> -subdir-ccflags-y += -Wno-type-limits
>> -subdir-ccflags-y += -Wno-missing-field-initializers
>> -subdir-ccflags-y += -Wno-sign-compare
>> -subdir-ccflags-y += -Wno-shift-negative-value
>
> As the test robot points out, you'll want to keep these four, as they
> are only enabled for W=2 or W=3. With this diff on top of these two
> patches:

Right. I was confused by the refactoring done in Makefile.extrawarn, and
didn't notice that the disables were moved to else branches of the
checks for W=2 and W=3.

BR,
Jani.

>
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 0485157054fc..9c4e09c8aa4e 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -21,6 +21,12 @@ subdir-ccflags-y += $(call cc-option, -Wstringop-overflow)
>  subdir-ccflags-y += $(call cc-option, -Wstringop-truncation)
>  # --- end copy-paste
>  
> +# The following turn off the warnings enabled by -Wextra
> +subdir-ccflags-y += -Wno-type-limits
> +subdir-ccflags-y += -Wno-missing-field-initializers
> +subdir-ccflags-y += -Wno-sign-compare
> +subdir-ccflags-y += -Wno-shift-negative-value
> +
>  # Enable -Werror in CI and development
>  subdir-ccflags-$(CONFIG_DRM_I915_WERROR) += -Werror
>  
> I can continue to build i915 warning free with ARCH=x86_64 allmodconfig
> using all supported versions of LLVM for building the kernel.
>
>> +# Unconditionally enable W=1 warnings locally
>> +# --- begin copy-paste W=1 warnings from scripts/Makefile.extrawarn
>> +subdir-ccflags-y += -Wextra -Wunused -Wno-unused-parameter
>> +subdir-ccflags-y += -Wmissing-declarations
>> +subdir-ccflags-y += $(call cc-option, -Wrestrict)
>> +subdir-ccflags-y += -Wmissing-format-attribute
>> +subdir-ccflags-y += -Wmissing-prototypes
>> +subdir-ccflags-y += -Wold-style-definition
>> +subdir-ccflags-y += -Wmissing-include-dirs
>>  subdir-ccflags-y += $(call cc-option, -Wunused-but-set-variable)
>> +subdir-ccflags-y += $(call cc-option, -Wunused-const-variable)
>> +subdir-ccflags-y += $(call cc-option, -Wpacked-not-aligned)
>> +subdir-ccflags-y += $(call cc-option, -Wformat-overflow)
>> +subdir-ccflags-y += $(call cc-option, -Wformat-truncation)
>> +subdir-ccflags-y += $(call cc-option, -Wstringop-overflow)
>> +subdir-ccflags-y += $(call cc-option, -Wstringop-truncation)
>> +# --- end copy-paste
>> +
>> +# Enable -Werror in CI and development
>>  subdir-ccflags-$(CONFIG_DRM_I915_WERROR) += -Werror
>>  
>>  # Fine grained warnings disable
>> -- 
>> 2.39.2
>> 

-- 
Jani Nikula, Intel
