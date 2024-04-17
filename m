Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 238DA8A7F43
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Apr 2024 11:08:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66C8210F061;
	Wed, 17 Apr 2024 09:08:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hXg0XuG6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6998E10F061
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Apr 2024 09:08:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713344935; x=1744880935;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=Vcq7iFMQ7VI6G7tq98VkO4uS6dSGGCuZcwfq1a2TIj0=;
 b=hXg0XuG6kPqbD1bcZQpzDhobFRQ5/UzcMkVBOA1mPgWs3sBMU7Jylwrq
 OXdtEoLqjmGIA/V8dEA6G1Wg7socBlgkLpAo2fb2glcQxyoWuGuMcrX5g
 z9/FV72cMo+ZkGciapjINVN/w4I353d8D0QFpkiN/CeNZy5L/dOcGM/QG
 o5glkls8/KoK9EVKAaQVD95fLEjjx9Gf+BYc56JC7b+mLjpjBTWjyV5ea
 Cc6E6QlcgbhOLCmOFlY88+3v3K4y9b/FT/L9XZyyxbhm32SjFFlt7acmi
 aHMeOVYCaGBHnH9Yr+4CLM/4MtGVgC+2LW9HP9bcR693h0BWgbdV2cbCd g==;
X-CSE-ConnectionGUID: pxUgXSZTTJ+qzen9ongbug==
X-CSE-MsgGUID: tt1Uzz54TxGT4ZAuZn2aTA==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="9375741"
X-IronPort-AV: E=Sophos;i="6.07,208,1708416000"; 
   d="scan'208";a="9375741"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2024 02:08:54 -0700
X-CSE-ConnectionGUID: yKU3GpheQI+KIlZSGKnTgA==
X-CSE-MsgGUID: c0w23RqwRIKPqWIDQS0uEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,208,1708416000"; d="scan'208";a="53770114"
Received: from vpus-mobl1.ger.corp.intel.com (HELO localhost) ([10.252.45.164])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2024 02:08:53 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Suesens, Sebastian" <sebastian.suesens@zeiss.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: How to fix Linux CMA on x86 with internal graphic card
 i915/hda_intel ioremap error?
In-Reply-To: <AS1P190MB1822E12B130B87D1A768637AF13B2@AS1P190MB1822.EURP190.PROD.OUTLOOK.COM>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <AS1P190MB1822E12B130B87D1A768637AF13B2@AS1P190MB1822.EURP190.PROD.OUTLOOK.COM>
Date: Wed, 17 Apr 2024 12:08:50 +0300
Message-ID: <874jc0z78d.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Thu, 28 Mar 2024, "Suesens, Sebastian" <sebastian.suesens@zeiss.com> wrote:
> Hello,
>
> I enabled the CMA (CONFIG_CMA=y) for an x86 machine on Linux kernel v5.10 and v5.15 When I boot the system the CMA reserved memory, but when the graphic card driver i915 or hda_intel is loaded the system crashed. 
> I see that ioremap on RAM at 0x0000000000000000 - 0x00000000d0000000 get fail. When I blacklist the i915 and hda_intel module the system boots fine with cma memory reserved.
>
> I think this has something to do with the shared memory which this driver use.
>  
> Does anyone know if a kernel config or something else prevents this crash? 

If you can reproduce this with recent kernels, please file a bug as
described at [1].

BR,
Jani.

[1] https://drm.pages.freedesktop.org/intel-docs/how-to-file-i915-bugs.html

-- 
Jani Nikula, Intel
