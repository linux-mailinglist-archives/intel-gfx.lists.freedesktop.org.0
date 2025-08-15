Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66759B280E4
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Aug 2025 15:52:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0236910E957;
	Fri, 15 Aug 2025 13:52:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NGjod3G+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B98910E957
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Aug 2025 13:52:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755265943; x=1786801943;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=7dtyQAM07vv4iFnKOKZlu6kNkHb68ZNwJGkLyGUX30k=;
 b=NGjod3G++/BUk8Dyj6iTePoy6+aC+UC0CQUPzk9IAkFyeTAXNsxrJsru
 o9p8BvMnluqtxO6zoZ51akoQUKhA7mYM9bvM8J/ajGqBhtyvz+EhIso2U
 JC3O6S+NcAZAL5qxnXAgoZ3CqQRVqsVqJNQiaPtpqzV9SQWMANCkNUwBg
 lppwdD4Dkf+HH5XpOWcNMMgDXzMBsnwZuUkVnFBgzNaD63GbhaVp+BweF
 Z4GkCkVjfmXZY+fDyuG+P9rfMMyTghmhqwVbZlzw4x7G+7lxm4UexAybB
 yFsZ13geI8votVf/fQV44oxD1T+SIOyoeMYIv892D5UB/v2vfV+5gjqLh w==;
X-CSE-ConnectionGUID: c+LZpu0wT6CuiqqI+RClgw==
X-CSE-MsgGUID: g3oAhp08RHi/8x6UNA+fHg==
X-IronPort-AV: E=McAfee;i="6800,10657,11523"; a="61393789"
X-IronPort-AV: E=Sophos;i="6.17,290,1747724400"; d="scan'208";a="61393789"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2025 06:52:23 -0700
X-CSE-ConnectionGUID: 2lF/MREiSmaDuH+xATURLA==
X-CSE-MsgGUID: EI3pCyLKQtChftbHspFtdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,290,1747724400"; d="scan'208";a="167391342"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.142])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2025 06:52:22 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Luca Coelho <luca@coelho.fi>, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/bo: remove unnecessary include
In-Reply-To: <799b89af2b59a8088aa0939e2dee26194c2f2ec3.camel@coelho.fi>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250814132445.1573035-1-jani.nikula@intel.com>
 <799b89af2b59a8088aa0939e2dee26194c2f2ec3.camel@coelho.fi>
Date: Fri, 15 Aug 2025 16:52:19 +0300
Message-ID: <2f5990c7298ee9485e292fe9b309206399648e37@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 15 Aug 2025, Luca Coelho <luca@coelho.fi> wrote:
> On Thu, 2025-08-14 at 16:24 +0300, Jani Nikula wrote:
>> intel_bo.c doesn't need intel_display_types.h for anything. Remove.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_bo.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_bo.c b/drivers/gpu/drm/i=
915/display/intel_bo.c
>> index 65d64f79a4bd..d29c1508ccb9 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bo.c
>> +++ b/drivers/gpu/drm/i915/display/intel_bo.c
>> @@ -2,7 +2,7 @@
>>  /* Copyright =C2=A9 2024 Intel Corporation */
>>=20=20
>>  #include <drm/drm_panic.h>
>> -#include "display/intel_display_types.h"
>> +
>>  #include "gem/i915_gem_mman.h"
>>  #include "gem/i915_gem_object.h"
>>  #include "gem/i915_gem_object_frontbuffer.h"
>
> Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

Thanks, pushed to din!

>
> --
> Cheers,
> Luca.

--=20
Jani Nikula, Intel
