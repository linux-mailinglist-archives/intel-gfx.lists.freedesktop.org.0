Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CA3B973250
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2024 12:21:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDD5810E773;
	Tue, 10 Sep 2024 10:21:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FsYtuFyf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2061110E773
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2024 10:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725963687; x=1757499687;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=IwhR7xB5VdQsLgivQ2zOXGMDZdzg1j6GmuIMQnHwLtM=;
 b=FsYtuFyfUkGoXpIEOmVgG2L88y3yNbb+z/Ltb3aadMefY09C+lmHheW0
 fUbxdZh3kXN1HO8EUKykT6sI33p9gacvSXxkpHmDWkUyHGpElsQVDJo9u
 tRu+RwQ2/UNmWAL2LuFvdQgMM3wGC7vrtBSmxF41le6LDL3cn2JcQtlQI
 lXtA1Tl1hb5IwG+rBlSDBvFo9WfBGaBlRIPwKfv57gRtyVMzGFzkPcHVk
 521MUI2KbPkCHS2XIcxuJgsvW8c9hHcUY9g+Oj9YzuND4UjhpqyPZVyKg
 yNzp3+kUP7Jgb5S+VSqdM/jEb9vxg89KM4WJ6AW1PXR+Ge0oSIDaNg6Cl w==;
X-CSE-ConnectionGUID: KxuFl4yeQh2YpuMg8o0ylg==
X-CSE-MsgGUID: nrb6gcKKQy2Tzwvf1GdKxA==
X-IronPort-AV: E=McAfee;i="6700,10204,11190"; a="28592886"
X-IronPort-AV: E=Sophos;i="6.10,216,1719903600"; d="scan'208";a="28592886"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 03:21:27 -0700
X-CSE-ConnectionGUID: d+BnQEzCQHi8B1jdcs4nxQ==
X-CSE-MsgGUID: Ra0K0IWIRQGfuecwrJzVow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,216,1719903600"; d="scan'208";a="66985721"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.43])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 03:21:24 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Pottumuttu, Sai Teja" <sai.teja.pottumuttu@intel.com>, Dnyaneshwar
 Bhadane <dnyaneshwar.bhadane@intel.com>, intel-gfx@lists.freedesktop.org
Cc: Lucas De Marchi <lucas.demarchi@intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>
Subject: Re: [PATCH] drm/i915/pciid: Add new PCI id for ARL
In-Reply-To: <8f854bba-c78e-4c81-a78d-04b385ff4641@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240910062301.2006782-1-dnyaneshwar.bhadane@intel.com>
 <8f854bba-c78e-4c81-a78d-04b385ff4641@intel.com>
Date: Tue, 10 Sep 2024 13:21:21 +0300
Message-ID: <87ttenkdwe.fsf@intel.com>
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

On Tue, 10 Sep 2024, "Pottumuttu, Sai Teja" <sai.teja.pottumuttu@intel.com> wrote:
> On 10-09-2024 11:53, Dnyaneshwar Bhadane wrote:
>> Add new PCI id for ARL platform.
>>
>> Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
>
> I assume that you would send another patch to sync this PCI ID addition 
> in xe_pciids.h as well

Yes, preferrably send both at the same time, even though one is to be
merged to drm-intel-next and the other to drm-xe-next. We don't want the
PCI IDs to be out of sync.

Lucas, Rodrigo, another reason for [1].

BR,
Jani.


[1] https://lore.kernel.org/r/5e703ab69846d519335f3e7f5bcf84ff1704cd09.1725297097.git.jani.nikula@intel.com


>
> With that,
>
> Reviewed-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
>
>> ---
>>   include/drm/intel/i915_pciids.h | 3 ++-
>>   1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/include/drm/intel/i915_pciids.h b/include/drm/intel/i915_pciids.h
>> index cbb12fdbcb7f..02156c6f79b6 100644
>> --- a/include/drm/intel/i915_pciids.h
>> +++ b/include/drm/intel/i915_pciids.h
>> @@ -769,7 +769,8 @@
>>   	MACRO__(0x7D41, ## __VA_ARGS__), \
>>   	MACRO__(0x7D51, ## __VA_ARGS__), \
>>   	MACRO__(0x7D67, ## __VA_ARGS__), \
>> -	MACRO__(0x7DD1, ## __VA_ARGS__)
>> +	MACRO__(0x7DD1, ## __VA_ARGS__), \
>> +	MACRO__(0xB640, ## __VA_ARGS__)
>>   
>>   /* MTL */
>>   #define INTEL_MTL_IDS(MACRO__, ...) \

-- 
Jani Nikula, Intel
