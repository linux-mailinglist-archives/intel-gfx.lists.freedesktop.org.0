Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9893D8B97BA
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2024 11:30:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6B8610EA7D;
	Thu,  2 May 2024 09:30:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gKXmCEx9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06A0610F428
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2024 09:30:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714642229; x=1746178229;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=XH0p63Wn5NF09gAV5UkcRupR6Qcwi/1t765kcPej1B8=;
 b=gKXmCEx9JZYn0NCxyJlQk4K0A7IUJMWQVpHOMcVOQKvyGKZwxkfT1a56
 6CIQqe5/CoR0XAUfI2F7hqfKFxWuKhrac9RNjvIskMYLsQggBF9sS1Xrc
 7em8sjeBtAC7fqmLiZP96UrjK8S2fKKI9fIHcNCHOd7OIwUI7mxOfBTZ7
 IZfq4Nhn8JvYol5gXAh2dmUDU1VYa9T2ovnadQVOh5w7DA1SPyPDsCxq/
 C81EVL+/zm8m9oXHmHre80WaaMmHD11Vq32fLDMtPyC9Le6lPLtaGC0H9
 c43tRM2xYUUemLxstf9zhUSuN4GHtNH1r6XebuT2S9KJH8IbacN6LUJCe g==;
X-CSE-ConnectionGUID: JJ88vv0sTF+XRmKpOCmY0Q==
X-CSE-MsgGUID: Hbe0tyEaRq2hSiA1GaScfw==
X-IronPort-AV: E=McAfee;i="6600,9927,11061"; a="13350022"
X-IronPort-AV: E=Sophos;i="6.07,247,1708416000"; d="scan'208";a="13350022"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2024 02:30:28 -0700
X-CSE-ConnectionGUID: GvtF6FBNQcenSIihSInIuA==
X-CSE-MsgGUID: SpbJZGkkQ0iU5oFAdCVIOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,247,1708416000"; d="scan'208";a="31733325"
Received: from unknown (HELO localhost) ([10.245.245.19])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2024 02:30:27 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, jouni.hogander@intel.com
Subject: Re: [PATCH 13/19] drm/i915: pass dev_priv explicitly to
 _PSR2_SU_STATUS
In-Reply-To: <ZjGnjLGVGQDSTcZb@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1714471597.git.jani.nikula@intel.com>
 <dac8c4ab8b34220cdfc9d5f6109299a040ea1b40.1714471597.git.jani.nikula@intel.com>
 <ZjGnjLGVGQDSTcZb@intel.com>
Date: Thu, 02 May 2024 12:30:23 +0300
Message-ID: <87bk5opnm8.fsf@intel.com>
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

On Tue, 30 Apr 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Tue, Apr 30, 2024 at 01:10:07PM +0300, Jani Nikula wrote:
>> Avoid the implicit dev_priv local variable use, and pass dev_priv
>> explicitly to the _PSR2_SU_STATUS register macro.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> why aren't we going one level up here already?

Oh, good catch. Because it's a dumb script. If I were to run the script
another time, it would spot that PSR2_SU_STATUS() now depends on
dev_priv, and would fix that in a separate commit.

I guess I'll do that and squash it here.

Thanks,
Jani.

>
>> ---
>>  drivers/gpu/drm/i915/display/intel_psr_regs.h | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
>> index e6c62512512f..762fc0ad7eb5 100644
>> --- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
>> +++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
>> @@ -221,8 +221,8 @@
>>  
>>  #define _PSR2_SU_STATUS_A		0x60914
>>  #define _PSR2_SU_STATUS_EDP		0x6f914
>> -#define _PSR2_SU_STATUS(tran, index)	_MMIO_TRANS2(dev_priv, tran, _PSR2_SU_STATUS_A + (index) * 4)
>> -#define PSR2_SU_STATUS(tran, frame)	(_PSR2_SU_STATUS(tran, (frame) / 3))
>> +#define _PSR2_SU_STATUS(dev_priv, tran, index)	_MMIO_TRANS2(dev_priv, tran, _PSR2_SU_STATUS_A + (index) * 4)
>> +#define PSR2_SU_STATUS(tran, frame)	(_PSR2_SU_STATUS(dev_priv, tran, (frame) / 3))
>>  #define PSR2_SU_STATUS_SHIFT(frame)	(((frame) % 3) * 10)
>>  #define PSR2_SU_STATUS_MASK(frame)	(0x3ff << PSR2_SU_STATUS_SHIFT(frame))
>>  #define PSR2_SU_STATUS_FRAMES		8
>> -- 
>> 2.39.2
>> 

-- 
Jani Nikula, Intel
