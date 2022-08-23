Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DA13459E48A
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Aug 2022 15:36:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8AE811B90D;
	Tue, 23 Aug 2022 13:36:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B133D14B913
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Aug 2022 13:35:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661261748; x=1692797748;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=U6ob9CnwsfWm7TPeZ+gLxGHBxjJ5Og69koiNr0SEo2g=;
 b=TJXQKlWGLoGs+AUdH7LjALn9tovWg4LOyUQMUUgIYUdBy4FBCQYsBasA
 8+OMhxbFZZQeYzPc8FstlcGrDG8txnK5LuvKYBsqeS7i+1AHVMp1VmVQP
 tUqZFlWjDJyIondkMrNeqaxHMY85IFhn9C5DyJTUV7LPHXvim2NxS7D2n
 PY1sLPYjfoyDot7oMPtz6AnCQ3ftPHn5m/vMmnxwmI3/P8qxjH7aOJD7F
 gQJBk8h6BJRjrEAoWZLq6cE/K/9xWyCbY/YEpWZkxjqpRVgBmTCCRfZr9
 uaOiwndqGeNJ6K704M4Dq928uk6fy29SVXMsE+olOyloXsRkLgqoaLk76 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="273440280"
X-IronPort-AV: E=Sophos;i="5.93,257,1654585200"; d="scan'208";a="273440280"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2022 06:35:47 -0700
X-IronPort-AV: E=Sophos;i="5.93,257,1654585200"; d="scan'208";a="638658080"
Received: from obeltran-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.51.100])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2022 06:35:45 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Guenter Roeck <linux@roeck-us.net>
In-Reply-To: <20220823121926.GD203169@roeck-us.net>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220818193901.2974625-1-badal.nilawar@intel.com>
 <20220818193901.2974625-2-badal.nilawar@intel.com>
 <87ilmoo707.fsf@intel.com>
 <50a6d108-4518-c30e-5096-3ee921c75606@intel.com>
 <8735dnmgwp.fsf@intel.com> <20220823121926.GD203169@roeck-us.net>
Date: Tue, 23 Aug 2022 16:35:42 +0300
Message-ID: <8735dnkrpt.fsf@intel.com>
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

On Tue, 23 Aug 2022, Guenter Roeck <linux@roeck-us.net> wrote:
> On Tue, Aug 23, 2022 at 12:46:14PM +0300, Jani Nikula wrote:
> [ ... ]
>> >> 
>> >> So why not do this in i915 Kconfig:
>> >> 
>> >> config DRM_I915
>> >> 	...
>> >> 	depends on HWMON || HWMON=n
>> > With this change I am getting recursive dependancy error when I run make 
>> > oldconfig
>> >
>> > badal@bnilawar-desk1:~/workspace/wp3/drm-tip$ make oldconfig
>> >    HOSTCC  scripts/basic/fixdep
>> >    HOSTCC  scripts/kconfig/conf.o
>> >    HOSTCC  scripts/kconfig/confdata.o
>> >    HOSTCC  scripts/kconfig/expr.o
>> >    LEX     scripts/kconfig/lexer.lex.c
>> >    YACC    scripts/kconfig/parser.tab.[ch]
>> >    HOSTCC  scripts/kconfig/lexer.lex.o
>> >    HOSTCC  scripts/kconfig/menu.o
>> >    HOSTCC  scripts/kconfig/parser.tab.o
>> >    HOSTCC  scripts/kconfig/preprocess.o
>> >    HOSTCC  scripts/kconfig/symbol.o
>> >    HOSTCC  scripts/kconfig/util.o
>> >    HOSTLD  scripts/kconfig/conf
>> > drivers/gpu/drm/i915/Kconfig:2:error: recursive dependency detected!
>> > drivers/gpu/drm/i915/Kconfig:2: symbol DRM_I915 depends on HWMON
>> > drivers/hwmon/Kconfig:6:        symbol HWMON is selected by EEEPC_LAPTOP
>> > drivers/platform/x86/Kconfig:332:       symbol EEEPC_LAPTOP depends on INPUT
>> > drivers/input/Kconfig:8:        symbol INPUT is selected by DRM_I915
>> > For a resolution refer to Documentation/kbuild/kconfig-language.rst
>> > subsection "Kconfig recursive dependency limitations"
>> 
>> *sigh*
>> 
>>   Note:
>> 	select should be used with care. select will force
>> 	a symbol to a value without visiting the dependencies.
>> 	By abusing select you are able to select a symbol FOO even
>> 	if FOO depends on BAR that is not set.
>> 	In general use select only for non-visible symbols
>> 	(no prompts anywhere) and for symbols with no dependencies.
>> 	That will limit the usefulness but on the other hand avoid
>> 	the illegal configurations all over.
>> 
> Agreed. HWMON should not be selected anywhere. Unfortunately it is, and
> drm is no exception. It is selected by DRM_RADEON and DRM_AMDGPU.
> Maybe just select it in DRM_I915 as well after all; in practice it won't
> make a difference.

And I guess everyone just does what I'm about to do now, throw my hands
up in the air in disgust and resignation. :p

BR,
Jani.



-- 
Jani Nikula, Intel Open Source Graphics Center
