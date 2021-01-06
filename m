Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EFF52EB815
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Jan 2021 03:38:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2581F89CF3;
	Wed,  6 Jan 2021 02:38:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7668389CF3
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Jan 2021 02:38:12 +0000 (UTC)
IronPort-SDR: YMzz8dK7Ks8cs3QE/KuaLZQKED3DCEEe/xWnKIkSEJHJG8LrIZLUS/JD3xYBR8M45BAIq4NkuY
 6gYFGb13z+3g==
X-IronPort-AV: E=McAfee;i="6000,8403,9855"; a="195760271"
X-IronPort-AV: E=Sophos;i="5.78,478,1599548400"; d="scan'208";a="195760271"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2021 18:38:11 -0800
IronPort-SDR: 5tQBlYpEveJUlQ085mhjCgAeJmQmdN3SBuib0E2706ES2HeyHoxVg3Fths5S5pH3pLv5BlK953
 Ra4XhkGnLFpw==
X-IronPort-AV: E=Sophos;i="5.78,478,1599548400"; d="scan'208";a="462528448"
Received: from dceraolo-mobl.amr.corp.intel.com (HELO [10.251.17.148])
 ([10.251.17.148])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2021 18:38:11 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20210105231947.31235-1-daniele.ceraolospurio@intel.com>
 <20210105231947.31235-5-daniele.ceraolospurio@intel.com>
 <160989494374.14894.15158476900955777220@build.alporthouse.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <8010f48e-94cf-699b-b3f2-b3eae3753cdf@intel.com>
Date: Tue, 5 Jan 2021 18:38:09 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <160989494374.14894.15158476900955777220@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/i915/guc: stop calling
 execlists_set_default_submission
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 1/5/2021 5:02 PM, Chris Wilson wrote:
> Quoting Daniele Ceraolo Spurio (2021-01-05 23:19:46)
>> Initialize all required entries from guc_set_default_submission, instead
>> of calling the execlists function. The previously inherited setup has
>> been copied over from the execlist code and simplified by removing the
>> execlists submission-specific parts.
>>
>> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>> Cc: Matthew Brost <matthew.brost@intel.com>
>> Cc: John Harrison <john.c.harrison@intel.com>
>> ---
>> +       if (INTEL_GEN(engine->i915) >= 12)
>> +               engine->flags |= I915_ENGINE_HAS_RELATIVE_MMIO;
> We should probably lift this to intel_engine_setup().

GuC requires a more extensive usage of the relative mmio stuff, given 
that it picks which engine to submit to when using virtual engines, so 
I'm not sure if the support is going to look exactly the same for both 
back-ends. There is an old patch from John H to rework the relative mmio 
(https://patchwork.freedesktop.org/patch/332558/), which will have to 
land in some form as part of the GuC submission re-enabling. I'd prefer 
to wait for that to land before moving this flag.

Daniele

>
> Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
> -Chris

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
