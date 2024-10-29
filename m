Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40DA69B44DD
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 09:51:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C910310E5E7;
	Tue, 29 Oct 2024 08:51:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i9tz3Jlp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24E9710E5E2;
 Tue, 29 Oct 2024 08:51:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730191863; x=1761727863;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=A00L2wu62EOPtrtW8ziE0x+TFOgea2XcWA+cZQkXBCc=;
 b=i9tz3JlpTbi2Jhq5Y9414s80LzQSjVecCu9VM1dAKE0aeaWAxPWXfTK3
 ZvSvNq8a40ew4rRL49X6wumCQnqhY50YhJfMcfXWMT4TonheKF44In/ak
 8R/+IVv23HlijZVyu7sbS96+DqfUCCZMMV168LfRqGz6CylLjBzO99jTX
 yh27KkON0pafdGFU2kOcQM/3kv3f1UXPs7tH7xLJKqkLgB5jYGKKb5Ji2
 UpWI3pSgWP8S2JK4vMKeeZbx8sgY8MZRQVLK9i1tYlENsTJeul7i/A+U2
 MAMdXWYfzvqfxmi4sd4TtEdY5j5kA3RAsX1ZxeH1tY2XfFc431PPZYa+b w==;
X-CSE-ConnectionGUID: rldAeBBITyuOSZXFK6gyTQ==
X-CSE-MsgGUID: rMMEfWHbT3CKM/ipeziC+g==
X-IronPort-AV: E=McAfee;i="6700,10204,11239"; a="47296559"
X-IronPort-AV: E=Sophos;i="6.11,241,1725346800"; d="scan'208";a="47296559"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 01:51:02 -0700
X-CSE-ConnectionGUID: eJE7fWC2Tp6F0UoC5O1HXw==
X-CSE-MsgGUID: ecy/d0AXRpCDZb4sdG2qcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="86643288"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.69])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 01:51:00 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, Joonas
 Lahtinen <joonas.lahtinen@linux.intel.com>, Lucas De Marchi
 <lucas.demarchi@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Thomas
 =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Tvrtko
 Ursulin <tursulin@ursulin.net>
Subject: Re: [PATCH v2 2/3] drm/intel/pciids: rename i915_pciids.h to just
 pciids.h
In-Reply-To: <Zxe-29RohklKnA8E@ashyti-mobl2.lan>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1729590029.git.jani.nikula@intel.com>
 <835143845faa5310e4bb58405a8a0848392bbf06.1729590029.git.jani.nikula@intel.com>
 <Zxe-29RohklKnA8E@ashyti-mobl2.lan>
Date: Tue, 29 Oct 2024 10:50:57 +0200
Message-ID: <87v7xbnvgu.fsf@intel.com>
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

On Tue, 22 Oct 2024, Andi Shyti <andi.shyti@linux.intel.com> wrote:
> Hi Jani,
>
> ...
>
>> Could be intel_pciids.h too, but it's already in include/drm/intel
>
> If we met in the coffee corner and you asked me, I would have
> said that intel_pciids.h would be better, but I won't complain if
> you keep it as it is.

<drm/intel/intel_pciids.h> is quite a bit of duplication.

>
>> subdirectory.
>
> ...
>
>> -#ifndef _I915_PCIIDS_H
>> -#define _I915_PCIIDS_H
>> +#ifndef __PCIIDS_H__
>> +#define __PCIIDS_H__
>>  
>>  #ifdef __KERNEL__
>>  #define INTEL_VGA_DEVICE(_id, _info) { \
>> @@ -822,4 +822,4 @@
>>  	MACRO__(0xB0A1, ## __VA_ARGS__), \
>>  	MACRO__(0xB0A2, ## __VA_ARGS__)
>>  
>> -#endif /* _I915_PCIIDS_H */
>> +#endif /* __PCIIDS_H__ */
>
> Should this be __INTEL_PCIIDS_H__ anyway?

IMO should always match the filename, and there are no conflicting
files.

>
> Andi

-- 
Jani Nikula, Intel
