Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 54902802FCA
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Dec 2023 11:12:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF9BA10E30A;
	Mon,  4 Dec 2023 10:12:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75C1510E30A
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Dec 2023 10:12:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701684737; x=1733220737;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=lA/kymzwm1Oc3zyGAIYphB8S65UFQ5KozNoCHhb1rbw=;
 b=LMbJ1Q6STFzY9KCQCYB2cHUWrx6zP3qJqJV6/gX4kQZmzX4PSvtRO2sz
 fbLiuNb8l/xFkMvYwEAbGPJQGgFwZBNqUbCktk1VRKu1kAeeOb9jAM4z3
 tJXqr9yQox9wnDc0q0NBsxofRA1iMgJe03ZPA3fPoFJoJMjYO7hN3HMaW
 sIe1vsZn+Y4jQzozBoPvHsbJm495e1/KYD83lxSezMy/8JxAmoSoPwjHZ
 JkAUJODn3KJnMzpbIaXkLxJMb8U/grVgQpBIw7njTxWByv2dstAAIuAmj
 X/QNmIYOXOqeTgIxPUmkPQ1M2A6a1mobdfa3h9djl5pskAM71pmRqWuJP A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10913"; a="373898641"
X-IronPort-AV: E=Sophos;i="6.04,249,1695711600"; d="scan'208";a="373898641"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2023 02:12:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10913"; a="836536367"
X-IronPort-AV: E=Sophos;i="6.04,249,1695711600"; d="scan'208";a="836536367"
Received: from shahmoha-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.45.180])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2023 02:12:15 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
In-Reply-To: <ZWePMkmVHaJ1NdL8@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231129173506.1194437-1-jani.nikula@intel.com>
 <ZWePMkmVHaJ1NdL8@intel.com>
Date: Mon, 04 Dec 2023 12:12:13 +0200
Message-ID: <87ttoy2s5e.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [RESEND] drm/i915/syncmap: squelch a sparse warning
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 29 Nov 2023, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Wed, Nov 29, 2023 at 07:35:06PM +0200, Jani Nikula wrote:
>> The code is fine, really, but tweak it to get rid of the sparse warning:
>> 
>> drivers/gpu/drm/i915/selftests/i915_syncmap.c:80:54: warning: dubious: x | !y
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> I always disliked the '!!' magic anyway,
>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Thanks, pushed.


>
>> ---
>>  drivers/gpu/drm/i915/selftests/i915_syncmap.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/selftests/i915_syncmap.c b/drivers/gpu/drm/i915/selftests/i915_syncmap.c
>> index 47f4ae18a1ef..88fa845e9f4a 100644
>> --- a/drivers/gpu/drm/i915/selftests/i915_syncmap.c
>> +++ b/drivers/gpu/drm/i915/selftests/i915_syncmap.c
>> @@ -77,7 +77,7 @@ __sync_print(struct i915_syncmap *p,
>>  		for_each_set_bit(i, (unsigned long *)&p->bitmap, KSYNCMAP) {
>>  			buf = __sync_print(__sync_child(p)[i], buf, sz,
>>  					   depth + 1,
>> -					   last << 1 | !!(p->bitmap >> (i + 1)),
>> +					   last << 1 | ((p->bitmap >> (i + 1)) ? 1 : 0),
>>  					   i);
>>  		}
>>  	}
>> -- 
>> 2.39.2
>> 

-- 
Jani Nikula, Intel
