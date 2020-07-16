Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A2EB221F41
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jul 2020 11:02:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB5D16EC26;
	Thu, 16 Jul 2020 09:02:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8A866EC26
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jul 2020 09:02:05 +0000 (UTC)
IronPort-SDR: 0iscr9iCcNzl85G2d1KTW3dUjEO05VEjxwX5IIIxH+UH45V8E6eBjyQk56rN+kHA89Peooc1pG
 d17g9SDggOcg==
X-IronPort-AV: E=McAfee;i="6000,8403,9683"; a="129415564"
X-IronPort-AV: E=Sophos;i="5.75,358,1589266800"; d="scan'208";a="129415564"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2020 02:02:05 -0700
IronPort-SDR: EMl8QIFYLdtU9jXRTEuK4WyIdaM+5ZO8fiBu3VS6tea0xMw0tr+SwyR3+nTxooOpOMzl5E+RmG
 VHukA5oPc6IA==
X-IronPort-AV: E=Sophos;i="5.75,358,1589266800"; d="scan'208";a="460406979"
Received: from unknown (HELO [10.249.34.86]) ([10.249.34.86])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2020 02:02:04 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200715105004.17973-1-chris@chris-wilson.co.uk>
 <2bbb4568-2f73-bedc-8f3b-726bb19a62f2@linux.intel.com>
 <079def6f-2382-6f55-cf1a-1f3e47d32fe0@linux.intel.com>
 <159482443523.13728.2597038711540808670@build.alporthouse.com>
 <159482447053.13728.16851584647996091210@build.alporthouse.com>
 <1019ccaf-383e-2c45-e82f-823669607c62@linux.intel.com>
 <159488925648.20322.751282854542515240@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <05f0e88b-400e-7833-b1fa-4462c67da76c@linux.intel.com>
Date: Thu, 16 Jul 2020 10:02:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <159488925648.20322.751282854542515240@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Reduce i915_request.lock
 contention for i915_request_wait
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 16/07/2020 09:47, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-07-16 09:41:17)
>> Right I missed dma_fence_is_signaled calls i915_request_completed.
>>
>> In this case the remaining question is do we care about wait ioctl
>> potentially returning before the hypothetical sync fence for the same
>> request is signaled? This seems like a slight change in user observable
>> behaviour.
> 
> You would not be able to observe the difference after wakeup in state
> between a sync_file and busy_ioctl/wait_ioctl, as a query after wakeup
> will see the same signaled bit. So the only possible difference is a
> change in wakeup order; but process wakeup/execution order is definitely
> not defined by us :)

Doh.. true, same vfunc..

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
