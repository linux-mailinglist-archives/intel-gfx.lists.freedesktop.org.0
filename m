Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8CB98C2009
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2024 10:48:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A1C610E067;
	Fri, 10 May 2024 08:48:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iEmGiHvF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EFBB10E067
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 May 2024 08:48:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715330921; x=1746866921;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=RKHMfKIZzZvaZKba7aYZYQHxaEL/TJb3GV0A1o2ocZQ=;
 b=iEmGiHvFY+ZebL8Cp8EKDUakSTFQgti5WEwKgv6YAG0y36oIM+lPRWEw
 lWJOH5mbJF2mf1QYCHhTPkZlqlcHnsI6DqINVHj06Gdb4bfT7+IG9mHzo
 o8KFVTCsogUAjdSEVce/sOsW2N0yLi3+VOI91W1tk3RE3+K/WTeN8oBQX
 YOOIo1MLsm5k6ydG2+cAy4Iqki+WdEXEd0cCf5wU6PCP51zbO4JI8892H
 iqco7YcanctJsMv+EVGXfKVLIrSVF9PmoV3vAzggOaQPY04CmQ5T4kOWI
 ZKNGn9eMF+LXvbQVHjw55IJM2MNGSzxroKiME9QNyOGFQIZ5w3jK5k/Bp Q==;
X-CSE-ConnectionGUID: aQYcwIccTF6PagQ9moleuA==
X-CSE-MsgGUID: 9KoKZCN5Tyi6amDFGSSbOQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="28785676"
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208";a="28785676"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 01:48:41 -0700
X-CSE-ConnectionGUID: ZtrPAPfmRk+wPUVwFNJaLQ==
X-CSE-MsgGUID: tR5kgHfrRDWJgga0+eeOHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208";a="29566403"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.180])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 01:48:39 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 04/10] drm/i915: pass dev_priv explicitly to
 TRANS_VRR_VMAXSHIFT
In-Reply-To: <Zj19NlUA2bm0bTdW@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1715183162.git.jani.nikula@intel.com>
 <6117aa8936a8e91c58a7a0bada21f266c79a0e5f.1715183162.git.jani.nikula@intel.com>
 <Zj19NlUA2bm0bTdW@intel.com>
Date: Fri, 10 May 2024 11:48:36 +0300
Message-ID: <875xvmjbmj.fsf@intel.com>
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

On Thu, 09 May 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Wed, May 08, 2024 at 06:47:50PM +0300, Jani Nikula wrote:
>> Avoid the implicit dev_priv local variable use, and pass dev_priv
>> explicitly to the TRANS_VRR_VMAXSHIFT register macro.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/i915_reg.h | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
>> index 775c878ca72f..9739ef525e13 100644
>> --- a/drivers/gpu/drm/i915/i915_reg.h
>> +++ b/drivers/gpu/drm/i915/i915_reg.h
>> @@ -1261,7 +1261,7 @@
>>  #define _TRANS_VRR_VMAXSHIFT_B		0x61428
>>  #define _TRANS_VRR_VMAXSHIFT_C		0x62428
>>  #define _TRANS_VRR_VMAXSHIFT_D		0x63428
>> -#define TRANS_VRR_VMAXSHIFT(trans)	_MMIO_TRANS2(dev_priv, trans, \
>> +#define TRANS_VRR_VMAXSHIFT(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, \
>
> unused? should we remove?
> or one of those with wip around that is going to get used soon?
> if so,

VRR is new-ish, so I decided to keep these even though I don't know for
sure that they will be used soon.

> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Thanks for the review, series pushed to din.

BR,
Jani.

>
>>  					_TRANS_VRR_VMAXSHIFT_A)
>>  #define   VRR_VMAXSHIFT_DEC_MASK	REG_GENMASK(29, 16)
>>  #define   VRR_VMAXSHIFT_DEC		REG_BIT(16)
>> -- 
>> 2.39.2
>> 

-- 
Jani Nikula, Intel
