Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C0AB58ABD1
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Aug 2022 15:52:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59752B58B2;
	Fri,  5 Aug 2022 13:52:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 2261 seconds by postgrey-1.36 at gabe;
 Fri, 05 Aug 2022 13:51:59 UTC
Received: from www262.sakura.ne.jp (www262.sakura.ne.jp [202.181.97.72])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EB8218B7A7
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Aug 2022 13:51:59 +0000 (UTC)
Received: from fsav117.sakura.ne.jp (fsav117.sakura.ne.jp [27.133.134.244])
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id 275DE8AC068870;
 Fri, 5 Aug 2022 22:14:08 +0900 (JST)
 (envelope-from penguin-kernel@I-love.SAKURA.ne.jp)
Received: from www262.sakura.ne.jp (202.181.97.72)
 by fsav117.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav117.sakura.ne.jp);
 Fri, 05 Aug 2022 22:14:08 +0900 (JST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/fsav117.sakura.ne.jp)
Received: from [192.168.1.9] (M106072142033.v4.enabler.ne.jp [106.72.142.33])
 (authenticated bits=0)
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTPSA id 275DE7M4068866
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NO);
 Fri, 5 Aug 2022 22:14:08 +0900 (JST)
 (envelope-from penguin-kernel@I-love.SAKURA.ne.jp)
Message-ID: <4debe93c-5bfd-dd3b-f532-92df21c37713@I-love.SAKURA.ne.jp>
Date: Fri, 5 Aug 2022 22:14:05 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.0
Content-Language: en-US
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
References: <bdf23a1c-0d89-c395-4a7a-2840ce5f639a@I-love.SAKURA.ne.jp>
 <98c6d61e-0c0f-e385-6100-6b7ebe6874b1@linux.intel.com>
 <c379bbe5-a416-7757-b0e3-1b767bb5a775@I-love.SAKURA.ne.jp>
 <703244a5-f2c9-adfb-892f-dd2353cf384e@linux.intel.com>
 <f15c7336-10fd-cd86-a95f-aec99154319b@I-love.SAKURA.ne.jp>
 <b21d9f1e-65e3-8f2f-a5c3-04bf866823e3@linux.intel.com>
From: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
In-Reply-To: <b21d9f1e-65e3-8f2f-a5c3-04bf866823e3@linux.intel.com>
Content-Type: text/plain; charset=UTF-8
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

On 2022/06/30 22:09, Tvrtko Ursulin wrote:
>>> On the i915 specifics, the caller in drivers/gpu/drm/i915/gt/selftest_execlists.c
>>> I am pretty sure can be removed. It is synchronized with the error capture side of
>>> things which is not required for the test to work.
>>>
>>> I can send a patch for that or you can, as you prefer?
>>
>> OK. Please send a patch for that, for that patch will go linux-next.git tree via
>> a tree for gpu/drm/i915 driver.
> 
> Patch sent. If I am right the easiest solution was just to remove the flush.
> If I was wrong though I'll need to create a dedicated wq so we will see what
> our automated CI will say.

How was the result?

