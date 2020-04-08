Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 19E851A1E04
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Apr 2020 11:28:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D8766E9E5;
	Wed,  8 Apr 2020 09:28:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBB016E9E5
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2020 09:28:08 +0000 (UTC)
IronPort-SDR: Y+xTM8PNPCJEnnBrhLvpIwntex7J0Gjoz6g/6ErrSfiPbprgBYcqwlFKk66OFlJ5yppWqF1VsM
 umyzlMnkU3FA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2020 02:28:08 -0700
IronPort-SDR: ShWDrZ5fd+tPdQ/uxyzJwQ7ZC2d7xT1p0iOnV4KQySL1hKtWSxr6iDASXpU7GqfKQGrVFb+IoT
 iqv7Ff12Ce+w==
X-IronPort-AV: E=Sophos;i="5.72,357,1580803200"; d="scan'208";a="242314155"
Received: from drosner-mobl1.ger.corp.intel.com (HELO [10.214.202.120])
 ([10.214.202.120])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2020 02:28:07 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200403091300.14734-1-chris@chris-wilson.co.uk>
 <20200403091300.14734-9-chris@chris-wilson.co.uk>
 <368ed897-311b-2237-54cb-8c9cf26527c4@linux.intel.com>
 <158625667260.8918.18433618047035214543@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <2e6e726d-47fc-5a7b-24d3-c8dc924f9f31@linux.intel.com>
Date: Wed, 8 Apr 2020 10:28:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <158625667260.8918.18433618047035214543@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 09/10] drm/i915/gem: Allow combining
 submit-fences with syncobj
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


On 07/04/2020 11:51, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-04-07 11:44:45)
>>
>> On 03/04/2020 10:12, Chris Wilson wrote:
>>> Fixes: a88b6e4cbafd ("drm/i915: Allow specification of parallel execbuf")
>>
>> It looks like new uapi on the technical level, even though from a higher
>> level it is just an application of existing uapi across more modes, so
>> why fixes and who is the consumer?
> 
> Submitting semaphores from userspace for batches under construction
> [passed between processes via syncobj/sync-file]. iris has a bug where
> it is trying to wait on a future fence to be submitted and cannot --
> but we already have the uapi to handle that elsewhere.

I am all for consistent uapi and this looks simple enough to me.

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
