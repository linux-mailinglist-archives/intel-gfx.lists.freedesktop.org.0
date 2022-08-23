Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63BF159E540
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Aug 2022 16:41:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2257D10E540;
	Tue, 23 Aug 2022 14:41:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56D2E10E540
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Aug 2022 14:41:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661265699; x=1692801699;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=07FK7UHFLDg6iPG/itsou6QriNlpbiVNbRTWnmOB/HA=;
 b=Hy/PLYLOc/NT2JsoqTFyamU8WC/9EpZMo+OOEUn5jHIOs4Xra/9oQ46x
 YPxRtaqzK2AFF5hVdMpQBQPc5BLyGO8DZLR2kmV+bLXS2MTuu+0kdSrvZ
 NKgjwfizYSse/Epst9mnZ23t4GOo0GJ4fypygf17RUbV5/kIJOLWUIrwI
 QzrOLBzFTlKjCvMalCScq0k3BKKkoqpNsDdZGFqJoLaNLj1UpBOu7DCc9
 D5cno5ko8I8gAT+3V9TLTHHhqMe8TPT2lr6XeypHtmQzDuQkkYDo2JfqJ
 zrqGGzcP3Wop2Z++fJhOhypP65PcqqFbUB1o7wct36pHFKOuyu/2RzLdJ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="276730358"
X-IronPort-AV: E=Sophos;i="5.93,257,1654585200"; d="scan'208";a="276730358"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2022 07:41:38 -0700
X-IronPort-AV: E=Sophos;i="5.93,257,1654585200"; d="scan'208";a="670058730"
Received: from obeltran-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.51.100])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2022 07:41:36 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Nilawar, Badal" <badal.nilawar@intel.com>, Guenter Roeck
 <linux@roeck-us.net>
In-Reply-To: <31f5e19e-1f74-9457-e9a8-b65a5094f1e4@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220818193901.2974625-1-badal.nilawar@intel.com>
 <20220818193901.2974625-2-badal.nilawar@intel.com>
 <87ilmoo707.fsf@intel.com>
 <50a6d108-4518-c30e-5096-3ee921c75606@intel.com>
 <8735dnmgwp.fsf@intel.com> <20220823121926.GD203169@roeck-us.net>
 <8735dnkrpt.fsf@intel.com>
 <31f5e19e-1f74-9457-e9a8-b65a5094f1e4@intel.com>
Date: Tue, 23 Aug 2022 17:41:34 +0300
Message-ID: <87r117ja3l.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 1/7] drm/i915/hwmon: Add HWMON infrastructure
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
Cc: linux-hwmon@vger.kernel.org, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 23 Aug 2022, "Nilawar, Badal" <badal.nilawar@intel.com> wrote:
> On 23-08-2022 19:05, Jani Nikula wrote:
>> On Tue, 23 Aug 2022, Guenter Roeck <linux@roeck-us.net> wrote:
>>> On Tue, Aug 23, 2022 at 12:46:14PM +0300, Jani Nikula wrote:
>>> [ ... ]
>>>>>>
>>>>>> So why not do this in i915 Kconfig:
>>>>>>
>>>>>> config DRM_I915
>>>>>> 	...
>>>>>> 	depends on HWMON || HWMON=n
>>>>> With this change I am getting recursive dependancy error when I run make
>>>>> oldconfig
>>>>>
>>>>> badal@bnilawar-desk1:~/workspace/wp3/drm-tip$ make oldconfig
>>>>>     HOSTCC  scripts/basic/fixdep
>>>>>     HOSTCC  scripts/kconfig/conf.o
>>>>>     HOSTCC  scripts/kconfig/confdata.o
>>>>>     HOSTCC  scripts/kconfig/expr.o
>>>>>     LEX     scripts/kconfig/lexer.lex.c
>>>>>     YACC    scripts/kconfig/parser.tab.[ch]
>>>>>     HOSTCC  scripts/kconfig/lexer.lex.o
>>>>>     HOSTCC  scripts/kconfig/menu.o
>>>>>     HOSTCC  scripts/kconfig/parser.tab.o
>>>>>     HOSTCC  scripts/kconfig/preprocess.o
>>>>>     HOSTCC  scripts/kconfig/symbol.o
>>>>>     HOSTCC  scripts/kconfig/util.o
>>>>>     HOSTLD  scripts/kconfig/conf
>>>>> drivers/gpu/drm/i915/Kconfig:2:error: recursive dependency detected!
>>>>> drivers/gpu/drm/i915/Kconfig:2: symbol DRM_I915 depends on HWMON
>>>>> drivers/hwmon/Kconfig:6:        symbol HWMON is selected by EEEPC_LAPTOP
>>>>> drivers/platform/x86/Kconfig:332:       symbol EEEPC_LAPTOP depends on INPUT
>>>>> drivers/input/Kconfig:8:        symbol INPUT is selected by DRM_I915
>>>>> For a resolution refer to Documentation/kbuild/kconfig-language.rst
>>>>> subsection "Kconfig recursive dependency limitations"
>>>>
>>>> *sigh*
>>>>
>>>>    Note:
>>>> 	select should be used with care. select will force
>>>> 	a symbol to a value without visiting the dependencies.
>>>> 	By abusing select you are able to select a symbol FOO even
>>>> 	if FOO depends on BAR that is not set.
>>>> 	In general use select only for non-visible symbols
>>>> 	(no prompts anywhere) and for symbols with no dependencies.
>>>> 	That will limit the usefulness but on the other hand avoid
>>>> 	the illegal configurations all over.
>>>>
>>> Agreed. HWMON should not be selected anywhere. Unfortunately it is, and
>>> drm is no exception. It is selected by DRM_RADEON and DRM_AMDGPU.
>>> Maybe just select it in DRM_I915 as well after all; in practice it won't
>>> make a difference.
>> 
>> And I guess everyone just does what I'm about to do now, throw my hands
>> up in the air in disgust and resignation. :p
> How about sticking to existing approach only. In my previous response I 
> mentioned that for combo which we want to reject CONFIG_HWMON=m && 
> CONFIG_DRM_I915=y combo i915_hwmon.o is not getting build.
> It is only getting build for below combos
> CONFIG_HWMON=m && CONFIG_DRM_I915=y
> CONFIG_HWMON=m && CONFIG_DRM_I915=m
> CONFIG_HWMON=y && CONFIG_DRM_I915=m

Then please hide the IS_REACHABLE() within i915_hwmon.h and add stubs as
is customary. Let's not clutter high level driver code with some random
#if directives.

BR,
Jani.


> Regards,
> Badal
>> 
>> BR,
>> Jani.
>> 
>> 
>> 

-- 
Jani Nikula, Intel Open Source Graphics Center
