Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 570A358DBD3
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Aug 2022 18:23:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1716EC30B9;
	Tue,  9 Aug 2022 16:23:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73637C2C59
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Aug 2022 16:22:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660062161; x=1691598161;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=iC4cA0EabFGkI20wfEl3dNX+3Gkg3nVDNqW5UllA6aI=;
 b=a1OxvBRjkYTmQMzkbZuZwHoyYIEQylSGxE5Lwq0kpiuntl8/QhZoEkmT
 D/56F03hfJFmMrlKrHxO3v7V1xo6FKGajYr6q6SZmJe/S68/IFS5x3zBg
 3TG3HhJnXoGtFhAvb+5mqBDxzfQ/7ptQ7OHDIISjvGoZCqzCh+LVazJVK
 lVRBUm7Zptcd4GPMCeCGUhtsMTQ8d9FeHh6ZKIPhNGIvJS4QC6DI3erfC
 HVZD/Q5ikYlZt51ZU0rslY+vT7/qlSfoAi0nupKkCmhV3HAW77lNazksH
 p/0CJNxEGABXoc8Kb7R0M0LxyA8y6aql3nmdEEOV0uwP9LYRKg7PUkMTi w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10434"; a="289633144"
X-IronPort-AV: E=Sophos;i="5.93,224,1654585200"; d="scan'208";a="289633144"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2022 09:22:39 -0700
X-IronPort-AV: E=Sophos;i="5.93,224,1654585200"; d="scan'208";a="747098403"
Received: from mram-mobl1.amr.corp.intel.com (HELO [10.213.184.71])
 ([10.213.184.71])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2022 09:22:38 -0700
Message-ID: <a04f6a02-7900-3712-01bd-d51be6a8c9a6@linux.intel.com>
Date: Tue, 9 Aug 2022 17:22:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
References: <bdf23a1c-0d89-c395-4a7a-2840ce5f639a@I-love.SAKURA.ne.jp>
 <98c6d61e-0c0f-e385-6100-6b7ebe6874b1@linux.intel.com>
 <c379bbe5-a416-7757-b0e3-1b767bb5a775@I-love.SAKURA.ne.jp>
 <703244a5-f2c9-adfb-892f-dd2353cf384e@linux.intel.com>
 <f15c7336-10fd-cd86-a95f-aec99154319b@I-love.SAKURA.ne.jp>
 <b21d9f1e-65e3-8f2f-a5c3-04bf866823e3@linux.intel.com>
 <4debe93c-5bfd-dd3b-f532-92df21c37713@I-love.SAKURA.ne.jp>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <4debe93c-5bfd-dd3b-f532-92df21c37713@I-love.SAKURA.ne.jp>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] How to convert drivers/gpu/drm/i915/ to use local
 workqueue?
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


Hi,

On 05/08/2022 14:14, Tetsuo Handa wrote:
> On 2022/06/30 22:09, Tvrtko Ursulin wrote:
>>>> On the i915 specifics, the caller in drivers/gpu/drm/i915/gt/selftest_execlists.c
>>>> I am pretty sure can be removed. It is synchronized with the error capture side of
>>>> things which is not required for the test to work.
>>>>
>>>> I can send a patch for that or you can, as you prefer?
>>>
>>> OK. Please send a patch for that, for that patch will go linux-next.git tree via
>>> a tree for gpu/drm/i915 driver.
>>
>> Patch sent. If I am right the easiest solution was just to remove the flush.
>> If I was wrong though I'll need to create a dedicated wq so we will see what
>> our automated CI will say.
> 
> How was the result?

Results were good but I need someone from our side to review the patch 
before I can merge it (/me hinting to recipients on the thread).

Regards,

Tvrtko
