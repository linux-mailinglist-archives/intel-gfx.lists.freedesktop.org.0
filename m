Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A309F16EDC6
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2020 19:18:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 015DC6EB7E;
	Tue, 25 Feb 2020 18:18:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD2046EB7D;
 Tue, 25 Feb 2020 18:18:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Feb 2020 10:18:16 -0800
X-IronPort-AV: E=Sophos;i="5.70,485,1574150400"; d="scan'208";a="231109445"
Received: from pmulhall-mobl.ger.corp.intel.com (HELO [10.251.85.135])
 ([10.251.85.135])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 25 Feb 2020 10:18:15 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200224215650.39624-1-chris@chris-wilson.co.uk>
 <6ad2e8c7-f3e3-a43e-ea4c-92ab57d69b06@linux.intel.com>
 <158265431375.3656.10896445408963081099@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <836f0076-cc40-46dc-6e8f-97a70ee1c2e7@linux.intel.com>
Date: Tue, 25 Feb 2020 18:18:12 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <158265431375.3656.10896445408963081099@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/gem_ctx_persistence: Check
 precision of hostile cancellation
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


On 25/02/2020 18:11, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-02-25 18:08:14)
>>
>> On 24/02/2020 21:56, Chris Wilson wrote:
>>> Check that if we have to remove a hostile request from a non-persistent
>>> context, we do so without harming any other concurrent users.
>>>
>>> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>>> ---
>>> +     /* All other spinners should be left unharmed */
>>> +     gem_quiescent_gpu(i915);
>>> +     igt_assert_eq(sync_fence_wait(fence, reset_timeout_ms), 0);
>>> +     igt_assert_eq(sync_fence_status(fence), 1);
>>
>> I don't quite get this test. Why would other spinners be unharmed? They
>> are non-preemptible as well. And non-persistent spinner is alone on the
>> engine. So what aspect you wanted to test?
> 
> Per-engine reset. Termination of the non-persistent context should be
> clean and precise, we don't allow creation of non-persistent contexts
> unless we have that level of surgical precision. Otherwise it becomes a
> new attack vector.

If it is just engine reset then it does what it says on the tin.

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
