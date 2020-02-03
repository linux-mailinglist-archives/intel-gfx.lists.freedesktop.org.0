Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C9EC6151270
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2020 23:37:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 892846ED1A;
	Mon,  3 Feb 2020 22:37:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D9006ED19;
 Mon,  3 Feb 2020 22:37:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Feb 2020 14:37:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,398,1574150400"; d="scan'208";a="278881545"
Received: from relo-linux-2.fm.intel.com (HELO [10.1.27.125]) ([10.1.27.125])
 by FMSMGA003.fm.intel.com with ESMTP; 03 Feb 2020 14:37:40 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200203214518.723198-1-chris@chris-wilson.co.uk>
 <4b37a582-fd82-f6b8-bc0b-d0f75aafafda@intel.com>
 <158076833186.27392.1232173407287492916@skylake-alporthouse-com>
From: Antonio Argenziano <antonio.argenziano@intel.com>
Message-ID: <61c41fec-e783-35bf-17e6-98f5048543a8@intel.com>
Date: Mon, 3 Feb 2020 14:37:40 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <158076833186.27392.1232173407287492916@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/gem_exec_basic: Drop per-engine
 testing of *execbuf
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
Cc: igt-dev@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 03/02/20 14:18, Chris Wilson wrote:
> Quoting Antonio Argenziano (2020-02-03 22:15:26)
>>
>>
>> On 03/02/20 13:45, Chris Wilson wrote:
>>> @@ -121,30 +43,29 @@ igt_main
>>>    
>>>        igt_fixture {
>>>                fd = drm_open_driver(DRIVER_INTEL);
>>> -             igt_require_gem(fd);
>>> -
>>> +             /* igt_require_gem(fd); // test is mandatory */
>>
>> What if that fd is bad? Assert?
> 
> fd can't be bad, that's taken care of by drm_open_driver(). If the
> driver is unusable for execbuf, we want the test failure. It's a choice.
> 
> Not sure the right answer, both have advantages.

Fair enough.

> 
>>> +static void mmapped(int i915)
>>> +{
>>> +     struct drm_i915_gem_execbuffer2 *execbuf;
>>> +     struct drm_i915_gem_exec_object2 *exec;
>>> +     uint32_t handle;
>>
>> gem_require_mappable_ggtt()?
> 
> No... I was dropping a hint in the name. How's the toolbox?

I'm afraid I'm not the right person to develop new stuff for IGT... 
gem_require_mappable_ggtt() /* insert comment about extending the test 
*/? :)

Antonio

> -Chris
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
